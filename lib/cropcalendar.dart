import 'package:flutter/material.dart';
import 'package:flutter_application_1/flowers.dart';
import 'package:flutter_application_1/fruits.dart';
import 'package:flutter_application_1/greens.dart';
import 'package:flutter_application_1/majorfood.dart';
import 'package:flutter_application_1/first.dart';
import 'package:flutter_application_1/pulses.dart';
import 'package:flutter_application_1/vegetable.dart';

class AndroidCompact7 extends StatelessWidget {
  const AndroidCompact7({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cropCards = [
      {
        'image': 'assets/images/majorfood.jpg',
        'title1': 'Major Food',
        'title2': 'Crops',
        'page': const AndroidCompact8(),
      },
      {
        'image': 'assets/images/vegetables.jpg',
        'title1': 'Vegetables',
        'title2': null,
        'page': const AndroidCompact10(),
      },
      {
        'image': 'assets/images/greens.jpg',
        'title1': 'Greens',
        'title2': null,
        'page': const AndroidCompact11(),
      },
      {
        'image': 'assets/images/pulses.jpg',
        'title1': 'Pulses',
        'title2': null,
        'page': const AndroidCompact12(),
      },
      {
        'image': 'assets/images/fruits.jpg',
        'title1': 'Fruits',
        'title2': null,
        'page': const AndroidCompact13(),
      },
      {
        'image': 'assets/images/flowers.jpg',
        'title1': 'Flowers',
        'title2': null,
        'page': const AndroidCompact14(),
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            /// ================= HEADER =================
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  /// BACK TO FIRST PAGE
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 28,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MyApp(),
                        ),
                      );
                    },
                  ),

                  /// LOGO
                  Container(
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      'assets/images/cropcalendar.jpg',
                      width: 45,
                      height: 45,
                    ),
                  ),

                  /// TITLE
                  const Expanded(
                    child: Text(
                      'Crop Calendar',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// ================= BODY =================
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: cropCards.map((item) {
                      return CropCategoryCard(
                        imageUrl: item['image'],
                        title1: item['title1'],
                        title2: item['title2'],
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => item['page'],
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// =====================
/// CATEGORY CARD WIDGET
/// =====================
class CropCategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title1;
  final String? title2;
  final VoidCallback onPressed;

  const CropCategoryCard({
    super.key,
    required this.imageUrl,
    required this.title1,
    this.title2,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 145, 237, 148),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (title2 != null)
                  Text(
                    title2!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
