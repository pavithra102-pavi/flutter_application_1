import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/white_card.dart';
import 'package:flutter_application_1/screens/chatbot_screen.dart';
import 'package:flutter_application_1/screens/crop_category_screen.dart';
import 'package:flutter_application_1/screens/plant_disease_detection_screen.dart';
import 'package:flutter_application_1/screens/profit_yield_screen.dart';
import 'package:flutter_application_1/screens/tricks_screen.dart';
import 'package:flutter_application_1/screens/schemes.dart'; // ✅ NEW IMPORT
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        245,
        166,
        224,
        139,
      ), // 🌿 light green background
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              /// 📅 DATE CARD
              WhiteCard(
                child: Column(
                  children: [
                    Text(
                      "Today, ${DateFormat('d MMM').format(DateTime.now())}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Clear 24°C / 20°C",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// 📷 TAKE A PICTURE CARD
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PlantDiseaseDetectionScreen(),
                    ),
                  );
                },
                child: WhiteCard(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/camera.jpg', width: 70),
                          const SizedBox(height: 10),
                          const Text(
                            "Take a picture",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward, size: 30),
                      Image.asset(
                        'assets/images/medicinebottle.jpg',
                        width: 70,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              /// 🤖 CROP ADVISOR CHATBOT
              _featureWhiteCard(
                image: 'assets/images/chatbot.jpg',
                title: 'Crop Advisor Chatbot',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ChatbotScreen()),
                ),
              ),

              /// 🌱 CROP CALENDAR
              _featureWhiteCard(
                image: 'assets/images/cropcalendar.jpg',
                title: 'Crop Calendar',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CropCategoryList()),
                ),
              ),

              /// 📈 PROFIT YIELD ESTIMATOR
              _featureWhiteCard(
                image: 'assets/images/profityield.jpg',
                title: 'Profit Yield Estimator',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProfitYieldScreen()),
                ),
              ),

              /// 💡 TRICKS AND TIPS
              _featureWhiteCard(
                image: 'assets/images/triks.jpg',
                title: 'Tricks and Tips',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const TricksScreen()),
                ),
              ),

              /// 🏛️ SCHEMES FOR AGRICULTURE ✅ NEW FEATURE
              _featureWhiteCard(
                image: 'assets/images/schemes.jpg', // ✅ add this image in assets
                title: 'Schemes for Agriculture',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const GovtSchemesPage()
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// ✅ WHITE FEATURE CARD WITH SPACING
  Widget _featureWhiteCard({
    required String image,
    required String title,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14), // ✅ spacing between cards
      child: GestureDetector(
        onTap: onTap,
        child: WhiteCard(
          child: Row(
            children: [
              Image.asset(image, width: 42),
              const SizedBox(width: 16),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
