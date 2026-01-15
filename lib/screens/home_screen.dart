import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/components.dart';
import 'package:flutter_application_1/screens/chatbot_screen.dart';
import 'package:flutter_application_1/screens/crop_category_screen.dart';
import 'package:flutter_application_1/screens/plant_disease_detection_screen.dart';
import 'package:flutter_application_1/screens/profit_yield_screen.dart';
import 'package:flutter_application_1/screens/tricks_screen.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              WhiteCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 18),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/camera.jpg', width: 100),
                          const SizedBox(height: 10),
                          const Text(
                            "Take a picture",
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_forward, size: 32),
                      Image.asset(
                        'assets/images/medicinebottle.jpg',
                        width: 100,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),
              FeatureTile(
                image: 'assets/images/chatbot.jpg',
                title: 'Crop Advisor Chatbot',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ChatbotScreen()),
                  );
                },
              ),
              FeatureTile(
                image: 'assets/images/cropcalendar.jpg',
                title: 'Crop Calendar',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const CropCategoryList()),
                  );
                },
              ),
              FeatureTile(
                image: 'assets/images/profityield.jpg',
                title: 'Profit Yield Estimator',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ProfitYieldScreen(),
                    ),
                  );
                },
              ),
              FeatureTile(
                image: 'assets/images/triks.jpg',
                title: 'Tricks and Tips',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const TricksScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
