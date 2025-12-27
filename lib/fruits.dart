import 'package:flutter/material.dart';
import 'package:flutter_application_1/cropcalendar.dart';

class AndroidCompact13 extends StatefulWidget {
  const AndroidCompact13({super.key});

  @override
  State<AndroidCompact13> createState() => _AndroidCompact13State();
}

class _AndroidCompact13State extends State<AndroidCompact13> {
  final List<Map<String, String>> vegetableData = [
    {'image': "assets/images/banana.jpg", 'title': "Banana"},
    {'image': "assets/images/papaya.jpg", 'title': "Papaya"},
    {'image': "assets/images/guava.jpg", 'title': "Guava"},
    {'image': "assets/images/sapota.jpg", 'title': 'Sapota'},
    {'image': "assets/images/watermelon.jpg", 'title': 'Watermelon'},
    {'image': "assets/images/jackfruit.jpg", 'title': 'Jackfruit'},
    {'image': "assets/images/pineapple.jpg", 'title': 'Pineapple'},
    {'image': "assets/images/pomegranate.jpg", 'title': 'Pomegranate'},
    {'image': "assets/images/muskmelon.jpg", 'title': 'Muskmelon'},
    {'image': "assets/images/grapes.jpg", 'title': 'Grapes'},
    {'image': "assets/images/lemon.jpg", 'title': 'Lemon'},
    {'image': "assets/images/orange.jpg", 'title': 'Orange'},
    {'image': "assets/images/custardapple.jpg", 'title': 'Custard Apple'},
    {'image': "assets/images/tamaring.jpg", 'title': 'Tamarind'},
    {'image': "assets/images/mango.jpg", 'title': 'Mango'},
  ];

  List<Map<String, String>> filteredVegetables = [];

  @override
  void initState() {
    super.initState();
    filteredVegetables = List.from(vegetableData);
  }

  void _filterVegetables(String query) {
    setState(() {
      filteredVegetables = vegetableData
          .where((item) =>
              item['title']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// 🔝 AppBar removes extra top space
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
          /// 🌿 Greens Image + Title (Top aligned)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/images/fruits.jpg",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  "Fruits",
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

          /// 📋 Greens List
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

/// 🥬 Vegetable Card Widget
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
