import 'package:flutter/material.dart';
import 'package:flutter_application_1/cropcalendar.dart';

class AndroidCompact8 extends StatelessWidget {
  const AndroidCompact8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            /// 🔙 Back Button
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 4),
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, size: 26),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AndroidCompact7(),
                      ),
                    );
                  },
                ),
              ),
            ),

            /// 🥬 Title Section
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/majorfood.jpg",
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "Major Food Crops",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            /// 🌾 Crop List – fills full screen
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  itemCount: 4,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 20),
                  itemBuilder: (context, index) {
                    final crops = [
                      {
                        'name': 'Rice',
                        'image': 'assets/images/rice.jpg',
                      },
                      {
                        'name': 'Wheat',
                        'image': 'assets/images/wheat.jpg',
                      },
                      {
                        'name': 'Maize',
                        'image': 'assets/images/maize.jpg',
                      },
                      {
                        'name': 'Millets',
                        'image': 'assets/images/millets.jpg',
                      },
                    ];

                    return CropCard(
                      name: crops[index]['name']!,
                      imageUrl: crops[index]['image']!,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// ================= CROP CARD =================
class CropCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const CropCard({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: const Color(0xFF7EF0B4),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [

          /// Crop Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imageUrl,
              width: 85,
              height: 85,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 35),

          /// Crop Name
          Text(
            name,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
