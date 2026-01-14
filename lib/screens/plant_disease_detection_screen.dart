import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'dart:convert';

class PlantDiseaseDetectionScreen extends StatefulWidget {
  const PlantDiseaseDetectionScreen({super.key});

  @override
  PlantDiseaseDetectionScreenState createState() => PlantDiseaseDetectionScreenState();
}

class PlantDiseaseDetectionScreenState extends State<PlantDiseaseDetectionScreen> {
  final ImagePicker _picker = ImagePicker();
  bool _isDetecting = false;
  String _detectionResult = '';
  String _confidence = '';
  XFile? _selectedImage;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _pickImage(ImageSource source) async {
    if (_isDetecting) return;

    setState(() {
      _isDetecting = true;
      _detectionResult = 'Analyzing image...';
      _confidence = '';
    });

    try {
      final XFile? image = await _picker.pickImage(
        source: source,
        maxWidth: 1920,
        maxHeight: 1080,
        imageQuality: 85,
      );

      if (image != null) {
        setState(() {
          _selectedImage = image;
        });
        await _detectDisease(File(image.path));
      } else {
        setState(() {
          _isDetecting = false;
          _detectionResult = '';
        });
      }
    } catch (e) {
      setState(() {
        _detectionResult = 'Error picking image: $e';
        _isDetecting = false;
      });
    }
  }

  Future<void> _detectDisease(File imageFile) async {
    try {
      final bytes = await imageFile.readAsBytes();
      final base64Image = base64Encode(bytes);

      final response = await http.post(
        Uri.parse('https://your-plant-disease-api.com/detect'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'image': base64Image,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          _detectionResult = data['disease'] ?? 'No disease detected';
          _confidence = data['confidence'] != null ? '${(data['confidence'] * 100).toStringAsFixed(1)}%' : '';
        });
      } else {
        setState(() {
          _detectionResult = 'Failed to detect disease. Please try again.';
        });
      }
    } catch (e) {
      setState(() {
        _detectionResult = 'Error detecting disease: $e';
      });
    } finally {
      setState(() {
        _isDetecting = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
        ),
        title: const Text(
          "Plant Disease Detection",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: _selectedImage != null
                    ? Image.file(
                        File(_selectedImage!.path),
                        fit: BoxFit.cover,
                      )
                    : Container(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.image,
                                size: 64,
                                color: Colors.grey,
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Select an image to analyze',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          ),

            if (_detectionResult.isNotEmpty)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      _detectionResult,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    if (_confidence.isNotEmpty) ...[
                      const SizedBox(height: 8),
                      Text(
                        'Confidence: $_confidence',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ],
                ),
              ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: _isDetecting ? null : () => _pickImage(ImageSource.camera),
                      icon: _isDetecting
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.camera_alt),
                      label: Text(_isDetecting ? 'Analyzing...' : 'Camera'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: _isDetecting ? null : () => _pickImage(ImageSource.gallery),
                      icon: _isDetecting
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.photo_library),
                      label: Text(_isDetecting ? 'Analyzing...' : 'Gallery'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
