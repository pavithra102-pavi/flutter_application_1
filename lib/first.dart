import 'package:flutter/material.dart';
import 'package:flutter_application_1/chatbot.dart';
import 'package:flutter_application_1/cropcalendar.dart';
import 'package:flutter_application_1/profityield.dart';
import 'package:flutter_application_1/tricks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5CB85C),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              
              _whiteCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Today, 6 Sept",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Text(
                      "Clear 24°C / 20°C",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 14),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFCFF5DC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Location permission required",
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            "Allow",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              
              _whiteCard(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/camera.jpg',
                          width: 100,
                        ),
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

              const SizedBox(height: 18),

              
              _featureTile(
                image: 'assets/images/chatbot.jpg',
                title: 'Crop Advisor Chatbot',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AndroidCompact5(),
                    ),
                  );
                },
              ),

              
              _featureTile(
                image: 'assets/images/cropcalendar.jpg',
                title: 'Crop Calendar',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AndroidCompact7(),
                    ),
                  );
                },
              ),

              
              _featureTile(
                image: 'assets/images/profityield.jpg',
                title: 'Profit Yield Estimator',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ProfitEstimatorApp(),
                    ),
                  );
                },
              ),

              
              _featureTile(
                image: 'assets/images/triks.jpg',
                title: 'Tricks and Tips',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => VegetableListPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  
  Widget _whiteCard({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }

  
  Widget _featureTile({
    required String image,
    required String title,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 75,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
            color: const Color(0xFFDFF5E1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Image.asset(
                image,
                width: 48,
                height: 48,
              ),
              const SizedBox(width: 18),
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
