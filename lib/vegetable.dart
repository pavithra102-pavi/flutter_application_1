import 'package:flutter/material.dart';
import 'package:flutter_application_1/cropcalendar.dart';
import 'package:flutter_application_1/ladysfinger.dart';

class AndroidCompact10 extends StatefulWidget {
  const AndroidCompact10({super.key});

  @override
  State<AndroidCompact10> createState() => _AndroidCompact10State();
}

class _AndroidCompact10State extends State<AndroidCompact10> {
  final List<Map<String, String>> vegetableData = [
    {"img": "assets/images/tomato.jpg", "text": "Tomato"},
    {"img": "assets/images/onion.jpg", "text": "Onion"},
    {"img": "assets/images/bitterguard.jpg", "text": "Bitter Gourd"},
    {"img": "assets/images/brinjal.jpg", "text": "Brinjal"},
    {"img": "assets/images/beans.jpg", "text": "Beans"},
    {"img": "assets/images/ladysfinger.jpg", "text": "Lady's Finger"},
    {"img": "assets/images/greenchilli.jpg", "text": "Green Chilli"},
    {"img": "assets/images/bottleguard.jpg", "text": "Bottle Gourd"},
    {"img": "assets/images/cabbage.jpg", "text": "Cabbage"},
    {"img": "assets/images/cucumber.jpg", "text": "Cucumber"},
  ];

  List<Map<String, String>> filteredVegetables = [];

  @override
  void initState() {
    super.initState();
    filteredVegetables = List.from(vegetableData);
  }

  void _filterVegetables(String query) {
    final q = query.toLowerCase();
    setState(() {
      filteredVegetables = vegetableData.where((veg) {
        final name = veg['text']?.toLowerCase() ?? '';
        return name.contains(q);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            /// ================= HEADER =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 28,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      /// 🔥 FIXED NAVIGATION
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const AndroidCompact7(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            /// ================= TITLE =================
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/vegetables.jpg",
                      width: 80,
                      height: 70,
                      errorBuilder: (_, __, ___) =>
                        const Icon(Icons.eco, size: 40),
                  ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Vegetables",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            /// ================= SEARCH =================
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Search here",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                onChanged: _filterVegetables,
              ),
            ),

            /// ================= LIST =================
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  itemCount: filteredVegetables.length,
                  itemBuilder: (context, index) {
                    final item = filteredVegetables[index];

                    return GestureDetector(
                      onTap: () {
                        if (item['text'] == "Lady's Finger") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const LadysFingerApp(),
                            ),
                          );
                        }
                      },
                      child: VegetableCard(
                        imageUrl: item['img']!,
                        label: item['text'],
                      ),
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

/// ================= CARD =================
class VegetableCard extends StatelessWidget {
  final String imageUrl;
  final String? label;

  const VegetableCard({
    super.key,
    required this.imageUrl,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0x9E2EEC8D),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => const Icon(
                Icons.image_not_supported,
                size: 70,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              label ?? '',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
