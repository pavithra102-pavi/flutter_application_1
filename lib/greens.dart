import 'package:flutter/material.dart';
import 'package:flutter_application_1/cropcalendar.dart';

class AndroidCompact11 extends StatefulWidget {
  const AndroidCompact11({super.key});

  @override
  State<AndroidCompact11> createState() => _AndroidCompact11State();
}

class _AndroidCompact11State extends State<AndroidCompact11> {
  final List<Map<String, String>> vegetableData = [
    {'image': 'assets/images/fenugreek.jpg', 'title': 'Fenugreek'},
    {'image': 'assets/images/mint.jpg', 'title': 'Mint Leaves'},
    {'image': 'assets/images/curryleaves.jpg', 'title': 'Curry Leaves'},
    {'image': 'assets/images/agathileaves.jpg', 'title': 'Agathi Leaves'},
    {'image': 'assets/images/waterspinach.jpg', 'title': 'Water Spinach'},
    {'image': 'assets/images/purslane.jpg', 'title': 'Purslane'},
    {'image': 'assets/images/radishleaves.jpg', 'title': 'Radish Leaves'},
    {'image': 'assets/images/coriander.jpg', 'title': 'Coriander Leaves'},
    {'image': 'assets/images/gonguraleaves.jpg', 'title': 'Gongura Leaves'},
    {'image': 'assets/images/amaranthus.jpg', 'title': 'Amaranthus'},
    {'image': 'assets/images/spinach.jpg', 'title': 'Spinach'},
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
                    "assets/images/greens.jpg",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  "Greens",
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
