import 'package:flutter/material.dart';
import 'package:flutter_application_1/chatbot.dart';
import 'package:flutter_application_1/cropcalendar.dart';
import 'package:flutter_application_1/profityield.dart';
import 'package:flutter_application_1/tricks.dart';

class AndroidCompactHome extends StatelessWidget {
  const AndroidCompactHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF66BB6A),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              // 🌤 Weather Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today, 6 Sept",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text("Clear 24°C / 20°C"),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // 📸 Take Picture
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/camera.png', width: 50),
                        const SizedBox(height: 8),
                        const Text("Take a picture"),
                      ],
                    ),
                    const Icon(Icons.arrow_forward, size: 30),
                    Image.asset('assets/images/medicine.png', width: 60),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // 🌾 Chatbot
              _menuTile(
                image: 'assets/images/chatbot.png',
                title: 'Crop Advisor Chatbot',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AndroidCompact5()),
                  );
                },
              ),

              const SizedBox(height: 12),

              // 📅 Crop Calendar
              _menuTile(
                image: 'assets/images/calendar.png',
                title: 'Crop Calendar',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AndroidCompact7()),
                  );
                },
              ),

              const SizedBox(height: 12),

              // 💰 Profit Estimator
              _menuTile(
                image: 'assets/images/profit.png',
                title: 'Profit Yield Estimator',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ProfitEstimatorApp()),
                  );
                },
              ),

              const SizedBox(height: 12),

              // 📘 Tricks & Tips
              _menuTile(
                image: 'assets/images/tips.png',
                title: 'Tricks and Tips',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => VegetableListPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _menuTile({
    required String image,
    required String title,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFB9EBC8),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Image.asset(image, width: 50),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

