import 'package:flutter/material.dart';
import 'package:flutter_application_1/cropcalendar.dart';

class AndroidCompact14 extends StatefulWidget {
  const AndroidCompact14({super.key});

  @override
  State<AndroidCompact14> createState() => _AndroidCompact14State();
}

class _AndroidCompact14State extends State<AndroidCompact14> {
  final List<Map<String, String>> flowerData = [
    {'image': "assets/images/jasmine.jpg", 'title': 'Jasmine'},
    {'image': 'assets/images/rose.jpg', 'title': 'Rose'},
    {'image': "assets/images/marigold.jpg", 'title': 'Marigold'},
    {'image': "assets/images/chrysenthamum.jpg", 'title': 'Chrysenthamum'},
    {'image': "assets/images/lotus.jpg", 'title': 'Lotus'},
    {'image': "assets/images/mullai.jpg", 'title': 'Mullai'},
    {'image': "assets/images/sunflower.jpg", 'title': 'Sunflower'},
    {'image': "assets/images/royaljasmine.jpg", 'title': "Royal Jasmine"},
    {'image': "assets/images/crossandra.jpg", 'title': "Crossandra"},
    {'image': 'assets/images/hibiscus.jpg', 'title': "Hibiscus"},
    {'image': "assets/images/damaskrose.jpg", 'title': 'Damask Rose'},
  ];

  List<Map<String, String>> filteredVegetables = [];

  @override
  void initState() {
    super.initState();
    filteredVegetables = List.from(flowerData);
  }

  void _filterVegetables(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredVegetables = List.from(flowerData);
      } else {
        filteredVegetables = flowerData
            .where((item) =>
                item['title']!
                    .toLowerCase()
                    .contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const AndroidCompact7(),
              ),
            );
          },
        ),
      ),
      body: Column(
        children: [
          /// 🌸 Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/images/flowers.jpg",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  "Flowers",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          /// 🔍 Search Bar
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Search here",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: _filterVegetables,
            ),
          ),

          /// 📋 Flower List
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 20),
                itemCount: filteredVegetables.length,
                itemBuilder: (context, index) {
                  final item = filteredVegetables[index];
                  return VegetableCard(
                    imageUrl: item['image']!,
                    label: item['title']!,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// 🌺 Flower Card Widget
class VegetableCard extends StatelessWidget {
  final String imageUrl;
  final String label;

  const VegetableCard({
    super.key,
    required this.imageUrl,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      padding: const EdgeInsets.all(10),
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
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
