import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/components.dart';
import 'package:flutter_application_1/screens/crop_calendar_screen.dart';

class CropCategoryList extends StatelessWidget {
  const CropCategoryList({super.key});

  static const Map<String, List<Map<String, String>>> cropData = {
    'Major Food Crops': [
      {'image': 'assets/images/rice.jpg', 'title': 'Rice'},
      {'image': 'assets/images/wheat.jpg', 'title': 'Wheat'},
      {'image': 'assets/images/maize.jpg', 'title': 'Maize'},
      {'image': 'assets/images/millets.jpg', 'title': 'Millets'},
    ],
    'Vegetables': [
      {'image': 'assets/images/tomato.jpg', 'title': 'Tomato'},
      {'image': 'assets/images/onion.jpg', 'title': 'Onion'},
      {'image': 'assets/images/bitterguard.jpg', 'title': 'Bitter Gourd'},
      {'image': 'assets/images/brinjal.jpg', 'title': 'Brinjal'},
      {'image': 'assets/images/beans.jpg', 'title': 'Beans'},
      {'image': 'assets/images/ladysfinger.jpg', 'title': 'Lady\'s Finger'},
      {'image': 'assets/images/greenchilli.jpg', 'title': 'Green Chilli'},
      {'image': 'assets/images/bottleguard.jpg', 'title': 'Bottle Gourd'},
      {'image': 'assets/images/cabbage.jpg', 'title': 'Cabbage'},
      {'image': 'assets/images/cucumber.jpg', 'title': 'Cucumber'},
    ],
    'Greens': [
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
    ],
    'Pulses': [
      {'image': 'assets/images/yellowpeas.jpg', 'title': 'Yellow Peas'},
      {'image': 'assets/images/redlentils.jpg', 'title': 'Red Lentils'},
      {'image': 'assets/images/kidneybeans.jpg', 'title': 'Kidney Beans'},
      {'image': 'assets/images/blackgram.jpg', 'title': 'Black Gram'},
      {'image': 'assets/images/groundnut.jpg', 'title': 'Groundnut'},
      {'image': 'assets/images/toordal.jpg', 'title': 'Toor Dal'},
      {'image': 'assets/images/mungbeans.jpg', 'title': 'Mung Beans'},
      {'image': 'assets/images/greenpeas.jpg', 'title': 'Green Peas'},
      {'image': 'assets/images/whitepeas.jpg', 'title': 'White Peas'},
      {'image': 'assets/images/blackchanna.jpg', 'title': 'Black Chana'},
      {'image': 'assets/images/whitechanna.jpg', 'title': 'White Chana'},
    ],
    'Fruits': [
      {'image': 'assets/images/banana.jpg', 'title': 'Banana'},
      {'image': 'assets/images/papaya.jpg', 'title': 'Papaya'},
      {'image': 'assets/images/guava.jpg', 'title': 'Guava'},
      {'image': 'assets/images/sapota.jpg', 'title': 'Sapota'},
      {'image': 'assets/images/watermelon.jpg', 'title': 'Watermelon'},
      {'image': 'assets/images/jackfruit.jpg', 'title': 'Jackfruit'},
      {'image': 'assets/images/pineapple.jpg', 'title': 'Pineapple'},
      {'image': 'assets/images/pomegranate.jpg', 'title': 'Pomegranate'},
      {'image': 'assets/images/muskmelon.jpg', 'title': 'Muskmelon'},
      {'image': 'assets/images/grapes.jpg', 'title': 'Grapes'},
      {'image': 'assets/images/lemon.jpg', 'title': 'Lemon'},
      {'image': 'assets/images/orange.jpg', 'title': 'Orange'},
      {'image': 'assets/images/custardapple.jpg', 'title': 'Custard Apple'},
      {'image': 'assets/images/tamaring.jpg', 'title': 'Tamarind'},
      {'image': 'assets/images/mango.jpg', 'title': 'Mango'},
    ],
    'Flowers': [
      {'image': 'assets/images/jasmine.jpg', 'title': 'Jasmine'},
      {'image': 'assets/images/rose.jpg', 'title': 'Rose'},
      {'image': 'assets/images/marigold.jpg', 'title': 'Marigold'},
      {'image': 'assets/images/chrysenthamum.jpg', 'title': 'Chrysanthemum'},
      {'image': 'assets/images/lotus.jpg', 'title': 'Lotus'},
      {'image': 'assets/images/mullai.jpg', 'title': 'Mullai'},
      {'image': 'assets/images/sunflower.jpg', 'title': 'Sunflower'},
      {'image': 'assets/images/royaljasmine.jpg', 'title': 'Royal Jasmine'},
      {'image': 'assets/images/crossandra.jpg', 'title': 'Crossandra'},
      {'image': 'assets/images/hibiscus.jpg', 'title': 'Hibiscus'},
      {'image': 'assets/images/damaskrose.jpg', 'title': 'Damask Rose'},
    ],
  };

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cropCards = [
      {
        'image': 'assets/images/majorfood.jpg',
        'title1': 'Major Food',
        'title2': 'Crops',
        'page': CropListScreen(
          categoryName: 'Major Food Crops',
          cropList: cropData['Major Food Crops']!,
        ),
      },
      {
        'image': 'assets/images/vegetables.jpg',
        'title1': 'Vegetables',
        'title2': null,
        'page': CropListScreen(
          categoryName: 'Vegetables',
          cropList: cropData['Vegetables']!,
        ),
      },
      {
        'image': 'assets/images/greens.jpg',
        'title1': 'Greens',
        'title2': null,
        'page': CropListScreen(
          categoryName: 'Greens',
          cropList: cropData['Greens']!,
        ),
      },
      {
        'image': 'assets/images/pulses.jpg',
        'title1': 'Pulses',
        'title2': null,
        'page': CropListScreen(
          categoryName: 'Pulses',
          cropList: cropData['Pulses']!,
        ),
      },
      {
        'image': 'assets/images/fruits.jpg',
        'title1': 'Fruits',
        'title2': null,
        'page': CropListScreen(
          categoryName: 'Fruits',
          cropList: cropData['Fruits']!,
        ),
      },
      {
        'image': 'assets/images/flowers.jpg',
        'title1': 'Flowers',
        'title2': null,
        'page': CropListScreen(
          categoryName: 'Flowers',
          cropList: cropData['Flowers']!,
        ),
      },
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Crop Calendar')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: cropCards.map((item) {
                    return CropCategoryCard(
                      imageUrl: item['image'],
                      title1: item['title1'],
                      title2: item['title2'],
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => item['page']),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CropListScreen extends StatelessWidget {
  final String categoryName;
  final List<Map<String, String>> cropList;

  const CropListScreen({
    super.key,
    required this.categoryName,
    required this.cropList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryName)),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: cropList.map((crop) {
              return CropCategoryCard(
                imageUrl: crop['image']!,
                title1: crop['title']!,
                title2: null,
                onPressed: () async {
                  final DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now().subtract(
                      const Duration(days: 365),
                    ),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                    helpText: 'Select crop planting start date',
                    confirmText: 'Continue',
                    cancelText: 'Cancel',
                  );

                  if (pickedDate != null && context.mounted) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CropCalendarScreen(
                          cropName: crop['title']!,
                          startDate: pickedDate,
                        ),
                      ),
                    );
                  }
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
