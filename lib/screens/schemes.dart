import 'package:flutter/material.dart';

class Scheme {
  final int id;
  final String title;
  final String emoji;
  final String category;
  final String whenToUse;
  final String moneyReceived;

  Scheme({
    required this.id,
    required this.title,
    required this.emoji,
    required this.category,
    required this.whenToUse,
    required this.moneyReceived,
  });
}

class GovtSchemesPage extends StatefulWidget {
  const GovtSchemesPage({super.key});

  @override
  State<GovtSchemesPage> createState() => GovtSchemesPageState();
}

class GovtSchemesPageState extends State<GovtSchemesPage> {
  final TextEditingController _searchController = TextEditingController();

  String selectedCategory = "All";

  final List<Scheme> allSchemes = [
    Scheme(
      id: 1,
      title: "PM-KISAN – Income Support (Central)",
      emoji: "🌾",
      category: "Income",
      whenToUse: "Any time, annual support for input expenses.",
      moneyReceived: "₹6,000 per year (in 3 instalments ₹2,000).",
    ),
    Scheme(
      id: 2,
      title: "PMFBY – Crop Insurance (Central)",
      emoji: "☂️",
      category: "Insurance",
      whenToUse: "Enrol before sowing season; claim after crop loss.",
      moneyReceived: "Compensation depends on % crop loss.",
    ),
    Scheme(
      id: 3,
      title: "PMKSY – Micro-Irrigation (Central/State)",
      emoji: "💧",
      category: "Irrigation",
      whenToUse: "Before installing irrigation systems.",
      moneyReceived:
          "Up to 100% subsidy for small/marginal, 75% for larger fields.",
    ),
    Scheme(
      id: 4,
      title: "Agriculture Mechanization Subsidy (State)",
      emoji: "🚜",
      category: "Mechanization",
      whenToUse: "Before land preparation / sowing.",
      moneyReceived:
          "Subsidy on equipment (tractors, tillers, implements) — varies by item.",
    ),
    Scheme(
      id: 5,
      title: "Seed Village / Certified Seed Programs (State)",
      emoji: "🌱",
      category: "Seeds",
      whenToUse: "Before sowing.",
      moneyReceived:
          "Subsidy on seed quality improvements and distributions.",
    ),
    Scheme(
      id: 6,
      title: "NFSM – National Food Security Mission (Central in TN)",
      emoji: "🌾",
      category: "Inputs",
      whenToUse: "During sowing / input purchase stages.",
      moneyReceived:
          "Subsidies depend on crop type (maize, oilseeds, cotton, pulses).",
    ),
    Scheme(
      id: 7,
      title: "NADP – National Agriculture Development Programme (State + Central)",
      emoji: "🍅",
      category: "Horticulture",
      whenToUse: "Crop planning / production stages.",
      moneyReceived:
          "• Onion devt: ₹20,000/ha\n• Organic veggies: ₹2,500 – ₹3,750/ha\n• Permanent pandal: ₹2 lakh/ha\n• Pest traps subsidy (solar light trap etc.)",
    ),
    Scheme(
      id: 8,
      title: "Horticulture & Apiary Support (State)",
      emoji: "🐝",
      category: "Horticulture",
      whenToUse: "At flowering & post-harvest times.",
      moneyReceived:
          "• Bee hive subsidy ~₹1,600/hive (40%)\n• Honey extractor ~₹8,000\n• Packhouse subsidy 50% up to ₹2 lakh",
    ),
    Scheme(
      id: 9,
      title: "Rainfed Agriculture & Integrated Farming (State)",
      emoji: "🌾",
      category: "Dryland",
      whenToUse: "Before & during cropping cycles.",
      moneyReceived:
          "• Integrated farm unit subsidy ~₹30,000/unit\n• Milch animal support ~₹15,000 (50%)\n• Fruit plant kits ~₹800 (50%)\n• Apiary/vermibed support included",
    ),
    Scheme(
      id: 10,
      title: "SWMA – Supplementary Water Management Activities",
      emoji: "💧",
      category: "Irrigation",
      whenToUse: "Before rain/irrigation works.",
      moneyReceived:
          "• Ground storage ~₹40,000\n• Borewell digging ~₹25,000\n• Conveyance pipes ~₹10,000\n• Motors/pumps ~₹15,000",
    ),
    Scheme(
      id: 11,
      title: "TN Mission on Sustainable Dryland Development (TNMSDD)",
      emoji: "🌿",
      category: "Dryland",
      whenToUse: "Dryland agriculture planning.",
      moneyReceived: "Area-based support for dryland farming crops.",
    ),
    Scheme(
      id: 12,
      title: "Alternative Crop Cultivation Scheme",
      emoji: "🌾",
      category: "Crop Mission",
      whenToUse: "Transition to millets, pulses, oilseeds.",
      moneyReceived:
          "Financial support per acre (e.g., 1 lakh acres targeted).",
    ),
    Scheme(
      id: 13,
      title: "Natural Farming Mission",
      emoji: "🌱",
      category: "Natural Farming",
      whenToUse: "Implementation phase for eco-friendly farming.",
      moneyReceived: "Cluster-based support for natural farming practices.",
    ),
    Scheme(
      id: 14,
      title: "Solar Pumps & Renewable Energy Subsidy",
      emoji: "☀️",
      category: "Energy",
      whenToUse: "Before pump setup.",
      moneyReceived: "Subsidy up to 70% for solar water pumps.",
    ),
    Scheme(
      id: 15,
      title: "Soil Health & Soil Conservation Programs",
      emoji: "🛠",
      category: "Soil",
      whenToUse: "Before fertilizer application.",
      moneyReceived:
          "Seed distribution, green manure support under soil health schemes.",
    ),
    Scheme(
      id: 16,
      title: "Chief Minister’s Farmers’ Welfare Service Centres",
      emoji: "🏆",
      category: "Support",
      whenToUse: "Anytime for support & advisory.",
      moneyReceived:
          "Subsidy to set up service centres — ~₹3 lakh or ₹6 lakh per centre.",
    ),
    Scheme(
      id: 17,
      title: "Agriculture Value-Addition Centres Subsidy",
      emoji: "🏭",
      category: "Business",
      whenToUse: "Before establishing processing unit.",
      moneyReceived:
          "• 25% investment subsidy (up to ₹10 cr)\n• Extra 10% (total 35%) for women/SC/ST\n• Max ₹1.5 cr + 5% interest subvention for 5 years.",
    ),
    Scheme(
      id: 18,
      title: "Uzhavar Santhai (Farmers’ Markets)",
      emoji: "🌾",
      category: "Market",
      whenToUse: "After harvest for sales.",
      moneyReceived:
          "Price benefits via direct sale to consumers (improves income).",
    ),
    Scheme(
      id: 19,
      title: "TN-IAMWARM (Irrigation + Water Management)",
      emoji: "📌",
      category: "Irrigation",
      whenToUse: "Water-saving & irrigation planning (project mode).",
      moneyReceived:
          "Support for precision & water-saving tech under project; varies by component.",
    ),
    Scheme(
      id: 20,
      title: "Nationals / Additional Crop Missions (Oilseed & Millet Missions)",
      emoji: "🌾",
      category: "Crop Mission",
      whenToUse: "Crop selection/expansion stage.",
      moneyReceived:
          "Dedicated fund allocations (e.g., ₹108 crore for oilseeds, ₹55 crore for millets).",
    ),
  ];

  List<String> get categories {
    final set = {"All"};
    for (final s in allSchemes) {
      set.add(s.category);
    }
    return set.toList();
  }

  List<Scheme> get filteredSchemes {
    final query = _searchController.text.trim().toLowerCase();

    return allSchemes.where((s) {
      final matchesSearch = query.isEmpty ||
          s.title.toLowerCase().contains(query) ||
          s.whenToUse.toLowerCase().contains(query) ||
          s.moneyReceived.toLowerCase().contains(query);

      final matchesCategory =
          selectedCategory == "All" || s.category == selectedCategory;

      return matchesSearch && matchesCategory;
    }).toList();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Govt Schemes",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Search + Filter
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            child: Column(
              children: [
                TextField(
                  controller: _searchController,
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    hintText: "Search scheme (PM-KISAN, irrigation, subsidy...)",
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: const Color(0xFFF2F3F5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 42,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 10),
                    itemBuilder: (context, index) {
                      final cat = categories[index];
                      final isSelected = selectedCategory == cat;

                      return ChoiceChip(
                        label: Text(cat),
                        selected: isSelected,
                        onSelected: (_) {
                          setState(() => selectedCategory = cat);
                        },
                        selectedColor: Colors.green.shade600,
                        labelStyle: TextStyle(
                          color: isSelected ? Colors.white : Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // List
          Expanded(
            child: filteredSchemes.isEmpty
                ? const Center(
                    child: Text(
                      "No schemes found",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(14),
                    itemCount: filteredSchemes.length,
                    itemBuilder: (context, index) {
                      final scheme = filteredSchemes[index];

                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.06),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  scheme.emoji,
                                  style: const TextStyle(fontSize: 26),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        scheme.title,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        decoration: BoxDecoration(
                                          color: Colors.green.shade50,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          scheme.category,
                                          style: TextStyle(
                                            color: Colors.green.shade700,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            const Divider(height: 18),

                            // When to use
                            const Text(
                              "When to use",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              scheme.whenToUse,
                              style: const TextStyle(
                                fontSize: 14,
                                height: 1.4,
                              ),
                            ),

                            const SizedBox(height: 10),

                            // Money received
                            const Text(
                              "Money received",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              scheme.moneyReceived,
                              style: const TextStyle(
                                fontSize: 14,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
