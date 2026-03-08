import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://192.168.1.29:8000';

  ApiService({http.Client? client}) : _client = client ?? http.Client();

  final http.Client _client;

  Future<String> getChatResponse(String message) async {
    final response = await _client.post(
      Uri.parse('$baseUrl/chat'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'message': message}),
    );

    if (response.statusCode != 200) {
      throw ApiException('Chat request failed.');
    }

    final data = jsonDecode(response.body) as Map<String, dynamic>;
    final reply = (data['response'] ?? '').toString().trim();
    return reply.isEmpty ? 'No response received.' : reply;
  }

  Future<DiseaseAnalysis> analyzeDisease(File imageFile) async {
    final request = http.MultipartRequest(
      'POST',
      Uri.parse('$baseUrl/analyze-disease'),
    );
    request.files.add(
      await http.MultipartFile.fromPath('file', imageFile.path),
    );

    final streamedResponse = await _client.send(request);
    final response = await http.Response.fromStream(streamedResponse);
    if (response.statusCode != 200) {
      throw ApiException('Disease analysis failed.');
    }

    final data = jsonDecode(response.body) as Map<String, dynamic>;
    return DiseaseAnalysis.fromJson(data);
  }
}

class DiseaseAnalysis {
  const DiseaseAnalysis({
    required this.disease,
    required this.confidence,
    required this.medicine,
  });

  final String disease;
  final String confidence;
  final String medicine;

  factory DiseaseAnalysis.fromJson(Map<String, dynamic> json) {
    return DiseaseAnalysis(
      disease: (json['disease'] ?? 'No disease detected').toString(),
      confidence: (json['confidence'] ?? '').toString(),
      medicine: (json['medicine'] ?? '').toString(),
    );
  }
}

class ApiException implements Exception {
  ApiException(this.message);

  final String message;

  @override
  String toString() => message;
}
