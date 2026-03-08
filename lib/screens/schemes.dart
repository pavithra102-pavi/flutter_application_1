import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatesPage(), // First page
    );
  }
}

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

////////////////////////////////////////////////////////////
/// SCHEMES DATA
////////////////////////////////////////////////////////////

final Map<String, List<Scheme>> stateSchemes = {
  "Tamil Nadu": [
    Scheme(
      id: 1,
      title: "Crop Damage Compensation (SDRF - Tamil Nadu)",
      emoji: "🌧️",
      category: "Relief",
      whenToUse:
          "Apply when your crops are damaged more than 33% due to heavy rain, flood, or cyclone. Inform VAO or Agriculture Officer immediately after damage.",
      moneyReceived:
          "₹6,800 – ₹13,500 per hectare depending on crop type and damage level.",
    ),

    Scheme(
      id: 2,
      title: "Tamil Nadu Farm Mechanization Scheme",
      emoji: "🚜",
      category: "Subsidy",
      whenToUse:
          "Use this scheme when you plan to buy tractors, power tillers, harvesters, or other farm machines to reduce labour cost.",
      moneyReceived: "40%–50% subsidy on agricultural machinery.",
    ),

    Scheme(
      id: 3,
      title: "Tamil Nadu Micro Irrigation Scheme",
      emoji: "💧",
      category: "Irrigation",
      whenToUse:
          "Apply before installing drip or sprinkler irrigation systems to save water and improve crop yield.",
      moneyReceived: "75%–100% subsidy for small & marginal farmers.",
    ),

    Scheme(
      id: 4,
      title: "Uzhavar Sandhai (Farmers Market Scheme)",
      emoji: "🛒",
      category: "Marketing",
      whenToUse:
          "Use this when you want to sell vegetables or farm produce directly to customers without middlemen.",
      moneyReceived:
          "Farmers receive full market price without commission deduction.",
    ),

    Scheme(
      id: 5,
      title: "Tamil Nadu Crop Insurance Premium Support",
      emoji: "🌾",
      category: "Insurance",
      whenToUse:
          "Enroll before sowing season to protect your crops from loss due to drought, flood, pest attack, or cyclone.",
      moneyReceived:
          "Compensation amount based on crop loss after official government survey.",
    ),
  ],

  "Karnataka": [
    Scheme(
      id: 6,
      title: "Raitha Siri Scheme (Karnataka)",
      emoji: "🌾",
      category: "Millet Promotion / Income Support",
      whenToUse:
          "Apply if you are cultivating millets in Karnataka. Best for small and marginal farmers growing ragi, jowar, and other millets.",
      moneyReceived: "₹10,000 per hectare (maximum 2 hectares).",
    ),
    Scheme(
      id: 7,
      title: "Krishi Bhagya Scheme (Karnataka)",
      emoji: "💧",
      category: "Irrigation & Water Conservation",
      whenToUse:
          "Apply if you need farm pond construction, water harvesting structures, or irrigation support in drought-prone areas.",
      moneyReceived:
          "50%–90% subsidy on farm ponds, diesel pumps, and irrigation components.",
    ),
    Scheme(
      id: 8,
      title: "Raitha Shakti Scheme (Karnataka)",
      emoji: "🧪",
      category: "Agricultural Input Subsidy",
      whenToUse:
          "Apply when purchasing seeds, fertilizers, and pesticides from cooperative societies in Karnataka.",
      moneyReceived: "Up to 50% subsidy on agricultural inputs.",
    ),
    Scheme(
      id: 9,
      title: "Ganga Kalyana Scheme (Karnataka)",
      emoji: "🚜",
      category: "Borewell & Irrigation Support",
      whenToUse:
          "Apply if you are an SC/ST/small farmer needing borewell and pump installation for irrigation.",
      moneyReceived: "₹1.5 lakh – ₹3 lakh assistance depending on category.",
    ),
    Scheme(
      id: 10,
      title: "Interest-Free Crop Loan Scheme (Karnataka)",
      emoji: "💰",
      category: "Agricultural Credit",
      whenToUse:
          "Apply before sowing season through cooperative banks for short-term crop loans.",
      moneyReceived: "Interest-free loan up to ₹3 lakh.",
    ),
    Scheme(
      id: 11,
      title: "Pradhan Mantri Fasal Bima Yojana (Implemented in Karnataka)",
      emoji: "🌧️",
      category: "Crop Insurance",
      whenToUse:
          "Enroll before crop season to get protection against crop loss due to drought, flood, pest, or natural calamities.",
      moneyReceived:
          "Compensation based on crop damage assessment (farmer premium 1.5%–2%).",
    ),
  ],

  "Kerala": [
    Scheme(
      id: 12,
      title: "Jaiva Karshika Mission (Kerala)",
      emoji: "🌱",
      category: "Organic & Sustainable Agriculture",
      whenToUse:
          "Apply when practicing or shifting to organic farming including traditional systems like Pokkali and Kaipad.",
      moneyReceived:
          "Support for certification, branding, marketing, training and value addition (amount varies by activity).",
    ),

    Scheme(
      id: 13,
      title: "State Horticulture Mission (Kerala)",
      emoji: "🍍",
      category: "Horticulture Development",
      whenToUse:
          "Apply if cultivating fruits, vegetables, spices or flowers and need support for production, post-harvest, or processing.",
      moneyReceived:
          "Financial and technical assistance under horticulture development programs.",
    ),

    Scheme(
      id: 14,
      title: "Rashtriya Krishi Vikas Yojana (RKVY - Kerala Implementation)",
      emoji: "🚜",
      category: "Agriculture Development Projects",
      whenToUse:
          "Apply for agriculture productivity enhancement or integrated farming development projects.",
      moneyReceived:
          "Project-based funding support (varies based on proposal and crop type).",
    ),

    Scheme(
      id: 15,
      title: "KERA Nawodhan Scheme",
      emoji: "🌾",
      category: "Climate-Resilient & Fallow Land Cultivation",
      whenToUse:
          "Apply when expanding cultivation on fallow lands or participating in collaborative farming initiatives.",
      moneyReceived:
          "Financial/loan support under climate-resilient agriculture value chain projects.",
    ),

    Scheme(
      id: 16,
      title: "Rubber Replanting Financial Assistance (Kerala)",
      emoji: "🌳",
      category: "Crop Replanting Support",
      whenToUse:
          "Apply if replanting old rubber plantations with improved high-yield varieties.",
      moneyReceived:
          "₹75,000 per hectare (₹55,000 in Year 1 + ₹20,000 in Year 2).",
    ),

    Scheme(
      id: 17,
      title: "Pradhan Mantri Fasal Bima Yojana (Implemented in Kerala)",
      emoji: "🌧️",
      category: "Crop Insurance",
      whenToUse:
          "Enroll before crop season for protection against drought, flood, pest attacks, and natural calamities.",
      moneyReceived:
          "Compensation based on crop loss assessment (farmer premium 1.5%–2%).",
    ),
  ],

  "Andhra Pradesh": [
    Scheme(
      id: 18,
      title: "Annadata Sukhibhava Scheme (Andhra Pradesh)",
      emoji: "🌾",
      category: "Farmer Income Support",
      whenToUse:
          "Apply if you are a land-owning or tenant farmer in Andhra Pradesh to receive annual financial assistance for farming expenses and livelihood support.",
      moneyReceived:
          "₹20,000 per year (₹14,000 from state + ₹6,000 PM Kisan benefit).",
    ),

    Scheme(
      id: 19,
      title: "AP Micro Irrigation & Drip Subsidy Scheme",
      emoji: "💧",
      category: "Irrigation Support",
      whenToUse:
          "Apply when you need subsidised drip, sprinkler or micro-irrigation systems to conserve water and boost crop yields.",
      moneyReceived:
          "Up to ₹2.00 lakh subsidy depending on category (SC/ST & small/marginal farmers get higher subsidy).",
    ),

    Scheme(
      id: 20,
      title: "Free/Power Subsidy & Farm Power Support (AP)",
      emoji: "⚡",
      category: "Input Cost Reduction",
      whenToUse:
          "Apply if you have an agricultural power connection; helps reduce electricity costs for irrigation and pumps.",
      moneyReceived:
          "Subsidised/free day-time electricity and support for pump sets & power-related irrigation.",
    ),

    Scheme(
      id: 21,
      title: "Crop Insurance (PMFBY in AP)",
      emoji: "🌧️",
      category: "Risk Protection",
      whenToUse:
          "Enroll before sowing season to protect against crop loss from natural calamities, pests or weather events.",
      moneyReceived:
          "Compensation based on crop damage assessment (farmers pay nominal premium).",
    ),

    Scheme(
      id: 22,
      title: "AP Farm Mechanisation & Subsidy Scheme",
      emoji: "🚜",
      category: "Agricultural Mechanisation",
      whenToUse:
          "Apply when purchasing agricultural machinery, custom hiring centre services, drones, or implements to boost farm efficiency.",
      moneyReceived:
          "Subsidy on machinery (percentage varies by implement and scheme allocation).",
    ),
  ],

  "Telangana": [
    Scheme(
      id: 23,
      title: "Rythu Bandhu Agriculture Investment Support Scheme",
      emoji: "🌾",
      category: "Farmer Investment Support",
      whenToUse:
          "Apply if you are a land-owning farmer in Telangana to receive seasonal investment support for agricultural inputs like seeds, fertilisers, pesticides, and labour.",
      moneyReceived: "₹10,000 per acre per year (₹5,000 per acre per season).",
    ),

    Scheme(
      id: 24,
      title: "Telangana Rythu Bharosa Scheme",
      emoji: "💰",
      category: "Farmer Income Support",
      whenToUse:
          "Use this scheme if you need annual direct income assistance to cover farming costs for eligible cultivated land.",
      moneyReceived:
          "₹12,000 per acre per year in two instalments (₹6,000 + ₹6,000).",
    ),

    Scheme(
      id: 25,
      title: "Crop Insurance (PMFBY / Rythu Bheema)",
      emoji: "🌧️",
      category: "Crop Risk Protection",
      whenToUse:
          "Enroll before sowing season to receive compensation if your crop is damaged by drought, flood, pests, or natural calamities.",
      moneyReceived:
          "Compensation based on assessed crop loss under the insurance policy.",
    ),

    Scheme(
      id: 26,
      title: "Agricultural Mechanisation Subsidy (Telangana)",
      emoji: "🚜",
      category: "Farm Mechanisation Support",
      whenToUse:
          "Apply when purchasing tractors, paddy harvesters, sprayers, or other equipment to increase farm efficiency.",
      moneyReceived:
          "Subsidy of 40–50% on eligible machinery depending on category (women farmers receive higher subsidy).",
    ),

    Scheme(
      id: 27,
      title: "Telangana Micro Irrigation & Drip Subsidy Scheme",
      emoji: "💧",
      category: "Irrigation Support",
      whenToUse:
          "Apply if you want to install drip or micro-irrigation systems on your farmland to conserve water and improve yields.",
      moneyReceived:
          "Subsidy support for micro-irrigation and drip systems based on eligibility and land area.",
    ),
  ],

  "Maharashtra": [
    Scheme(
      id: 28,
      title: "Maharashtra Namo Shetkari Maha Samman Nidhi Yojana",
      emoji: "🌾",
      category: "Farmer Financial Support",
      whenToUse:
          "Apply if you are a farmer in Maharashtra to receive annual direct financial assistance to help cover basic farming expenses.",
      moneyReceived: "₹6,000 per year in 3 equal instalments of ₹2,000 each.",
    ),

    Scheme(
      id: 29,
      title:
          "Chief Minister Sustainable Agriculture Irrigation Scheme – Magel Tyala Shettale",
      emoji: "💧",
      category: "Irrigation Support",
      whenToUse:
          "Apply when you want a farm pond constructed to conserve water for irrigation in your agricultural fields.",
      moneyReceived:
          "Subsidy ₹14,433 – ₹75,000 depending on farm size and location.",
    ),

    Scheme(
      id: 30,
      title: "Jalyukt Shivar Abhiyan (Water Conservation)",
      emoji: "🚰",
      category: "Watershed & Water Resources",
      whenToUse:
          "Use when you want support for water harvesting, check dam or watershed projects to improve irrigation and recharge groundwater.",
      moneyReceived:
          "Subsidy & infrastructure support for water conservation projects (varies by scheme plan).",
    ),

    Scheme(
      id: 31,
      title: "Subsidy for Micro-Irrigation (Maharashtra)",
      emoji: "💦",
      category: "Water-Saving Irrigation",
      whenToUse:
          "Apply if you want drip or sprinkler systems installed for your farm to improve water-use efficiency and crop yields.",
      moneyReceived:
          "Subsidy on micro-irrigation equipment (amount varies by eligibility).",
    ),

    Scheme(
      id: 32,
      title: "Tractor & Farm Machinery Subsidy (MahaDBT)",
      emoji: "🚜",
      category: "Agricultural Mechanisation",
      whenToUse:
          "Apply when purchasing tractors, harvesters or implements to boost farm productivity through mechanisation.",
      moneyReceived:
          "Subsidy ~40–50% on eligible machinery for farmers (priority to small, SC/ST & women farmers).",
    ),
  ],

  "Uttar Pradesh": [
    Scheme(
      id: 33,
      title: "Mukhya Mantri Krishi Sinchai Yojana",
      emoji: "💧",
      category: "Irrigation Support",
      whenToUse:
          "Apply when you want subsidised irrigation facilities like solar or electric pumps and tube wells to ensure water availability for crops.",
      moneyReceived:
          "Subsidy up to 90% on irrigation installations and solar pumps under the state sinchai programme.",
    ),

    Scheme(
      id: 34,
      title: "UP Beej Anudan Yojana (Seed Subsidy Scheme)",
      emoji: "🌱",
      category: "Input Subsidy",
      whenToUse:
          "Apply if you need high-quality certified seeds at subsidised rates to improve crop yield.",
      moneyReceived:
          "Up to ~50% subsidy on certified seeds for wheat, paddy, pulses & oilseeds (priority for women & SC/ST farmers).",
    ),

    Scheme(
      id: 35,
      title: "Kisan Credit Card (KCC) Scheme",
      emoji: "💳",
      category: "Farm Credit",
      whenToUse:
          "Apply when you need short-term credit for crop production, inputs, and allied activities at low interest.",
      moneyReceived:
          "Loan up to ₹3 lakh at subsidised interest through partner banks (with interest subvention schemes).",
    ),

    Scheme(
      id: 36,
      title: "Pradhan Mantri Fasal Bima Yojana (PMFBY)",
      emoji: "🌾",
      category: "Crop Insurance",
      whenToUse:
          "Enroll before sowing season to receive compensation if your crops are damaged due to calamities, pests, or weather events.",
      moneyReceived:
          "Loss-based compensation under crop damage assessment after insurance enrolment.",
    ),

    Scheme(
      id: 37,
      title: "UP Organic Farming Promotion Scheme",
      emoji: "🍃",
      category: "Organic Farming Support",
      whenToUse:
          "Apply if you want financial assistance for organic inputs like bio-fertilizers, organic manure and training on natural farming.",
      moneyReceived:
          "Aid up to ₹20,000 per hectare for up to three years plus marketing support for organic produce.",
    ),
  ],

  "Punjab": [
    Scheme(
      id: 38,
      title: "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN) – Punjab",
      emoji: "💰",
      category: "Farmer Income Support",
      whenToUse:
          "Apply if you are a land-owning farmer in Punjab to receive direct income support for farm input costs.",
      moneyReceived: "₹6,000 per year (paid in 3 instalments).",
    ),

    Scheme(
      id: 39,
      title: "Pradhan Mantri Fasal Bima Yojana (PMFBY – Punjab)",
      emoji: "🌾",
      category: "Crop Insurance",
      whenToUse:
          "Enroll before sowing season to get compensation if crops are damaged due to natural calamities, drought, pests, or weather events.",
      moneyReceived: "Loss-based compensation after crop damage assessment.",
    ),

    Scheme(
      id: 40,
      title: "Soil Health Card Scheme (Punjab Implementation)",
      emoji: "🧪",
      category: "Soil & Input Management",
      whenToUse:
          "Use when you need soil testing and nutrient recommendations to improve crop health and optimise fertiliser use.",
      moneyReceived:
          "Soil test report and fertiliser guidance; helps reduce costs and increase yield.",
    ),

    Scheme(
      id: 41,
      title: "Punjab e-Mandi / eNAM (National Agriculture Market)",
      emoji: "📈",
      category: "Market & Price Support",
      whenToUse:
          "Apply/ register to sell your produce online through the unified national agriculture market for better prices and transparent trade.",
      moneyReceived:
          "Better price discovery and wider buyer access (no direct cash subsidy, price benefit through mandi).",
    ),

    Scheme(
      id: 42,
      title: "Agriculture House Assistance Scheme (Punjab)",
      emoji: "🏠",
      category: "Infrastructure Support",
      whenToUse:
          "Apply if you need financial assistance to construct farm sheds, storage or structures used in agricultural operations.",
      moneyReceived:
          "Financial support as per eligibility for construction assistance.",
    ),
  ],

  "Rajasthan": [
    Scheme(
      id: 43,
      title: "Mukhyamantri Beej Swalamban Yojana",
      emoji: "🌱",
      category: "Input Subsidy (Seeds)",
      whenToUse:
          "Apply if you are a farmer in Rajasthan needing quality seeds at lower cost — this scheme provides seed support and encourages seed production on your farm.",
      moneyReceived:
          "Up to 50% subsidy on seed cost; free mini seed kits for BPL farmers.",
    ),

    Scheme(
      id: 44,
      title: "Fawara Sanyantra Yojana",
      emoji: "💧",
      category: "Irrigation Subsidy",
      whenToUse:
          "Use this when you want to install sprinkler irrigation systems to conserve water and improve farm irrigation efficiency.",
      moneyReceived:
          "Subsidy up to 75% on sprinkler unit cost (higher for small, SC/ST & women farmers).",
    ),

    Scheme(
      id: 45,
      title: "Rajasthan Krishak Samarthan Yojana",
      emoji: "📈",
      category: "Crop Price Support",
      whenToUse:
          "Apply when selling wheat at authorised procurement centres — this scheme gives a state bonus over the Minimum Support Price (MSP).",
      moneyReceived:
          "Bonus ~₹150 per quintal over MSP for wheat sold through registered centres. ",
    ),

    Scheme(
      id: 46,
      title: "Rajasthan Govardhan Jaivik Urvarak Yojana",
      emoji: "🌾",
      category: "Organic & Fertilizer Support",
      whenToUse:
          "Apply if you want to set up units to produce organic manure or organic fertilizer to support sustainable farming practices.",
      moneyReceived:
          "₹10,000 or 50% of unit cost (whichever is lower) as subsidy for setting up organic manure/fertilizer units.",
    ),

    Scheme(
      id: 47,
      title:
          "Pradhan Mantri Fasal Bima Yojana (PMFBY – Rajasthan Implementation)",
      emoji: "🌧️",
      category: "Crop Insurance",
      whenToUse:
          "Enroll before sowing season to secure compensation if your crops are damaged due to drought, flood, pests or other natural calamities in the Rajasthan notified areas.",
      moneyReceived:
          "Loss-based compensation after crop damage assessment under the insurance policy.",
    ),
  ],

  "Gujarat": [
    Scheme(
      id: 48,
      title: "Mukhyamantri Kisan Sahay Yojana (Gujarat)",
      emoji: "💰",
      category: "Farmer Income Support",
      whenToUse:
          "Apply if you are a farmer in Gujarat to receive direct financial assistance annually to cover basic farming needs and inputs.",
      moneyReceived:
          "Cash support (₹ variable per season depending on budget allocation).",
    ),

    Scheme(
      id: 49,
      title: "Gujarat Micro-Irrigation & Drip Subsidy Scheme",
      emoji: "💧",
      category: "Irrigation Support",
      whenToUse:
          "Use when you want to install drip or sprinkler irrigation systems to conserve water and improve crop yields on your farmland.",
      moneyReceived:
          "Subsidy (up to 40%–60% on micro-irrigation systems depending on land size and category).",
    ),

    Scheme(
      id: 50,
      title: "Gujarat Soil Health Card Scheme",
      emoji: "🧪",
      category: "Soil Health & Nutrient Management",
      whenToUse:
          "Apply if you need a soil health card to know your land’s nutrient profile and get science-based fertiliser recommendations to optimise yield.",
      moneyReceived:
          "Soil test report with fertiliser recommendations (improves input efficiency but not a direct cash benefit).",
    ),

    Scheme(
      id: 51,
      title: "Fasal Bima Yojana (PMFBY) – Gujarat Implementation",
      emoji: "🌾",
      category: "Crop Insurance",
      whenToUse:
          "Enroll before sowing season to protect your crops against loss due to drought, flood, pests, or other natural calamities.",
      moneyReceived:
          "Loss-based compensation paid after crop damage assessment.",
    ),

    Scheme(
      id: 52,
      title: "Gujarat Farm Mechanisation Subsidy Scheme",
      emoji: "🚜",
      category: "Agricultural Mechanisation",
      whenToUse:
          "Apply when purchasing farm machinery or implements like tractors, seed drills, harvesters or power tillers to improve productivity.",
      moneyReceived:
          "Subsidy on eligible machinery (percentage varies by implement and farmer category).",
    ),
  ],

  "Madhya Pradesh": [
    Scheme(
      id: 53,
      title: "Mukhyamantri Kisan Kalyan Yojana (Madhya Pradesh)",
      emoji: "💰",
      category: "Farmer Support & Income Assistance",
      whenToUse:
          "Apply if you are a farmer in MP to receive direct cash support for agricultural inputs and support services.",
      moneyReceived:
          "Direct financial assistance (amount varies by year and budget announcement).",
    ),

    Scheme(
      id: 54,
      title: "Madhya Pradesh Micro Irrigation & Drip Subsidy Scheme",
      emoji: "💧",
      category: "Irrigation & Water Conservation",
      whenToUse:
          "Use when you want to install drip, sprinkler or other micro-irrigation systems to save water and improve crop yields.",
      moneyReceived:
          "Subsidy of up to 50%–70% on eligible irrigation systems depending on land and category.",
    ),

    Scheme(
      id: 55,
      title: "PM Fasal Bima Yojana (Implemented in MP)",
      emoji: "🌾",
      category: "Crop Insurance",
      whenToUse:
          "Enroll before sowing season to receive compensation if crops are damaged due to natural calamities, pests or weather events.",
      moneyReceived:
          "Loss-based compensation after crop damage assessment under the insurance policy.",
    ),

    Scheme(
      id: 56,
      title: "Madhya Pradesh Farm Mechanisation Subsidy Scheme",
      emoji: "🚜",
      category: "Agricultural Mechanisation",
      whenToUse:
          "Apply when purchasing tractors, power tillers, seed drills or other machinery to enhance farm productivity.",
      moneyReceived:
          "Subsidies on eligible farm equipment (varies by implement and farmer category).",
    ),

    Scheme(
      id: 57,
      title: "Madhya Pradesh Soil Health & Input Guidance Scheme",
      emoji: "🧪",
      category: "Soil Testing & Nutrient Support",
      whenToUse:
          "Apply if you want a soil health card and nutrient recommendations to optimise fertiliser use and improve yields.",
      moneyReceived:
          "Soil test report with fertiliser advice and potential subsidy on soil amendments (varies by district).",
    ),
  ],

  "West Bengal": [
    Scheme(
      id: 58,
      title: "Krishak Bandhu Scheme (West Bengal)",
      emoji: "🌾",
      category: "Farmer Income & Welfare Support",
      whenToUse:
          "Apply if you are a farmer in West Bengal to receive annual financial assistance to support agricultural activities and cover farming expenses.",
      moneyReceived:
          "₹4,000 per year for small holdings (<1 acre) and ₹10,000 per year for those with ≥1 acre; plus ₹2,00,000 death benefit for the farmer’s family.",
    ),

    Scheme(
      id: 59,
      title: "West Bengal Farm Mechanization Scheme",
      emoji: "🚜",
      category: "Agricultural Mechanisation Subsidy",
      whenToUse:
          "Apply when purchasing power-operated farm machinery to boost productivity and reduce cultivation costs.",
      moneyReceived:
          "Subsidy of ~50%–60% of machinery cost (up to ₹3,00,000 max) for eligible equipment.",
    ),

    Scheme(
      id: 60,
      title:
          "One Time Assistance for Small & Marginal Farm Implements (OTA-SFI)",
      emoji: "🛠️",
      category: "Farm Implements Subsidy",
      whenToUse:
          "Apply if you are a small or marginal farmer and need financial support to buy manually operated farm tools and implements.",
      moneyReceived:
          "Subsidy on eligible small tools such as sprayers, seeders, weeder implements, chaff cutters, etc.",
    ),

    Scheme(
      id: 61,
      title: "Amar Fasal Amar Gola Scheme",
      emoji: "📦",
      category: "Storage & Marketing Support",
      whenToUse:
          "Use this scheme when you need financial assistance to build crop storage structures (golā) to better store and market produce.",
      moneyReceived:
          "Subsidy ₹5,000 for small gola, ₹12,000 for pucca gola, and ₹25,000 for onion storage units.",
    ),

    Scheme(
      id: 62,
      title: "Pradhan Mantri Fasal Bima Yojana (Implemented in West Bengal)",
      emoji: "🌧️",
      category: "Crop Insurance",
      whenToUse:
          "Enroll before sowing season to secure compensation if your crops are damaged due to drought, flood, pests or other natural calamities.",
      moneyReceived:
          "Loss-based compensation paid after crop damage assessment under the insurance policy.",
    ),
  ],

  "Bihar": [
    Scheme(
      id: 63,
      title: "Bihar Rajya Fasal Sahayata Yojana",
      emoji: "🌾",
      category: "Crop Loss Assistance",
      whenToUse:
          "Apply if your crops are damaged due to floods, drought or natural calamities and you are not covered under regular crop insurance.",
      moneyReceived:
          "Up to ₹10,000 per acre depending on crop loss and land type (state-funded scheme).",
    ),

    Scheme(
      id: 64,
      title: "Bihar Krishi Input Anudan Yojana",
      emoji: "🌱",
      category: "Input Support",
      whenToUse:
          "Apply to receive compensation for crop loss or to support purchase of seeds/fertiliser after crop damage.",
      moneyReceived:
          "₹8,500 per hectare for non-irrigated land, ₹17,000 per hectare for irrigated land (max two hectares).",
    ),

    Scheme(
      id: 65,
      title: "Bihar Micro-Irrigation Subsidy Scheme",
      emoji: "💧",
      category: "Irrigation & Water Conservation",
      whenToUse:
          "Apply when you want to install drip sets, sprinkler systems, wells or farm ponds to improve water efficiency.",
      moneyReceived:
          "Subsidy on micro-irrigation systems (high subsidy for small/marginal farmers).",
    ),

    Scheme(
      id: 66,
      title:
          "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN) (Implemented in Bihar)",
      emoji: "💰",
      category: "Farmer Income Support",
      whenToUse:
          "Register if you are a land-owning farmer in Bihar to get direct income assistance for meeting agricultural input costs.",
      moneyReceived:
          "₹6,000 per year (plus additional state top-up announced under Karpoori Thakur Kisan Samman Nidhi).",
    ),

    Scheme(
      id: 67,
      title: "Pradhan Mantri Fasal Bima Yojana (PMFBY – Bihar Implementation)",
      emoji: "🌧️",
      category: "Crop Insurance",
      whenToUse:
          "Enroll before sowing season to get compensation if your crop is damaged due to natural calamities, pests or weather events.",
      moneyReceived:
          "Loss-based compensation paid after verified crop damage assessment.",
    ),
  ],

  "Odisha": [
    Scheme(
      id: 68,
      title:
          "Odisha KALIA Scheme (Krushak Assistance for Livelihood and Income Augmentation)",
      emoji: "💰",
      category: "Farmer Financial Support",
      whenToUse:
          "Apply if you are a small/marginal farmer, landless agricultural household or vulnerable agrarian household in Odisha for direct financial aid and livelihood support.",
      moneyReceived:
          "Financial aid ₹12,500 per year for small/marginal farmers and landless households; life & accident insurance cover, and interest-free crop loans up to ₹50,000. ",
    ),

    Scheme(
      id: 69,
      title: "Odisha CM-Kisan Yojana",
      emoji: "🌾",
      category: "State Farmer Income Support",
      whenToUse:
          "Apply if you are a resident farmer in Odisha to receive additional state assistance on top of central aid like PM-KISAN for agricultural input costs.",
      moneyReceived:
          "₹4,000 per year for small & marginal farmers; ₹12,500 for landless agricultural households in instalments.",
    ),

    Scheme(
      id: 70,
      title: "Odisha Samrudh Krushak Yojana",
      emoji: "📦",
      category: "Crop Marketing & Price Support",
      whenToUse:
          "Use this scheme when selling paddy through state procurement centres to get assured price and faster payment.",
      moneyReceived:
          "Procurement support at around ₹3,100 per quintal paddy with DBT credit to farmer accounts.",
    ),

    Scheme(
      id: 71,
      title: "Pradhan Mantri Fasal Bima Yojana (PMFBY) – Odisha Implementation",
      emoji: "🌧️",
      category: "Crop Insurance",
      whenToUse:
          "Enroll before the sowing season to get compensation if your crops are damaged due to natural calamities, pests or weather events in notified areas.",
      moneyReceived:
          "Loss-based compensation after crop damage assessment under the insurance policy.",
    ),

    Scheme(
      id: 72,
      title: "Mukhyamantri Krushi Udyog Yojana (MKUY)",
      emoji: "👨‍🌾",
      category: "Agro-Entrepreneurship & Investment Support",
      whenToUse:
          "Apply when planning to start or expand agro-based enterprises, including farm processing and value-added units.",
      moneyReceived:
          "Capital investment subsidy up to 40–50% on eligible agro-industry projects (up to ₹50 lakh).",
    ),
  ],

  "Assam": [
    Scheme(
      id: 73,
      title: "Assam Krishi Unnayan Yojana",
      emoji: "🌾",
      category: "Overall Agriculture Development",
      whenToUse:
          "Apply when you need comprehensive support for improved agricultural practices, extension services, training, and productivity enhancement.",
      moneyReceived:
          "Financial and technical support for improved seeds, inputs, extension activities, and capacity building (varies by project).",
    ),

    Scheme(
      id: 74,
      title: "Assam Micro-Irrigation & Drip Subsidy Scheme",
      emoji: "💧",
      category: "Irrigation & Water Use Efficiency",
      whenToUse:
          "Apply if you want to install drip or sprinkler systems on your farmland to conserve water and enhance crop yield.",
      moneyReceived:
          "Subsidy on eligible drip and micro-irrigation systems (amount depends on land and farmer category).",
    ),

    Scheme(
      id: 75,
      title: "Pradhan Mantri Fasal Bima Yojana (PMFBY – Assam Implementation)",
      emoji: "🌧️",
      category: "Crop Insurance",
      whenToUse:
          "Enroll before sowing season to secure compensation if crops are damaged due to natural calamities, pests, floods, drought or other risks.",
      moneyReceived:
          "Loss-based compensation after crop damage assessment under the insured policy.",
    ),

    Scheme(
      id: 76,
      title: "Assam Krishi Loan & Credit Support Scheme",
      emoji: "💳",
      category: "Farm Credit Support",
      whenToUse:
          "Apply when you need short-term credit for crop production, inputs, or allied activities at favourable interest rates.",
      moneyReceived:
          "Credit up to eligible limits with interest subvention through partner banks (varies by loan type and purpose).",
    ),

    Scheme(
      id: 77,
      title: "Soil Health Card Scheme (Assam Implementation)",
      emoji: "🧪",
      category: "Soil Testing & Nutrient Management",
      whenToUse:
          "Apply if you want land soil health testing and science-based fertiliser recommendation to improve crop yields and reduce costs.",
      moneyReceived:
          "Soil test report with fertiliser guidance (enhances productivity but not a direct cash benefit).",
    ),
  ],

  "Haryana": [
    Scheme(
      id: 78,
      title: "Haryana Kisan Samridhi Yojana",
      emoji: "💰",
      category: "Farmer Income Support",
      whenToUse:
          "Apply if you are a farmer in Haryana to receive annual financial assistance that helps cover farm input costs and supports livelihood.",
      moneyReceived:
          "Direct cash assistance (amount varies by annual state budget allocation).",
    ),

    Scheme(
      id: 79,
      title:
          "Pradhan Mantri Fasal Bima Yojana (PMFBY – Haryana Implementation)",
      emoji: "🌾",
      category: "Crop Insurance",
      whenToUse:
          "Enroll before sowing season to protect your crops against loss due to drought, flood, pests, or other natural calamities.",
      moneyReceived:
          "Loss-based compensation after verified crop damage assessment.",
    ),

    Scheme(
      id: 80,
      title: "Haryana Farm Mechanisation Subsidy Scheme",
      emoji: "🚜",
      category: "Agricultural Mechanisation",
      whenToUse:
          "Apply when purchasing tractors, power tillers, seed drills or other farm machinery to increase productivity and reduce labour costs.",
      moneyReceived:
          "Subsidy on eligible machinery (varies by implement and farmer category).",
    ),

    Scheme(
      id: 81,
      title: "Haryana Micro Irrigation & Drip Subsidy Scheme",
      emoji: "💧",
      category: "Irrigation & Water Conservation",
      whenToUse:
          "Use if you want drip or sprinkler irrigation systems to improve water use efficiency and support crop production.",
      moneyReceived:
          "Subsidy on drip/micro irrigation systems (percentage depends on land size and category).",
    ),

    Scheme(
      id: 82,
      title: "Soil Health Card Scheme (Haryana Implementation)",
      emoji: "🧪",
      category: "Soil Testing & Nutrient Management",
      whenToUse:
          "Apply if you need scientific soil testing and nutrient recommendations to optimise fertiliser use and boost yields.",
      moneyReceived:
          "Soil test report with fertiliser guidance and access to recommended inputs (improves productivity).",
    ),
  ],
  "Himachal Pradesh": [Scheme(
    id: 83,
    title: "Prakritik Kheti Khushal Kisan Yojana",
    emoji: "🌱",
    category: "Natural & Sustainable Farming",
    whenToUse: "Apply if you want to adopt natural farming (chemical-free/ZBNF practices) to lower cultivation cost and improve soil health in Himachal Pradesh.",
    moneyReceived: "Subsidies for input formulation, desi cow purchase, pest control support, storage & cattle shed assistance (varies by activity).",
  ),

  Scheme(
    id: 84,
    title: "Mukhyamantri Khet Sanrakshan Yojana",
    emoji: "🛡️",
    category: "Field Protection Support",
    whenToUse: "Use when you want financial assistance to install wire fencing around your agricultural field to protect crops from stray animals.",
    moneyReceived: "Subsidy ~80% for individual farmers and ~85% for group applications on the cost of wire fencing. :contentReference[oaicite:0]{index=0}",
  ),

  Scheme(
    id: 85,
    title: "Himachal Pradesh Micro-Irrigation & Drip Subsidy Scheme",
    emoji: "💧",
    category: "Irrigation & Water Conservation",
    whenToUse: "Apply to install drip or sprinkler irrigation systems on your farmland to conserve water and improve crop yields.",
    moneyReceived: "Subsidy on eligible micro-irrigation equipment (amount varies by land size & beneficiary category).",
  ),

  Scheme(
    id: 86,
    title: "Rashtriya Krishi Vikas Yojana (RKVY-RAFTAAR – HP)",
    emoji: "🚜",
    category: "Agriculture Development Projects",
    whenToUse: "Apply/ participate when you need project funding for crop production improvements, allied agriculture, or district-specific agri planning.",
    moneyReceived: "Project-based financial assistance planned jointly by central/state for agricultural growth. :contentReference[oaicite:1]{index=1}",
  ),

  Scheme(
    id: 87,
    title: "Mission for Integrated Development of Horticulture (MIDH – HP)",
    emoji: "🍍",
    category: "Horticulture Support",
    whenToUse: "Apply for subsidised support for horticulture activities like planting material, greenhouse, anti-hail nets, post-harvest facilities & mechanisation.",
    moneyReceived: "Subsidy typically between 40-85% depending on activity (state shares central MIDH benefits). :contentReference[oaicite:2]{index=2}",
  ),],
  "Uttarakhand": [
    Scheme(
    id: 88,
    title: "Farm Machinery Bank Scheme (Uttarakhand)",
    emoji: "🚜",
    category: "Agricultural Mechanisation Support",
    whenToUse: "Apply when you need subsidised access to tractors, harvesters, rotavators and farm implements to boost productivity and efficiency.",
    moneyReceived: "Subsidy up to ~80% for eligible farm machinery through the Farm Machinery Bank to reduce costs. :contentReference[oaicite:0]{index=0}",
  ),

  Scheme(
    id: 89,
    title: "Organic Farming Support Scheme (Uttarakhand Organic Farming)",
    emoji: "🌱",
    category: "Sustainable & Organic Agriculture",
    whenToUse: "Use if you want to adopt organic or cluster-based farming in hilly regions with focused support and certification.",
    moneyReceived: "Support ~₹32,000 per hectare over 3 years for farmers participating in organic cluster farming. :contentReference[oaicite:1]{index=1}",
  ),

  Scheme(
    id: 90,
    title: "Interest-Free Loan Scheme for Farmers",
    emoji: "💸",
    category: "Credit Support",
    whenToUse: "Apply before sowing or investment in agriculture activities if you need a short-term loan for inputs at no interest.",
    moneyReceived: "Interest-free loan up to ₹3 lakh for eligible farmers. :contentReference[oaicite:2]{index=2}",
  ),

  Scheme(
    id: 91,
    title: "Wheat & Sugarcane Bonus Scheme (Uttarakhand)",
    emoji: "🌾",
    category: "Price/Procurement Support",
    whenToUse: "Get additional price boost when selling paddy/wheat and sugarcane at procurement centres by state-announced bonus.",
    moneyReceived: "Bonus ₹20 per quintal on wheat and ₹20 per quintal increased sugarcane rate. :contentReference[oaicite:3]{index=3}",
  ),

  Scheme(
    id: 92,
    title: "Rashtriya Krishi Vikas Yojana – RAFTAAR (Implemented in Uttarakhand)",
    emoji: "📈",
    category: "Agriculture Development Projects",
    whenToUse: "Participate in district-level agricultural development, soil & water conservation, and skill projects to add income sources and integrated farming support.",
    moneyReceived: "Project-based financial assistance through state-approved RKVY-RAFTAAR plans. :contentReference[oaicite:4]{index=4}",
  ),

  ],
  "Jharkhand": [Scheme(
    id: 93,
    title: "Mukhyamantri Krishi Ashirwad Yojana",
    emoji: "💰",
    category: "Farmer Investment Support",
    whenToUse: "Apply if you are a small or marginal farmer in Jharkhand to receive direct cash support before the Kharif season for seeds, fertiliser & cultivation inputs.",
    moneyReceived: "₹5,000 per acre per year (up to 5 acres).",
  ),

  Scheme(
    id: 94,
    title: "Jharkhand Rajya Fasal Rahat Yojana",
    emoji: "🌾",
    category: "Crop Loss Assistance",
    whenToUse: "Use when your crops are damaged due to drought, flood, storms or other natural calamities — this scheme directly compensates loss without insurance premiums.",
    moneyReceived: "Up to ₹3,000–₹4,000 per acre depending on extent of crop loss. :contentReference[oaicite:0]{index=0}",
  ),

  Scheme(
    id: 95,
    title: "Agricultural Equipment Distribution & Subsidy Scheme",
    emoji: "🚜",
    category: "Farm Mechanisation Support",
    whenToUse: "Apply if you want financial help to purchase tractors, power tillers, rice transplanters, threshers or other farm machinery with high subsidy.",
    moneyReceived: "Up to 80% subsidy on equipment cost (up to ₹5 lakh for groups and up to ₹1.6 lakh for individual farmers). :contentReference[oaicite:1]{index=1}",
  ),

  Scheme(
    id: 96,
    title: "Kisan Samriddhi Yojana (Solar Irrigation Support)",
    emoji: "💧",
    category: "Irrigation & Water Conservation",
    whenToUse: "Apply if you want to install a **solar-powered irrigation unit** to reduce electricity costs and increase water availability for crops.",
    moneyReceived: "Up to 90% subsidy on solar irrigation units. :contentReference[oaicite:2]{index=2}",
  ),

  Scheme(
    id: 97,
    title: "Jharkhand Krishi Rin Mafi Yojana",
    emoji: "📉",
    category: "Loan Waiver / Credit Relief",
    whenToUse: "Use this scheme if you have outstanding short-term crop loans – it **waives agricultural loans** up to a set limit to relieve debt burden.",
    moneyReceived: "One-time loan waiver up to ₹50,000 per eligible farmer. :contentReference[oaicite:3]{index=3}",
  ),],
  "Chhattisgarh": [Scheme(
    id: 97,
    title: "Krishak Unnati Yojana (Chhattisgarh)",
    emoji: "🌾",
    category: "Farmer Support & Income Enhancement",
    whenToUse: "Apply/participate when selling agricultural produce like paddy, pulses, oilseeds or millets so you get assured procurement price and input support.",
    moneyReceived: "Paddy procurement at ₹3,100 per quintal (up to 21 quintals per acre) and input assistance under the state’s annual farmer programme. :contentReference[oaicite:0]{index=0}",
  ),

  Scheme(
    id: 98,
    title: "Rajiv Gandhi Kisan Nyay Yojana",
    emoji: "💰",
    category: "Direct Cash Support & Input Subsidy",
    whenToUse: "Apply if you are a farmer in Chhattisgarh and want annual direct financial assistance for covering cultivation costs including seeds, fertiliser and other inputs.",
    moneyReceived: "Input subsidy up to ~₹10,000 per acre annually for eligible crops like paddy, maize, pulses, oilseeds and millets. :contentReference[oaicite:1]{index=1}",
  ),

  Scheme(
    id: 99,
    title: "Kisan Samriddhi Yojana",
    emoji: "💧",
    category: "Irrigation Support",
    whenToUse: "Use when you need financial assistance for digging tube wells or installing pumps to improve irrigation on your farm.",
    moneyReceived: "Mining grant up to ₹10,000 (general) / ₹18,000 (SC/ST) and pump installation subsidy up to ₹20,000 (general) / ₹25,000 (SC/ST). :contentReference[oaicite:2]{index=2}",
  ),

  Scheme(
    id: 100,
    title: "Free Electricity for Agricultural Pumps (CG State)",
    emoji: "⚡",
    category: "Input Cost Reduction",
    whenToUse: "Benefit from reduced or free electricity charges if you use electric pumps for irrigation, lowering your operating costs.",
    moneyReceived: "Free electricity up to 5 HP for pump users as provided in the Chhattisgarh state budget allocations. :contentReference[oaicite:3]{index=3}",
  ),

  Scheme(
    id: 101,
    title: "Pradhan Mantri Fasal Bima Yojana (PMFBY – CG Implementation)",
    emoji: "🌧️",
    category: "Crop Insurance",
    whenToUse: "Enroll before the sowing season to get compensation if your crops are damaged due to natural calamities, pests, drought, flood or other risks.",
    moneyReceived: "Loss-based compensation after verified crop damage assessment under the insurance policy. :contentReference[oaicite:4]{index=4}",
  ),
],
  "Goa": [Scheme(
    id: 102,
    title: "Interest Subsidy on Loans for Agriculture & Allied Activities (Goa)",
    emoji: "💸",
    category: "Credit & Loan Support",
    whenToUse: "Apply when you take short-term crop loans (up to ₹3 lakh) or term loans (up to ₹5 lakh) for agriculture-related activities like cultivation, dairy, fisheries, etc.",
    moneyReceived: "4% interest subsidy on eligible agricultural loans (subject to timely repayment). :contentReference[oaicite:0]{index=0}",
  ),

  Scheme(
    id: 103,
    title: "Scheme for Cattle Feed Subsidy (Goa)",
    emoji: "🐄",
    category: "Dairy & Allied Support",
    whenToUse: "Use this if you are a dairy farmer and supply milk through a registered dairy co-operative society in Goa to get support for cattle feed cost.",
    moneyReceived: "Subsidy ~7.72% of cost of milk supplied to authorised dairy cooperative societies as feed subsidy. :contentReference[oaicite:1]{index=1}",
  ),

  Scheme(
    id: 104,
    title: "Agricultural Produce Arrival Incentive Scheme (Goa)",
    emoji: "🥥",
    category: "Market Incentives",
    whenToUse: "Apply when selling eligible crops like coconut, betelnut or cashewnut so you receive extra incentive per unit of produce delivered to approved marketing boards.",
    moneyReceived: "Cash incentives for arrivals: coconut ~₹100/1000 nuts, betelnut ~₹0.50/kg, cashewnut ~₹0.25/kg (up to capped amounts). :contentReference[oaicite:2]{index=2}",
  ),

  Scheme(
    id: 105,
    title: "Organic & Jaivik Krishi Support (Goa)",
    emoji: "🌱",
    category: "Organic Farming Support",
    whenToUse: "Apply if you want to cultivate using organic inputs or join organic/farm clusters to improve soil health and reduce chemical input costs.",
    moneyReceived: "Subsidy on organic inputs and bio-fertilizers; promotion of certified organic produce (varies by state scheme). :contentReference[oaicite:3]{index=3}",
  ),

  Scheme(
    id: 106,
    title: "Goem Mati, Goem Bhat Paddy Support Scheme",
    emoji: "🌾",
    category: "Crop Support & Input Assistance",
    whenToUse: "Use if you are cultivating traditional paddy varieties under state-led revival programmes to receive input support (seeds, soil testing, etc.).",
    moneyReceived: "₹4,000 per hectare plus free quality seeds and subsidized inputs as part of state agricultural development assistance. :contentReference[oaicite:4]{index=4}",
  ),
],
  "Sikkim": [Scheme(
    id: 107,
    title: "Mukhya Mantri Krishi Samriddhi Yojna (Sikkim)",
    emoji: "🌾",
    category: "Farmer Production & Income Support",
    whenToUse: "Apply if you are an agricultural producer in Sikkim to receive assistance aimed at increasing productivity, enhancing income, and supporting agri-business activities.",
    moneyReceived: "Financial incentives to boost crop production and farm business; supports improved farming practices. :contentReference[oaicite:0]{index=0}",
  ),

  Scheme(
    id: 108,
    title: "Viksit Krishi Sankalp Abhiyan (Sikkim)",
    emoji: "🌱",
    category: "Organic & Climate-Smart Agriculture",
    whenToUse: "Use during major cropping seasons when the state runs campaigns promoting organic and climate-resilient farming methods with expert guidance.",
    moneyReceived: "Support through training, Soil Health Card guidance and adoption of improved practices (focus on sustainable organic farming). :contentReference[oaicite:1]{index=1}",
  ),

  Scheme(
    id: 109,
    title: "Pradhan Mantri Kisan Samman Nidhi (PM-KISAN) – Sikkim",
    emoji: "💰",
    category: "Direct Income Support",
    whenToUse: "Enroll as a land-owning farmer in Sikkim to receive annual direct benefit transfer for covering agricultural input costs.",
    moneyReceived: "₹6,000 per year (transferred in 3 instalments of ₹2,000). :contentReference[oaicite:2]{index=2}",
  ),

  Scheme(
    id: 110,
    title: "Sub-Mission on Agricultural Mechanisation (SMAM – Sikkim)",
    emoji: "🚜",
    category: "Agricultural Mechanisation",
    whenToUse: "Apply when you want subsidised access to farm machinery or equipment through state/local department distribution programs.",
    moneyReceived: "Subsidised support for farm machinery distribution to boost productivity and reduce labour costs. :contentReference[oaicite:3]{index=3}",
  ),

  Scheme(
    id: 111,
    title: "Micro-Irrigation & Water Conservation Support (PMKSY – Sikkim)",
    emoji: "💧",
    category: "Irrigation & Water Saving",
    whenToUse: "Use when you want to install micro-irrigation systems (drip/sprinkler) to improve water use efficiency on your farmland.",
    moneyReceived: "Subsidy and equipment support under Pradhan Mantri Krishi Sinchayee Yojana components implemented in Sikkim. :contentReference[oaicite:4]{index=4}",
  ),
],
  "Tripura": [Scheme(
    id: 112,
    title: "Pradhan Mantri Kisan Samman Nidhi (PM‑KISAN) – Tripura",
    emoji: "💰",
    category: "Farmer Income Support",
    whenToUse: "Register as a land‑owning farmer in Tripura to receive direct cash assistance annually for agricultural input costs.",
    moneyReceived: "₹6,000 per year (paid in 3 instalments). :contentReference[oaicite:0]{index=0}",
  ),

  Scheme(
    id: 113,
    title: "Pradhan Mantri Fasal Bima Yojana (PMFBY – Tripura Implementation)",
    emoji: "🌾",
    category: "Crop Insurance",
    whenToUse: "Enroll before the crop season to get compensation if your crops are damaged due to natural calamities, pests, drought, or other risks.",
    moneyReceived: "Loss‑based compensation after crop damage assessment (central crop insurance scheme implemented in the state). :contentReference[oaicite:1]{index=1}",
  ),

  Scheme(
    id: 114,
    title: "Tripura Sub‑Mission on Agricultural Mechanisation (SMAM)",
    emoji: "🚜",
    category: "Farm Mechanisation",
    whenToUse: "Apply to get subsidised support for purchasing or accessing farm machinery and equipment to boost productivity.",
    moneyReceived: "Subsidy assistance for eligible agricultural machinery and implements. :contentReference[oaicite:2]{index=2}",
  ),

  Scheme(
    id: 115,
    title: "Soil Health Card & Soil Health Management (Tripura)",
    emoji: "🧪",
    category: "Soil & Nutrient Support",
    whenToUse: "Use when you want scientific soil testing and recommendations to optimise fertiliser use and improve crop yields.",
    moneyReceived: "Soil test report with nutrient recommendations and integrated soil health solutions. :contentReference[oaicite:3]{index=3}",
  ),

  Scheme(
    id: 116,
    title: "Assistance for Organic & Horticulture Development (MOVCD‑NER/NHM in Tripura)",
    emoji: "🌱",
    category: "Organic & Value Chain Support",
    whenToUse: "Apply if you are involved in organic farming promotion, value chain development, or horticulture activities in Tripura.",
    moneyReceived: "Subsidy and support for organic inputs, processing, seed quality improvement, and horticulture value chain activities. :contentReference[oaicite:4]{index=4}",
  ),
],
  "Meghalaya": [
    Scheme(
    id: 117,
    title: "Meghalaya Potato & Tuber Crop Subsidy Scheme",
    emoji: "🥔",
    category: "Input & Crop Productivity Support",
    whenToUse: "Apply if you are a farmer cultivating potato, sweet potato, tapioca, or other tuber crops in Meghalaya to get quality seeds and plant protection inputs at a subsidised rate.",
    moneyReceived: "50% subsidy on HYV seeds, pesticides and sprayers for tuber crop cultivation. :contentReference[oaicite:0]{index=0}",
  ),

  Scheme(
    id: 118,
    title: "Winter Cropping & Cultivable Land Development Scheme",
    emoji: "🌾",
    category: "Rabi/Winter Crop Support",
    whenToUse: "Use when you want assistance for expanding cultivated area and boosting winter/Rabi season crop production with free inputs and technology support.",
    moneyReceived: "Free or subsidised high‑yield seeds, bio‑fertilisers, bio‑pesticides, and fencing materials to increase winter crop output. :contentReference[oaicite:1]{index=1}",
  ),

  Scheme(
    id: 119,
    title: "Plantation Crop Development Scheme (Meghalaya)",
    emoji: "🌴",
    category: "Plantation Crop & Infrastructure Support",
    whenToUse: "Apply if you are engaged in cultivation of arecanut, cashewnut, coconut, pineapple, etc., and need subsidy for planting materials, polypipes and soakage tanks.",
    moneyReceived: "50% subsidy on planting materials, polypipes and soakage tank construction for a year. :contentReference[oaicite:2]{index=2}",
  ),

  Scheme(
    id: 120,
    title: "Agriculture Mechanisation & Engineering Scheme (Meghalaya)",
    emoji: "🚜",
    category: "Farm Mechanisation Subsidy",
    whenToUse: "Use when you want to acquire agricultural machinery like power tillers, tractors or water pumps with financial support to lower the cost of mechanisation.",
    moneyReceived: "Up to 60% subsidy on agricultural machinery and subsidised hiring of equipment. :contentReference[oaicite:3]{index=3}",
  ),

  Scheme(
    id: 121,
    title: "Soil & Water Conservation / PMKSY Implementation (Meghalaya)",
    emoji: "💧",
    category: "Water Conservation & Irrigation",
    whenToUse: "Apply to create water‑harvesting structures and adopt water‑efficient practices under the Pradhan Mantri Krishi Sinchayee Yojana (PMKSY) in Meghalaya.",
    moneyReceived: "Assistance for water harvesting structures and related irrigation support (varies by project). :contentReference[oaicite:4]{index=4}",
  ),

  ],
  "Manipur": [Scheme(
    id: 122,
    title: "Manipur Krishi Unnayan Yojana",
    emoji: "🌾",
    category: "Farm Development Support",
    whenToUse: "Apply when you need assistance for improved agricultural practices, extension services, high‑yield seeds, and training to enhance productivity on your farm.",
    moneyReceived: "Financial and technical support for quality seeds, inputs, and capacity building; assistance varies by activity and project.",
  ),

  Scheme(
    id: 123,
    title: "Interest Subsidy on Crop Loans (Manipur)",
    emoji: "💸",
    category: "Credit Support",
    whenToUse: "Use this when taking short‑term crop loans for cultivation, inputs or allied agriculture activities to reduce your interest burden.",
    moneyReceived: "Interest subsidy (generally a % of loan interest) on eligible agricultural loans (varies by bank/state policy).",
  ),

  Scheme(
    id: 124,
    title: "Integrated Farming System & Organic Promotion (Manipur)",
    emoji: "🌱",
    category: "Organic & Sustainable Agriculture",
    whenToUse: "Apply if you want to adopt integrated farming or certified organic cultivation with cluster support, soil health guidance and organic inputs.",
    moneyReceived: "Subsidy and input support for organic farming systems and cluster-based natural farming (varies by programme).",
  ),

  Scheme(
    id: 125,
    title: "Pradhan Mantri Fasal Bima Yojana (PMFBY – Manipur Implementation)",
    emoji: "🌧️",
    category: "Crop Insurance",
    whenToUse: "Enroll before sowing season to secure compensation if your crops are damaged due to natural calamities, pests, drought, flood or other risks.",
    moneyReceived: "Loss‑based compensation after crop damage assessment under the insurance policy.",
  ),

  Scheme(
    id: 126,
    title: "Sub‑Mission on Agricultural Mechanisation (SMAM – Manipur)",
    emoji: "🚜",
    category: "Mechanisation Subsidy",
    whenToUse: "Apply when purchasing eligible farm machinery, equipment or tools to boost productivity and labour efficiency.",
    moneyReceived: "Subsidy for eligible agricultural machinery and implements provided through state/central scheme components.",
  ),
],
  "Mizoram": [Scheme(
    id: 127,
    title: "Mizoram Krishi Unnayan Yojana",
    emoji: "🌾",
    category: "Agriculture Development Support",
    whenToUse: "Apply when you need technical assistance, training, improved seeds, or support for modern practices to increase crop productivity in Mizoram.",
    moneyReceived: "Financial and technical support for high‑yield seeds, inputs, extension services and capacity building.",
  ),

  Scheme(
    id: 128,
    title: "Pradhan Mantri Fasal Bima Yojana (PMFBY – Mizoram Implementation)",
    emoji: "🌧️",
    category: "Crop Insurance",
    whenToUse: "Enroll before the sowing season to get compensation if crops are damaged due to drought, flood, pests, or other natural calamities.",
    moneyReceived: "Loss‑based compensation after official crop damage assessment under the insurance policy.",
  ),

  Scheme(
    id: 129,
    title: "Mizoram Micro‑Irrigation & Water Management Scheme",
    emoji: "💧",
    category: "Irrigation & Water Conservation",
    whenToUse: "Apply when you want to install drip or sprinkler systems or other water‑saving irrigation structures to improve water use efficiency.",
    moneyReceived: "Subsidy on micro‑irrigation equipment and water management structures (varies by land & eligibility).",
  ),

  Scheme(
    id: 130,
    title: "Assistance for Organic & Shifting Cultivation Improvement",
    emoji: "🌱",
    category: "Organic & Sustainable Farming",
    whenToUse: "Use if you are involved in organic farming or want to adopt improved practices for shifting cultivation (jhum) with support for inputs and training.",
    moneyReceived: "Subsidy or support for organic inputs, soil health improvement, and training for sustainable agriculture practices.",
  ),

  Scheme(
    id: 131,
    title: "Sub‑Mission on Agricultural Mechanisation (SMAM – Mizoram)",
    emoji: "🚜",
    category: "Farm Mechanisation Subsidy",
    whenToUse: "Apply when purchasing or accessing farm machinery like power tillers, seeders, or other implements to increase farm efficiency.",
    moneyReceived: "Subsidised support for eligible agricultural machinery and implements through state/central components.",
  ),],
  "Nagaland": [Scheme(
    id: 132,
    title: "Rashtriya Krishi Vikas Yojana (RKVY – Nagaland)",
    emoji: "🌾",
    category: "Holistic Agri Development",
    whenToUse: "Use to get funding for integrated agriculture & allied interventions, infrastructure projects, and productivity enhancement.",
    moneyReceived: "State and central share funding towards priority projects like seed production, pest management, farm tools & implements, and market promotion.",
  ),

  Scheme(
    id: 133,
    title: "National Food Security Mission (NFSM – Nagaland)",
    emoji: "🌱",
    category: "Foodgrain Production Support",
    whenToUse: "Apply when aiming to increase production of key staple crops (rice, pulses, coarse cereals) through area expansion and productivity programmes.",
    moneyReceived: "Central subsidy support for seeds, demonstrations, crop inputs, and extension activities to enhance foodgrain yields.",
  ),

  Scheme(
    id: 134,
    title: "Pradhan Mantri Krishi Sinchayee Yojana (PMKSY – Nagaland)",
    emoji: "💧",
    category: "Irrigation & Water Management",
    whenToUse: "Use this for irrigation infrastructure, water harvesting, micro‑irrigation and efficient water use in farming.",
    moneyReceived: "Subsidised support for irrigation equipment, farm ponds, drip/sprinkler systems and water management interventions.",
  ),

  Scheme(
    id: 135,
    title: "Chief Minister Micro Finance Initiative (CMMFI – Nagaland)",
    emoji: "💰",
    category: "Credit Linked Subsidy",
    whenToUse: "Apply when farmers or agri‑entrepreneurs need affordable credit with subsidy support for agri & allied activities.",
    moneyReceived: "Interest subvention / partial subsidy on bank loans for eligible agricultural projects, FPOs, SHGs and allied ventures.",
  ),

  Scheme(
    id: 136,
    title: "National e‑Governance Plan in Agriculture (NeGP‑A – Nagaland)",
    emoji: "📱",
    category: "Digital Agri Services",
    whenToUse: "Use to access digital agriculture services, advisory and ICT tools offered by the Nagaland agriculture department.",
    moneyReceived: "No direct cash; improves access to information, transparency and efficient delivery of agri services and scheme benefits.",
  ),],
  "Arunachal Pradesh": [Scheme(
    id: 137,
    title: "Atma Nirbhar Krishi Yojana (ANKY – Arunachal Pradesh)",
    emoji: "🌱",
    category: "Productivity & Self‑Reliance Support",
    whenToUse: "Apply when you need financial assistance for agricultural projects, mechanisation, terracing, double cropping, or allied activities.",
    moneyReceived: "Government subsidy (about 45%), bank loan (about 45%), and beneficiary contribution (about 10%) support for eligible agricultural investments.",
  ),

  Scheme(
    id: 138,
    title: "Pradhan Mantri Kisan Samman Nidhi (PM‑KISAN)",
    emoji: "💸",
    category: "Income Support",
    whenToUse: "Enroll as a land‑holding farmer to get direct income support to help meet agricultural and household costs.",
    moneyReceived: "Annual direct benefit transfer of ₹6,000 in three equal instalments to eligible farmers’ bank accounts.",
  ),

  Scheme(
    id: 139,
    title: "Pradhan Mantri Krishi Sinchayee Yojana (PMKSY – Arunachal Pradesh)",
    emoji: "💧",
    category: "Irrigation & Water Management",
    whenToUse: "Use this to set up irrigation infrastructure, improve water availability and efficiency on farms.",
    moneyReceived: "Subsidised support for micro‑irrigation systems, water harvesting structures and other irrigation components.",
  ),

  Scheme(
    id: 140,
    title: "Mission for Integrated Development of Horticulture (MIDH – Arunachal Pradesh)",
    emoji: "🍍",
    category: "Horticulture Development",
    whenToUse: "Apply to get support for horticultural activities like protected cultivation, orchard rejuvenation, pest management, and post‑harvest support.",
    moneyReceived: "Subsidised inputs, equipment, tools and support services to enhance horticulture productivity and marketing.",
  ),

  Scheme(
    id: 141,
    title: "Mission Organic Value Chain Development for NER (MOVCD‑NER – Arunachal Pradesh)",
    emoji: "🌿",
    category: "Organic & Value Chain Development",
    whenToUse: "Use if you want support for organic farming, certification, processing, aggregation, and market linkage in the organic value chain.",
    moneyReceived: "Support across inputs, certification, collection/aggregation facilities and processing/marketing for organic produce.",
  ),],
};

////////////////////////////////////////////////////////////
/// FIRST PAGE – STATE LIST
////////////////////////////////////////////////////////////

class StatesPage extends StatelessWidget {
  const StatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final states = stateSchemes.keys.toList();

    return Scaffold(
      appBar: AppBar(title: const Text("Select Your State"), centerTitle: true),
      backgroundColor: const Color(0xFFF7F8FA),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: states.length,
        itemBuilder: (context, index) {
          final state = states[index];

          return InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SchemesPage(state: state)),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Icon(Icons.location_on, color: Colors.green),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      state,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

////////////////////////////////////////////////////////////
/// SECOND PAGE – SCHEMES
////////////////////////////////////////////////////////////

class SchemesPage extends StatelessWidget {
  final String state;

  const SchemesPage({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final schemes = stateSchemes[state] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text("$state Schemes"), centerTitle: true),
      backgroundColor: const Color(0xFFF7F8FA),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: schemes.length,
        itemBuilder: (context, index) {
          final scheme = schemes[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(scheme.emoji, style: const TextStyle(fontSize: 28)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        scheme.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    scheme.category,
                    style: TextStyle(
                      color: Colors.green.shade700,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                const SizedBox(height: 12),
                const Divider(),

                const Text(
                  "When to use",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 4),
                Text(scheme.whenToUse),

                const SizedBox(height: 12),

                const Text(
                  "Money received",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 4),
                Text(scheme.moneyReceived),
              ],
            ),
          );
        },
      ),
    );
  }
}
