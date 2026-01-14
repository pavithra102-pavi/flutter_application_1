import 'package:flutter/material.dart';

class Vegetable {
  final String name;
  final String imgUrl;
  final String medicinal;
  final String image;
  final String text;
  final String title;
  final String extraimage;

  Vegetable({
    required this.name,
    required this.imgUrl,
    required this.medicinal,
    required this.image,
    required this.text,
    required this.title,
    required this.extraimage,
  });
}

class TricksScreen extends StatefulWidget {
  const TricksScreen({super.key});

  @override
  _TricksScreenState createState() => _TricksScreenState();
}

class _TricksScreenState extends State<TricksScreen> {
  List<Vegetable> allVegetables = [
    Vegetable(
      name: "Tomato",
      imgUrl: "assets/images/tomato.jpg",
      medicinal:
          "Fresh juice extract of tomato is used to stop excessive bleeding from the wounds."
          "Fresh tomato juice is used to induce vomiting in children in case of food poisoning."
          "Externally fruit juice is used to treat furuncles, scorpion and other insect bites. It is also used to bring down body temperature"
          "Fresh tomatoes are also used in pregnant women to treat oedema.",
      image: "assets/images/tomatojuice.jpg",
      text: "Benefit for skin",
      title:
          "Brightens Skin: Tomatoes can help brighten the skin and reduce dark spots."
          "Acne Treatment: They have natural antibacterial properties that can help fight acne."
          "Soothes Sunburn: Applying tomato can soothe sunburned skin."
          "Simple Face Mask: To create a simple mask, slice a fresh tomato and gently rub it on your face. Leave the juice on for 10-15 minutes, then rinse with lukewarm water.",
      extraimage: "assets/images/tomatoface.jpg",
    ),

    Vegetable(
      name: "Onion",
      imgUrl: "assets/images/onion.jpg",
      medicinal:
          "Onion is anti-aging, rejuvenating, aphrodisiac and improves intelligence. It improves skin complexion, useful in skin disorders. Its juice extract is useful in hair fall.",
      image: "assets/images/onionsnack.jpg",
      text: "Crispy Onion Chips Recipe",
      title:
          "Slice Onions Thinly:Peel and slice onions very thin. Separate the rings and sprinkle a little salt. Let sit for 10 minutes."
          " Prepare the Mixture:Add gram flour, rice flour, chili powder, and a pinch of salt to the onions. Mix well using the moisture from onions — no extra water needed."
          "Heat Oil:Heat oil in a deep pan over medium flame."
          "Fry the Onion Mix:Drop small portions of the coated onion into hot oil. Fry until golden and crispy."
          "Drain & Serve:Remove and drain on paper towels. Serve hot or cool and store in an airtight container.",
      extraimage: "assets/images/onionsnack.jpg",
    ),
    Vegetable(
      name: "Bitter Gourd",
      imgUrl: "assets/images/bitterguard.jpg",
      medicinal:
          "Bitter gourd, also known as bitter melon, is renowned for its numerous medicinal properties, including blood sugar regulation, cancer-fighting potential, and digestive health benefits.",
      image: "assets/images/bitterjuice.jpg",
      text: "Bitter Gourd Chips",
      title:
          "Slice Thinly:Cut bitter gourds into thin round slices."
          "Remove Bitterness:Add salt, rest for 15 mins, squeeze out water, and pat dry."
          "Add Spices:Mix slices with turmeric, chili powder, and rice flour (no water)."
          "Fry:Deep fry in hot oil until golden and crispy."
          "Serve:Drain on paper towels and enjoy!",
      extraimage: "assets/images/bittersnack.jpg",
    ),
    Vegetable(
      name: "Brinjal",
      imgUrl: "assets/images/brinjal.jpg",
      medicinal:
          " brinjal is used to treat digestive disorders, reduce inflammation, and manage blood sugar levels. Brinjal extracts are sometimes utilised in natural skincare solutions due to their anti-ageing and moisturising effects.",
      image: "assets/images/brinjalme.jpg",
      text: "Brinjal Chips Fry",
      title:
          "Slice brinjal into thin round pieces."
          "Soak in salt water for 10 minutes, then drain and pat dry."
          "Mix with salt, turmeric, red chili powder, and rice flour."
          "Heat oil and fry the slices until golden and crispy."
          "Drain on paper towel and serve hot.",
      extraimage: "assets/images/brinjalfry.jpg",
    ),
    Vegetable(
      name: "Beans",
      imgUrl: "assets/images/beans.jpg",
      medicinal:
          "Regulating blood sugar levels ,Being a good source of fiber,Improving heart health,Reducing iron deficiency, Possibly helping prevent cancer,Boosting enzymes,Being a good source of protein.",
      image: "assets/images/beansme.jpg",
      text: "Beans fry recepie:",
      title:
          "Wash and chop beans into small pieces."
          "Heat oil in a pan and add mustard seeds, then curry leaves."
          "Add chopped onions (optional) and sauté till soft."
          "Add beans, salt, turmeric, and a little water."
          "Cover and cook on low heat until beans are soft."
          "Add grated coconut or chili powder as desired."
          "Stir-fry for 2–3 minutes and serve hot.",
      extraimage: "assets/images/beansdish.jpg",
    ),
    Vegetable(
      name: "Lady's Finger",
      imgUrl: "assets/images/ladysfinger.jpg",
      medicinal:
          "The high fiber content in ladies’ finger aids digestion and helps prevent constipation. It promotes a healthy gut by feeding beneficial bacteria and supports regular bowel movements. The fiber, vitamin C, and antioxidant properties of ladies’ finger contribute to heart health.",
      image: "assets/images/ladyme.jpg",
      text: "ladys finger fry recipe:",
      title:
          "Wash and dry lady’s finger, then cut into 1-inch pieces."
          "Heat oil in a pan and add mustard seeds."
          "Add chopped onions and sauté until golden (optional)."
          "Add lady’s finger, salt, turmeric, and chili powder."
          "Cook on medium heat, stirring occasionally until crispy and cooked through."
          "Serve hot as a side dish or snack.",
      extraimage: "assets/images/ladysnack.jpg",
    ),
    Vegetable(
      name: "Green Chilli",
      imgUrl: "assets/images/greenchilli.jpg",
      medicinal:
          "Green chillies, more than just a spice, offer a wealth of health benefits. Rich in vitamins C and A, they boost immunity and promote skin and eye health. Antioxidants combat cell damage, potentially lowering chronic disease risk. Capsaicin aids metabolism and weight management.",
      image: "assets/images/greenchillime.jpg",
      text: "Green Chilli Fry Recipe:",
      title:
          "Wash green chilies and slit them lengthwise (keep the stem intact)."
          "Heat oil in a pan and add mustard seeds."
          "Add curry leaves and asafoetida (hing) if you like."
          "Add the green chilies, salt, turmeric powder, and a pinch of chaat masala or amchur (dry mango powder)."
          "Fry on medium heat, stirring gently, until the chilies blister and turn slightly crispy."
          "Serve as a spicy side or snack!",
      extraimage: "assets/images/greenchillifry.jpg",
    ),
    Vegetable(
      name: "Bottle Gourd",
      imgUrl: "assets/images/bottleguard.jpg",
      medicinal:
          "Bottle gourd is known for its numerous medicinal properties, including benefits for digestion, hydration, liver health, and potential anti-cancer effects.",
      image: "assets/images/bottleme.jpg",
      text: "Bottle Gourd Fry Recipe:",
      title:
          "Peel and chop bottle gourd into small cubes."
          "Heat oil in a pan, add mustard seeds and cumin seeds."
          "Add chopped onions and sauté till golden (optional)."
          "Add the bottle gourd pieces, salt, turmeric, and chili powder."
          "Cook covered on medium heat until tender, stirring occasionally."
          "Finish with a sprinkle of garam masala and fresh coriander leaves."
          "Serve hot as a side dish",
      extraimage: "assets/images/bottleporiyal.jpg",
    ),
    Vegetable(
      name: "Cabbage",
      imgUrl: "assets/images/cabbage.jpg",
      medicinal:
          "Cabbage is known for its numerous health benefits, including cancer prevention, digestive support, and anti-inflammatory properties.",
      image: "assets/images/cabbageme.jpg",
      text: "Cabbage Recipe:",
      title:
          "Finely chop cabbage and set aside."
          "Heat oil in a pan, add mustard seeds and cumin seeds."
          "Add chopped onions and sauté until translucent."
          "Add green chili and ginger (optional), sauté for a minute."
          "Add chopped cabbage, salt, turmeric, and chili powder."
          "Cook on medium heat, stirring occasionally, until cabbage is tender but still slightly crunchy."
          "Finish with a squeeze of lemon juice and chopped coriander leaves."
          "Serve hot as a side dish or with rice.",
      extraimage: "assets/images/cabbagedish.jpg",
    ),
    Vegetable(
      name: "Cucumber",
      imgUrl: "assets/images/cucumber.jpg",
      medicinal:
          "Cucumbers are not only refreshing but also offer numerous medicinal benefits, including hydration, skin health, and potential disease prevention.",
      image: "assets/images/cucumberme.jpg",
      text: "cucumber juice recepie:",
      title:
          "Wash and peel 1–2 cucumbers.Chop into chunks and put in a blender.Add a little water (about 1/2 cup) for smooth blending.Optional: add a pinch of salt, lemon juice, and a little honey or sugar for taste.Blend until smooth.Strain if desired, then serve chilled with ice cubes.",
      extraimage: "assets/images/cucumberdish.jpg",
    ),
    Vegetable(
      name: "Fenugreek leaves",
      imgUrl: "assets/images/fenugreek.jpg",
      medicinal:
          "Fenugreek leaves improve digestion, skin, heart health and hair health. They also have antioxidant and anti-inflammatory properties.",
      image: "assets/images/fenugreekdish.jpg",
      text: "Fenugreek Leaves Recipe:",
      title:
          "Wash and chop fresh fenugreek leaves (methi).Heat oil in a pan, add mustard seeds and cumin seeds.Add chopped onions and sauté until golden.Add chopped fenugreek leaves, salt, turmeric, and chili powder.Cook on medium heat until the leaves wilt and are tender (about 5–7 minutes).Optional: add a pinch of garam masala or a squeeze of lemon juice for extra flavor.Serve hot as a side dish with roti or rice.",
      extraimage: "assets/images/fenugreekvadai.jpg",
    ),
    Vegetable(
      name: "Mint Leaves",
      imgUrl: "assets/images/mint.jpg",
      medicinal:
          "Mint leaves have always been one of the most trusted remedies for a variety of health benefits, as they are known to offer a variety of health benefits that include aiding digestion, freshening breath, and even providing relief from cold symptoms.",
      image: "assets/images/mintjuice.jpg",
      text: "Mint leaves juice:",
      title:
          "Wash a handful of fresh mint leaves thoroughly.Add the mint leaves to a blender along with 1 cup of cold water.Optional: add a small piece of ginger, juice of half a lemon, and a little honey or sugar for taste.Blend until smooth.Strain the juice if desired for a smoother texture.Serve chilled with ice cubes.",
      extraimage: "assets/images/mintdish.jpg",
    ),
    Vegetable(
      name: "Curry Leaves",
      imgUrl: "assets/images/curryleaves.jpg",
      medicinal:
          "curry leaves support blood sugar balance, weight loss, immunity, and glowing skin—making them a true superfood for modern health concerns and rich in essential oils, vitamins, minerals, and antioxidants",
      image: "assets/images/curryjuice.jpg",
      text: "Curry Leaves Juice Recipe:",
      title:
          "Wash a handful of fresh curry leaves.Add them to a blender with 1 cup of water.Optional: add a small piece of ginger and a few drops of lemon juice.Blend until smooth.Strain the juice using a fine sieve or cloth.Drink on an empty stomach or serve fresh and slightly chilled.",
      extraimage: "assets/images/currydish.jpg",
    ),
    Vegetable(
      name: "Agathi Leaves",
      imgUrl: "assets/images/agathileaves.jpg",
      medicinal:
          " Agathi leaves have been widely used in traditional medicine for their anti-inflammatory, immune-boosting, and digestive-aiding properties. With their superior calcium, iron, and beta-carotene content, Agathi Leaves help strengthen bones and joints, improve vision, and maintain cardiovascular health.",
      image: "assets/images/agathime.jpg",
      text: "Agathi leaves recepie:",
      title:
          "Wash and finely chop agathi leaves, removing the thick stems. Heat oil in a pan and add mustard seeds and urad dal, followed by dry red chili and a pinch of asafoetida. Add chopped onions (optional) and sauté until soft. Then add the agathi leaves, salt, and a pinch of turmeric. Cook on low flame for 5–7 minutes until the leaves turn tender. Finally, add grated coconut, mix well, and serve hot with rice and dal.",
      extraimage: "assets/images/agathidish.jpg",
    ),
    Vegetable(
      name: "Water Spinach",
      imgUrl: "assets/images/waterspinach.jpg",
      medicinal:
          "water spinach is used as carminative and used as a remedy to treat inflammation, fever, jaundice, bronchitis, biliousness, liver malfunctions",
      image: "assets/images/waterspinachme.jpg",
      text: "water spinach recipe:",
      title:
          "Wash the water spinach thoroughly and chop it into 2-inch pieces, separating stems and leaves. Heat oil in a pan and sauté chopped garlic until fragrant and slightly golden. Add the stems first, stir-fry for a minute, then add the leaves along with salt and a splash of soy sauce. Cook on high heat for 2–3 minutes, stirring continuously, until the leaves are wilted but still bright green. Turn off the heat and serve hot as a side dish with rice.",
      extraimage: "assets/images/waterspinachdish.jpg",
    ),
    Vegetable(
      name: "Purslane",
      imgUrl: "assets/images/purslane.jpg",
      medicinal:
          " purslane is prized for its anti-inflammatory, antimicrobial, and cardio-protective properties. It is commonly used in salads, teas, and topical applications, making it a versatile natural remedy for digestive, skin, and cardiovascular health.",
      image: "assets/images/purslaneme.jpg",
      text: "purslane recipe:",
      title:
          "Wash the purslane thoroughly and chop it, removing any thick stems. Heat oil in a pan and add mustard seeds, cumin seeds, and a pinch of asafoetida. Add chopped onions and green chilies, and sauté until soft. Add the chopped purslane, salt, turmeric, and a little red chili powder. Cook on medium heat for 5–7 minutes until the leaves soften and release a bit of moisture. Serve warm as a side dish with rice or chapati.",
      extraimage: "assets/images/purslanedish.jpg",
    ),
    Vegetable(
      name: "Radish Leaves",
      imgUrl: "assets/images/radishleavess.jpg",
      medicinal:
          "radish leaves are varied ranging from treating diabetes to rheumatism. It contains essential vitamins and minerals and it also acts as a detoxifying agent. The high iron and phosphorus content of radish leaves increases immunity and reduces fatigue.",
      image: "assets/images/radishme.jpg",
      text: "radish leaves recipe:",
      title:
          "Wash and finely chop the radish leaves, removing any hard stems. Heat oil in a pan and add mustard seeds, cumin seeds, and a pinch of asafoetida. Add chopped onions and green chilies, and sauté until the onions turn soft. Add the chopped radish leaves, salt, turmeric, and a little red chili powder. Cook on medium flame for 5–7 minutes until the leaves are tender, then serve hot with chapati or rice.",
      extraimage: "assets/images/raddishdish.jpg",
    ),
    Vegetable(
      name: "Coriander Leaves",
      imgUrl: "assets/images/coriander.jpg",
      medicinal:
          "coriander leaves improves digestion,rich in antioxidants,enhances skin health,boosts immunity,supports heart health,regulates blood sugar levels,promotes bone health,detoxifies the body.",
      image: "assets/images/corianderme.jpg",
      text: "Coriander Leaves Juice Recipe:",
      title:
          "Wash a handful of fresh coriander leaves thoroughly. Add them to a blender with 1 cup of water, a small piece of ginger, and the juice of half a lemon. Optional: add a pinch of black salt or a little honey for taste. Blend until smooth, then strain the juice if desired. Serve immediately, slightly chilled, as a detoxifying and refreshing drink.",
      extraimage: "assets/images/corianderdish.jpg",
    ),
    Vegetable(
      name: "Gongura Leaves",
      imgUrl: "assets/images/gonguraleaves.jpg",
      medicinal:
          "gongura leaves have anti-inflammatory properties that heal boils, ulcers, and wounds. It also helps to treat itchy skin, swelling, ringworm, and scorbutic diseases",
      image: "assets/images/gongurame.jpg",
      text: "gongura leaves recipe:",
      title:
          "Pluck and wash the gongura leaves thoroughly, then roughly chop them. Heat oil in a pan, add mustard seeds, cumin seeds, dry red chilies, and a few garlic cloves, and sauté until aromatic. Add chopped onions and cook until soft, then add the gongura leaves. Add salt, turmeric, and red chili powder, and cook on medium heat until the leaves soften and the raw smell goes away. Cook until the mixture thickens slightly, then serve hot with rice and ghee.",
      extraimage: "assets/images/gonguradish.jpg",
    ),
    Vegetable(
      name: "Amaranthus",
      imgUrl: "assets/images/amaranthus.jpg",
      medicinal:
          "The leaves are employed to treat skin issues like rashes, eczema, and inflammation, as well as other ailments such as urinary tract infections, rheumatic problems",
      image: "assets/images/amaranthusme.jpg",
      text: "Amaranthus leaves Recipe:",
      title:
          "Wash and finely chop amaranthus leaves. Heat oil in a pan, add mustard seeds, cumin seeds, and dry red chilies. Add chopped onions and sauté until soft. Add the chopped leaves, salt, turmeric, and a little red chili powder. Cook on medium heat for 5–7 minutes until the leaves wilt and turn tender. Finish with grated coconut (optional) and serve hot with rice or chapati.",
      extraimage: "assets/images/amaranthusdish.jpg",
    ),
    Vegetable(
      name: "Spinach",
      imgUrl: "assets/images/spinach.jpg",
      medicinal:
          "Eating spinach can help boost your immune system, improve your vision, and provide antioxidants that may help reduce the risk of cancer and other diseases.",
      image: "assets/images/spinachme.jpg",
      text: "Spinach Recipe:",
      title:
          "Wash and chop fresh spinach leaves. Heat oil in a pan and add mustard seeds and chopped garlic; sauté until fragrant. Add the spinach leaves along with salt, turmeric, and a pinch of chili powder. Cook on medium heat, stirring frequently, until the spinach wilts and softens, about 3–5 minutes. Serve hot as a side dish with rice or bread.",
      extraimage: "assets/images/spinachdish.jpg",
    ),
    Vegetable(
      name: "Yellow Peas",
      imgUrl: "assets/images/yellowpeas.jpg",
      medicinal:
          "yellow peas into your diet can help support digestion, promote heart health, and provide a sustainable source of protein. Yellow peas are a versatile and nutritious ingredient that can be used in various dishes.",
      image: "assets/images/yellowpeasme.jpg",
      text: "Yellow Peas vadai Recipe:",
      title:
          "Soak yellow peas in water for 4 to 6 hours or overnight. Drain and grind them coarsely with green chilies, ginger, garlic, and salt, adding little water if needed. Transfer the batter to a bowl and mix in finely chopped onions, curry leaves, and coriander leaves. Heat oil in a deep pan for frying. Shape the batter into small patties or balls and carefully drop them into the hot oil. Fry until golden brown and crispy, then drain on paper towels and serve hot with chutney or sauce.",
      extraimage: "assets/images/yellowdish.jpg",
    ),
    Vegetable(
      name: "Red Lentils",
      imgUrl: "assets/images/redlentils.jpg",
      medicinal:
          "Rich in protein, carbohydrates, and dietary fiber, yellow peas have been linked to numerous health benefits, including improved digestion, increased energy, and even a reduced risk of certain chronic diseases.",
      image: "assets/images/redlentilsme.jpg",
      text: "Red Lentils broth Recipe:",
      title:
          "Start by heating two tablespoons of olive oil in a large pot, then sauté a chopped onion, two minced garlic cloves, one diced carrot, and optional celery until they soften. Add a teaspoon of ground cumin and half a teaspoon of turmeric, stirring for a minute to release their aroma. Stir in one cup of rinsed red lentils, a bay leaf, and six cups of water or vegetable broth. Bring the mixture to a boil, then reduce the heat and let it simmer uncovered for 25 to 30 minutes, until the lentils are tender and starting to break down. Season with salt and pepper to taste, and if you prefer a clearer broth, strain out the solids—or leave it chunky for a heartier soup. To finish, brighten the flavor with a splash of lemon juice and garnish with fresh herbs like parsley or cilantro before serving warm.",
      extraimage: "assets/images/redlentilsdish.jpg",
    ),
    Vegetable(
      name: "Kidney Beans",
      imgUrl: "assets/images/kidneybeans.jpg",
      medicinal:
          "Kidney beans offer numerous health benefits, including high protein and fiber content that supports muscle growth, digestion, and weight management. They help regulate blood sugar levels and promote heart health.",
      image: "assets/images/kidneydish.jpg",
      text: "Kidney Beans Curry Recipe:",
      title:
          "Soak one cup of dried kidney beans overnight, then drain and boil them until soft, or use one can of kidney beans, rinsed and drained. Heat two tablespoons of oil in a pan and sauté one finely chopped onion until golden. Add one tablespoon of ginger-garlic paste and cook for a minute until fragrant. Stir in two chopped tomatoes along with one teaspoon each of cumin, coriander, turmeric, and garam masala, and cook until the mixture thickens and oil starts to separate. Add the cooked kidney beans and about one to one-and-a-half cups of water, depending on how thick you want the curry. Let it simmer on low heat for 15–20 minutes so the flavors come together. Season with salt to taste, garnish with chopped fresh cilantro, and serve hot with rice or roti.",
      extraimage: "assets/images/kidneydish.jpg",
    ),
    Vegetable(
      name: "Black Gram",
      imgUrl: "assets/images/blackgram.jpg",
      medicinal:
          "Black Gram as sweet and astringent in taste, with a cooling energy and a sweet post-digestive effect. It gently nourishes the body while promoting internal balance. ",
      image: "assets/images/blackme.jpg",
      text: "black gram ladoo Recipe:",
      title:
          "Dry roast one cup of whole or split black gram (urad dal) on low heat until golden and aromatic, then let it cool completely. Grind the roasted dal into a fine powder using a mixer or blender. In the same pan, dry roast 1/2 cup of grated or shredded coconut (optional) for extra flavor. In a bowl, mix the ground dal powder with 3/4 cup of powdered jaggery or sugar, the roasted coconut, and 1/4 teaspoon of cardamom powder. Heat 2 to 4 tablespoons of ghee and pour it over the mixture while it’s still warm. Mix everything thoroughly, then take small portions and shape them into tight, round ladoos using your hands. Let them cool and set, then store in an airtight container for up to a week.",
      extraimage: "assets/images/blackgramdish.jpg",
    ),
    Vegetable(
      name: "Groundnut",
      imgUrl: "assets/images/groundnut.jpg",
      medicinal:
          "Groundnuts (peanuts) provide numerous health benefits, including supporting heart health, aiding in weight management, and regulating blood sugar levels. ",
      image: "assets/images/groundme.jpg",
      text: "groundnut snack recipe",
      title:
          "Dry roast one cup of raw peanuts in a pan on medium heat until golden and aromatic, then let them cool. Rub them between your hands to remove the skins, if desired. In the same pan, heat a teaspoon of oil and add mustard seeds, curry leaves, and one dried red chili. Once they splutter, add the peanuts back in with 1/4 teaspoon turmeric, 1/4 teaspoon red chili powder, and salt to taste. Mix well and roast for another 1–2 minutes so the spices coat the peanuts evenly. Cool completely and store in an airtight container for a crunchy, flavorful snack.",
      extraimage: "assets/images/grounddish.jpg",
    ),
    Vegetable(
      name: "Toor Dal",
      imgUrl: "assets/images/toordal.jpg",
      medicinal:
          "Toor Dal is an excellent source of dietary fiber, which aids in digestion and helps maintain regular bowel movements. The high fiber content ensures prolonged satiety, aiding in effective",
      image: "assets/images/toorme.jpg",
      text: "toor dal broth Recipe:",
      title:
          "Rinse 1/2 cup of toor dal (split pigeon peas) thoroughly, then boil it with 3 cups of water, a pinch of turmeric, and a few drops of oil until soft and mushy. Mash the cooked dal or blend it slightly to make a smooth broth. In a pan, heat 1 teaspoon of ghee or oil, add 1/2 teaspoon mustard seeds, a pinch of cumin, a few curry leaves, and a pinch of asafoetida (hing). Once the spices sizzle, pour in the dal broth and add salt to taste, along with a dash of black pepper or a squeeze of lemon juice. Simmer for 5–10 minutes to let the flavors blend. Serve hot as a light soup or over rice for a simple meal.",
      extraimage: 'assets/images/toordish.jpg',
    ),
    Vegetable(
      name: "Mung Beans",
      imgUrl: "assets/images/mungbeans.jpg",
      medicinal:
          "Mung beans are high in nutrients and antioxidants, which may provide health benefits. They may help protect against heatstroke, aid digestive health, promote weight loss, and lower LDL cholesterol, among other benefits. ",
      image: "assets/images/mungme.jpg",
      text: "mung beans snack recipe:",
      title:
          "Soak 1 cup of whole green mung beans overnight, then drain and let them sprout for a day if you prefer extra crunch and nutrition. Boil the sprouted or soaked mung beans in lightly salted water for about 5–7 minutes until just tender but not mushy, then drain well. In a pan, heat 1 teaspoon of oil and add mustard seeds, a pinch of cumin, and a few curry leaves. Add the boiled mung beans, a pinch of turmeric, salt, and chili powder to taste, and sauté for 2–3 minutes. Turn off the heat and mix in chopped onions, tomatoes, green chilies, and fresh lemon juice. Garnish with coriander leaves and enjoy warm or at room temperature as a light, protein-rich snack.",
      extraimage: "assets/images/mungdish.jpg",
    ),
    Vegetable(
      name: "Green Peas",
      imgUrl: "assets/images/greenpeas.jpg",
      medicinal:
          "Green Peas health benefits includes fighting inflammation, suppressing appetite, excellent source of protein, promoting digestion, reducing cardiac risk, support eye health, promoting weight loss",
      image: "assets/images/greenpeasme.jpg",
      text: "Green Peas Snack Recipe:",
      title:
          "Boil 1 cup of fresh or frozen green peas in lightly salted water for 3–5 minutes until just tender, then drain and set aside. In a pan, heat 1 teaspoon of oil and add 1/2 teaspoon mustard seeds, a pinch of cumin, and a few curry leaves. Once they splutter, add the boiled peas along with a pinch of turmeric, salt, and red chili powder to taste. Sauté for 2–3 minutes so the spices coat the peas well. Turn off the heat and squeeze in some lemon juice for a fresh, tangy flavor. Serve warm or pack it as a light, protein-rich snack.",
      extraimage: "assets/images/greenpeasdish.jpg",
    ),
    Vegetable(
      name: "White Peas",
      imgUrl: "assets/images/whitepeas.jpg",
      medicinal:
          "Zinc is an antioxidant found in dried white peas that helps combat free radicals, prevent cancer, promote hair development, keep skin moist, build immunity, and protect the heart. It has a high concentration of this nutrient.",
      image: "assets/images/white[easme.jpg",
      text: "White Peas curry Recipe:",
      title:
          "Soak 1 cup of dried white peas overnight, then pressure cook them with 1/4 teaspoon turmeric and enough water until soft but not mushy. In a pan, heat 2 tablespoons of oil and sauté 1 chopped onion until golden, then add 1 tablespoon ginger-garlic paste and cook for a minute. Add 2 chopped tomatoes and cook until soft, then mix in 1 teaspoon each of cumin, coriander, garam masala, and red chili powder. Add the cooked peas along with some of the cooking water to get your desired curry consistency. Simmer the curry for 10–15 minutes, mashing some peas for a thicker texture, and season with salt to taste. Garnish with chopped cilantro and serve hot with rice, roti, or as part of chaat.",
      extraimage: "assets/images/whitepeasdish.jpg",
    ),
    Vegetable(
      name: "Black Chana",
      imgUrl: "assets/images/blackchannaa.jpg",
      medicinal:
          "The antioxidants present in black chana help combat oxidative stress, further supporting immune health. Black chana is highly regarded in Indian cuisine for its high protein and fibre content.",
      image: "assets/images/blackchme.jpg",
      text: "Black Chana snack Recipe:",
      title:
          "Soak 1 cup of black channa (black chickpeas) overnight, then drain and boil them until tender but firm, about 20–25 minutes. Drain the cooked channa well and pat them dry with a kitchen towel. Heat 1 tablespoon of oil in a pan and add the channa along with 1/2 teaspoon chaat masala, 1/2 teaspoon roasted cumin powder, 1/4 teaspoon red chili powder, and salt to taste. Roast the spiced channa on medium heat, stirring frequently, until they become crispy and slightly browned. Turn off the heat and squeeze in fresh lemon juice, tossing well to coat. Let them cool completely before enjoying this crunchy, protein-packed snack anytime!",
      extraimage: "assets/images/blackchannadish.jpg",
    ),
    Vegetable(
      name: "White Chana",
      imgUrl: "assets/images/whitechanna.jpg",
      medicinal:
          "Seeds rich in proteins, also contain an oil ( 4 – 5 %). Ailment Treated: Germinating seeds are used as prophylactic against deficiency diseases, scurvy in particular.",
      image: "assets/images/whitechanname.jpg",
      text: "White Chana snack Recipe:",
      title:
          "Soak 1 cup of white chana (white chickpeas) overnight, then boil or pressure cook them until tender but still firm. Drain the cooked chana and pat dry with a kitchen towel to remove excess moisture. Heat 1 tablespoon of oil in a pan and add the chana along with 1/2 teaspoon chaat masala, 1/2 teaspoon roasted cumin powder, 1/4 teaspoon red chili powder, and salt to taste. Roast the spiced chana on medium heat, stirring often, until they turn slightly crispy and golden. Turn off the heat, squeeze some fresh lemon juice over them, and toss well to combine. Let them cool before serving this crunchy, flavorful, and protein-rich snack.",
      extraimage: "assets/images/whitechannadish.jpg",
    ),
    Vegetable(
      name: "Banana",
      imgUrl: "assets/images/banana.jpg",
      medicinal:
          "Banana is one of the most nutritious fruit that provides valuable health benefits to the body and sure various ailments including diarrhoea, wounds, stomach ulcer, diabetes, heart burn, inflammation and others. There are many healing and medicinal properties of bananas. ",
      image: "assets/images/bananacakeme.jpg",
      text: "Banana pancake Recipe:",
      title:
          "Mash 1 or 2 ripe bananas in a bowl until smooth, then add 1 cup of all-purpose flour, 1 tablespoon sugar, 1 teaspoon baking powder, and a pinch of salt. Mix in 1 cup of milk and 1 beaten egg, stirring until you get a smooth batter; add a splash of vanilla extract if you like. Heat a non-stick pan over medium heat and lightly grease it with butter or oil. Pour small ladles of batter onto the pan and cook each pancake for 2–3 minutes until bubbles form on top and edges look set. Flip carefully and cook the other side for another 1–2 minutes until golden brown. Serve warm with maple syrup, honey, or fresh fruits for a tasty breakfast or snack.",
      extraimage: "assets/images/bananacakeme.jpg",
    ),
    Vegetable(
      name: "Papaya",
      imgUrl: "assets/images/papaya.jpg",
      medicinal:
          "Papaya is rich in flavonoids and anthocyanins, which are powerful antioxidants responsible for neutralizing free radicals.including reduced oxidative stress, improved cardiovascular health, and enhanced skin protection.",
      image: "assets/images/papayame.jpg",
      text: "Papaya Juice Recipe:",
      title:
          "Peel and chop one ripe papaya into small pieces, removing the seeds. Blend the papaya chunks with about one cup of cold water and a teaspoon of honey or sugar if you like it sweeter. Add a squeeze of lemon or lime juice for a fresh tangy twist, then blend again until smooth. Serve chilled over ice for a refreshing and healthy drink!",
      extraimage: "assets/images/papayadish.jpg",
    ),
    Vegetable(
      name: "Guava",
      imgUrl: "assets/images/guava.jpg",
      medicinal:
          "Guava is used as a natural digestive, coolant, and antioxidant in Ayurveda. Its leaves reduce gut infections and diarrhea, while the fruit soothes heat and inflammation.",
      image: "assets/images/guavame.jpg",
      text: "Guava Juice Recipe:",
      title:
          "Wash and chop 2 ripe guavas, removing any seeds if you prefer a smoother juice. Blend the guava pieces with 1 to 1.5 cups of cold water and a little sugar or honey to taste. For extra zing, add a squeeze of lemon or lime juice and blend again. Strain if you want a smooth texture, then serve chilled over ice for a delicious, vitamin-packed drink!",
      extraimage: "assets/images/guavadish.jpg",
    ),
    Vegetable(
      name: "Sapota",
      imgUrl: "assets/images/sapota.jpg",
      medicinal:
          "The benefits of eating sapota fruit are improved digestion, boosted immunity and enhanced skin health. Its high fibre content promotes gut health and prevents constipation. Sapota is also rich in natural sugars, which makes it an excellent energy booster.",
      image: "assets/images/sapotame.jpg",
      text: "Sapota Smoothie Recipe:",
      title:
          "Peel and chop 2 ripe sapotas (chikoo), removing any seeds. Blend the sapota pieces with 1 cup of milk (or your favorite plant-based milk), 1 tablespoon honey or jaggery, and a pinch of cardamom powder for extra flavor. Add a few ice cubes and blend until smooth and creamy. Pour into a glass and enjoy this naturally sweet, comforting smoothie chilled!",
      extraimage: "assets/images/sapotadish.jpg",
    ),
    Vegetable(
      name: "Watermelon",
      imgUrl: "assets/images/watermelon.jpg",
      medicinal:
          "Watermelon is a juicy and refreshing fruit many enjoy, especially during the summer.  watermelon is a cooling food that can help balance the body’s Pitta dosha, and studies have shown that it has anti-inflammatory, anti-cancer, and antioxidant properties.",
      image: "assets/images/watermelonme.jpg",
      text: "Watermelon Juice Recipe:",
      title:
          "Cut about 3 cups of seedless watermelon into chunks and remove any seeds if needed. Blend the watermelon pieces with a squeeze of lime or lemon juice for a zesty kick. If you like it sweeter, add a little honey or sugar, then blend again. Serve chilled over ice for a hydrating and naturally sweet summer drink!",
      extraimage: "assets/images/watermelondish.jpg",
    ),
    Vegetable(
      name: "Jackfruit",
      imgUrl: "assets/images/jackfruit.jpg",
      medicinal:
          " jackfruit for its antibacterial, anti-inflammatory, anti-diabetes, to increase immunity, as an antioxidant, to reduce fever, constipation, and as a remedy for snake bites. ",
      image: "assets/images/jackme.jpg",
      text: "Jackfruit Smoothie Recipe:",
      title:
          "Remove the seeds and chop 1 cup of ripe jackfruit flesh into small pieces. Blend the jackfruit with 1 cup of milk (dairy or plant-based), 1 tablespoon of honey or jaggery, and a pinch of cardamom powder for warm flavor. Add some ice cubes and blend until smooth and creamy. Pour into a glass and enjoy this sweet, tropical smoothie chilled!",
      extraimage: "assets/images/jackdish.jpg",
    ),
    Vegetable(
      name: "Pineapple",
      imgUrl: "assets/images/pineapple.jpg",
      medicinal:
          " Pineapple is a herbal remedy for Nausea and Vomiting during Morning Sickness. Pineapple is a natural Laxative herb. It eases the stomach and the intestinal lining.",
      image: "assets/images/pineappleme.jpg",
      text: "Pineapple Juice Recipe:",
      title:
          "Peel and chop one medium pineapple into chunks, removing the core and any eyes. Blend the pineapple pieces with about 1/2 to 1 cup of cold water to your preferred consistency. Add a little sugar or honey if you want it sweeter, and a squeeze of lime juice for extra zing. Blend again, strain if you like it smooth, then serve chilled over ice for a refreshing tropical drink!",
      extraimage: "assets/images/pineappledish.jpg",
    ),
    Vegetable(
      name: "Pomegranate",
      imgUrl: "assets/images/pomegranate.jpg",
      medicinal:
          "The pomegranate has been used in natural and holistic medicine to treat sore throats, coughs, urinary infections, digestive disorders, skin disorders, arthritis, and to expel tapeworms.",
      image: "assets/images/pomeme.jpg",
      text: "Pomegranate Juice Recipe:",
      title:
          "Cut one large pomegranate in half and gently deseed it over a bowl to collect all the arils (seeds). Blend the arils in a blender for a few seconds, then strain the juice through a fine mesh sieve to remove the pulp. Add a little sugar or honey if you like it sweeter, and a splash of lemon juice for brightness. Serve chilled over ice for a delicious and antioxidant-packed drink!",
      extraimage: "assets/images/pomedish.jpg",
    ),
    Vegetable(
      name: "Muskmelon",
      imgUrl: "assets/images/muskmelon.jpg",
      medicinal:
          "Muskmelon is a cure for Stomach Problems and Acid Reflux. Muskmelon is packed with Vitamins and Folic acid. These nutrients are needed for Skin health. Muskmelon makes the skin soft and glowing. The presence of Vitamin K, Vitamin B and Vitamin E in Muskmelon rejuvenates and hydrates the skin.",
      image: "assets/images/muskmelomme.jpg",
      text: "Muskmelon Juice Recipe:",
      title:
          "Cut ripe muskmelon into chunks, removing the seeds and rind. Blend the muskmelon pieces with about 1/2 cup of cold water or chilled milk for creaminess. Add a little honey or sugar if you want it sweeter, and a squeeze of lemon for a fresh twist. Blend again, strain if you like, then serve chilled over ice for a cooling summer drink!",
      extraimage: "assets/images/muskmelondish.jpg",
    ),
    Vegetable(
      name: "Grapes",
      imgUrl: "assets/images/grapes.jpg",
      medicinal:
          "Rich in vitamin C and K, strengthening immunity against infections. Enhances brain function – Improves cognitive abilities and memory due to its high antioxidant content. Supports heart health – Helps lower blood pressure and cholesterol, promoting cardiovascular well-being.",
      image: "assets/images/grapesme.jpg",
      text: "Grape Juice Recipe:",
      title:
          "Wash 2 cups of fresh grapes thoroughly and remove the stems. Blend the grapes until smooth, then strain the juice through a fine mesh sieve or cheesecloth to remove the pulp. Add a little sugar or honey if you want it sweeter, and a squeeze of lemon juice for brightness. Serve chilled over ice for a naturally sweet and hydrating drink!",
      extraimage: "assets/images/grapesdish.jpg",
    ),
    Vegetable(
      name: "Lemon",
      imgUrl: "assets/images/lemon.jpg",
      medicinal:
          "Lemon is used to treat scurvy, a condition caused by not having enough vitamin C. Lemon is also used for the common cold and flu, H1N1 (swine) flu, ringing in the ears (tinnitus), Meniere's disease, and kidney stones.",
      image: "assets/images/lemonme.jpg",
      text: "Lemon juice recipe:",
      title:
          "Squeeze the juice of 2 fresh lemons into a glass, removing any seeds. Add about 1 to 1.5 cups of cold water and sweeten with sugar or honey to taste. Stir well, add ice if you like, and enjoy a tangy, thirst-quenching drink!",
      extraimage: "assets/images/lemondish.jpg",
    ),
    Vegetable(
      name: "Orange",
      imgUrl: "assets/images/orange.jpg",
      medicinal:
          "The fruit of the orange has been shown to be cooling, digestive and carminative (relieves wind), and has tonic properties. It was traditionally used in asthma, to reduce vomiting, to purify the blood, for coughs, fevers, thirst, hiccoughs and for indigestion.",
      image: "assets/images/orangeme.jpg",
      text: "Orange Juice Recipe:",
      title:
          "Peel and segment 3–4 ripe oranges, removing any seeds. Blend the orange segments until smooth, then strain if you prefer pulp-free juice. Pour into a glass, chill with ice if you like, and enjoy a naturally sweet and tangy drink!",
      extraimage: "assets/images/orangedish.jpg",
    ),
    Vegetable(
      name: "Custard Apple",
      imgUrl: "assets/images/custardapple.jpg",
      medicinal:
          "Custard apple, or Sitaphal, is a delicious fruit praised in Ayurveda for boosting energy, immunity, and digestion. Rich in vitamins, minerals, and natural sugars, it helps fight fatigue, supports respiratory health, and balances Vata",
      image: "assets/images/custardme.jpg",
      text: "Custard Apple Smoothie Recipe:",
      title:
          "Scoop out the flesh of one ripe custard apple (sitaphal), removing any seeds carefully. Blend the custard apple pulp with about 1/2 cup of chilled milk or water until smooth. Add a little honey or sugar if you want it sweeter, and a pinch of cardamom powder for extra flavor. Serve chilled for a naturally sweet, nutritious, and creamy drink!",
      extraimage: "assets/images/custarddish.jpg",
    ),
    Vegetable(
      name: "Tamarind",
      imgUrl: "assets/images/tamaring.jpg",
      medicinal:
          "Traditional medication systems use tamarind for digestive issues, cold and flu reduction, and wound healing. Some cultures also apply tamarind paste topically for skin conditions. Research suggests tamarind may offer several health benefits, though many studies are small or have used animal models.",
      image: "assets/images/tamarindme.jpg",
      text: "Tamarind sweet recipe:",
      title:
          "Soak 1 cup of tamarind pulp in 1 cup of warm water for 15–20 minutes, then mash and strain to get smooth tamarind juice. In a pan, combine the tamarind juice with 1 cup jaggery or brown sugar, 1 teaspoon roasted cumin powder, 1/2 teaspoon ginger powder, and a pinch of salt. Cook the mixture on medium heat, stirring constantly, until it thickens to a syrupy consistency (about 10–15 minutes). Add a pinch of red chili powder for a little heat, if you like. Let the chutney cool, then transfer it to a jar. Use it as a sweet and tangy dip for snacks like samosas, pakoras, or chaat!",
      extraimage: "assets/images/tamaringdish.jpg",
    ),
    Vegetable(
      name: "Mango",
      imgUrl: "assets/images/mango.jpg",
      medicinal:
          "Sweet mango is a great aphrodisiac and improves immunity and strength. Overall, it has a very nourishing and calming effect on the body. Mango tree bark has astringent properties which make it useful to pacify kapha and pitta disorders. ",
      image: "assets/images/mangome.jpg",
      text: "Mango Smoothie Recipe:",
      title:
          "Peel and chop 1–2 ripe mangoes into chunks, removing the seed. Blend the mango pieces with about 1/2 to 1 cup of cold water or milk, depending on your preferred thickness. Add a little sugar or honey if you want it sweeter, and a squeeze of lemon juice for a fresh twist. Blend again, pour into a glass, and serve chilled for a delicious tropical drink!",
      extraimage: "assets/images/mangodish.jpg",
    ),
    Vegetable(
      name: "Jasmine",
      imgUrl: "assets/images/jasmine.jpg",
      medicinal:
          "jasmine flower or essential jasmine oil, jasmine can be used as an aphrodisiac, a sedative, an antiseptic, antidepressant, antispasmodic, and analgesic.jasmine has been used as an aphrodisiac and as a means to increase immunity and fight fever.",
      image: "assets/images/jasmineme.jpg",
      text: "jasmine oil skincare:",
      title:
          "Start by taking two tablespoons of jojoba oil or almond oil in a small clean bottle. Add five drops of jasmine essential oil to the carrier oil. If you want extra nourishment, add two drops of vitamin E oil as well. Close the bottle tightly and shake it gently to mix all the oils together. To use, apply two to three drops of the serum onto clean skin and massage it gently into your face and neck. It’s best to use this serum at night for deep moisturizing and soothing benefits. You can use it daily or whenever your skin needs a boost and enjoy the lovely jasmine fragrance.",
      extraimage: "assets/images/jasminedish.jpg",
    ),
    Vegetable(
      name: "Rose",
      imgUrl: "assets/images/rose.jpg",
      medicinal:
          "It is also used for medicinal purpose. Rose possesses Calming, Antidepressant and Sedative properties. It is used for aromatherapy which soothes the nerves and relaxes the Mind. It provides relief from conditions like Insomnia, Stress, Depression and Nervous Tension.",
      image: "assets/images/roseme.jpg",
      text: "rose water making:",
      title:
          "Start by picking about 1 cup of fresh, fragrant rose petals, making sure they’re free of pesticides. Rinse the petals gently with water to clean them. Place the petals in a large pot and add just enough distilled or filtered water to cover them halfway. Cover the pot with a lid and simmer on low heat for about 20–30 minutes until the petals lose their color and the water turns pink. Let the mixture cool, then strain the rose water into a clean, sterilized bottle using a fine mesh sieve or cheesecloth. Store the rose water in the refrigerator and use it as a natural toner or refreshing facial mist.",
      extraimage: "assets/images/rosewater.jpg",
    ),
    Vegetable(
      name: "Marigold",
      imgUrl: "assets/images/marigold.jpg",
      medicinal:
          "Marigold is an excellent herb for cuts and wounds. It aids effectively in healing in slow healing Wounds. It is used in the treatment of minor burns. Anti-inflammatory properties of marigold make this herb efficient in treating allergies like eczema and bruising.",
      image: "assets/images/marigoldme.jpg",
      text: "Marigold for decoration:",
      title:
          "Marigold flowers are fantastic for decoration because of their bright, vibrant colors—usually orange and yellow—that instantly brighten any space. They’re commonly used in garlands, wreaths, and floral arrangements for festivals, weddings, and religious ceremonies, especially in South Asia. You can string them into long garlands to hang on doorways or walls, or scatter loose petals to create colorful patterns and rangolis. Marigolds also hold symbolic meaning, often representing positivity, protection, and good luck, which makes them a popular choice for auspicious events. Their sturdy petals and long-lasting freshness make them perfect for both indoor and outdoor decorations. Plus, their subtle, earthy scent adds a natural fragrance to the setting.",
      extraimage: "assets/images/marigolddish.jpg",
    ),
    Vegetable(
      name: "Chrysanthemum",
      imgUrl: "assets/images/chrysenthamum.jpg",
      medicinal:
          "Chrysanthemum is known to soothe indigestion, bloating, and acidity. The herb helps detoxify the body, supporting liver function and improving overall digestive health. Thanks to its anti-inflammatory and antibacterial properties, Chrysanthemum is often used in skincare.",
      image: "assets/images/chrysenthemumme.jpg",
      text: "Chrysanthemum for decoration:",
      title:
          "Chrysanthemums are wonderful for decoration thanks to their wide range of colors and shapes, from fluffy pom-poms to delicate daisies. They’re popular in floral arrangements, centerpieces, and bouquets because they add fullness and vibrant color. Chrysanthemums are often used in festivals and ceremonies around the world, symbolizing happiness, longevity, and optimism. You can use them fresh in vases or as cut flowers to brighten up any room, or dry them to make lasting wreaths and potpourris. Their sturdy petals and long vase life make them ideal for both formal and casual decor. Plus, chrysanthemums pair beautifully with other flowers like roses, lilies, and carnations for mixed arrangements.",
      extraimage: "assets/images/chrysenthemumdish.jpg",
    ),
    Vegetable(
      name: "Lotus",
      imgUrl: "assets/images/lotus.jpg",
      medicinal:
          "Used in cosmetic treatments, spleen, kidney, heart disorders, sexual weakness, leukorrhea in women, and diarrhea. Digestive Aid: Soothes the digestive system and alleviates conditions like diarrhea and indigestion. Cardiovascular Support: Regulates blood pressure and strengthens the heart.",
      image: "assets/images/lotusme.jpg",
      text: "lotus seed makhana recipe:",
      title:
          "Start by dry roasting 1 cup of lotus seeds (makhana) in a pan on medium heat until they turn crisp and slightly golden. In another small pan, heat 1 teaspoon of ghee or oil and add a pinch of salt, black pepper, and a pinch of chaat masala or your favorite spices. Toss the roasted makhana in the spiced ghee mixture so the flavors coat them evenly. Continue roasting for another 2–3 minutes to let the spices stick well. Turn off the heat and let the snack cool completely before serving. Enjoy this crunchy, healthy, and protein-rich snack anytime, perfect for evenings or as a light munching option.",
      extraimage: "assets/images/lotusdish.jpg",
    ),
    Vegetable(
      name: "Mullai",
      imgUrl: "assets/images/mullai.jpg",
      medicinal:
          "Mullai flower, a beloved jasmine variety, is treasured in South Indian culture for its intense, sweet fragrance and delicate white blooms. These flowers are widely used in pooja rituals, wedding ceremonies, and as hair adornments.",
      image: "assets/images/mullaime.jpg",
      text: "Mullai for decoration:",
      title:
          "Mullai, or jasmine flowers, are prized for their delicate white petals and sweet fragrance. They are commonly strung into garlands worn in hair or used to decorate homes during festivals and weddings. These fragrant garlands are also used in religious ceremonies to adorn idols and altars. Their natural scent adds a refreshing and calming atmosphere to any space. Because mullai flowers are delicate, they are best used fresh and often combined with other flowers like roses or marigolds for vibrant decorations.",
      extraimage: "assets/images/mullaidish.jpg",
    ),
    Vegetable(
      name: "Sunflower",
      imgUrl: "assets/images/sunflower.jpg",
      medicinal:
          "sunflowers are used as a means for providing us with both oil and food. As well as being a food source that we can use, the seeds are also loved by many small birds and especially songbirds, giving them a useful energy source. The sunflower is eaten and enjoyed by other animals too.",
      image: "assets/images/sunflowerme.jpg",
      text: "Sunflower oil preparation:",
      title:
          "Sunflower seeds are first cleaned to remove dirt and impurities. Then, the seeds are roasted or heated slightly to enhance oil extraction. After that, the seeds are crushed or pressed using mechanical presses to extract the oil. The extracted oil is then filtered to remove any solid particles and impurities. Finally, the oil may be refined, bleached, and deodorized before packaging for cooking or other uses.",
      extraimage: "assets/images/sumflowerdish.jpg",
    ),
    Vegetable(
      name: "Royal Jasmine",
      imgUrl: "assets/images/royaljasmine.jpg",
      medicinal:
          "Jasmine is used to treat cough, nervous exhaustion, depression, laryngitis, labor pains, uterus related disorders, and skin problems such as sensitivity and dryness. It is also used against muscular sprains.",
      image: "assets/images/royaljasmineme.jpg",
      text: "royal jasmine decoration:",
      title:
          "Royal jasmine, known for its rich fragrance and elegant white blossoms, is perfect for luxurious decorations. It’s often used to make intricate garlands for weddings, special ceremonies, and festive occasions, symbolizing purity and grace. The flowers can be woven into beautiful floral strings to decorate doorways, pillars, and even bridal hairdos. Their sweet scent creates a calming, refreshing atmosphere, enhancing any space’s ambiance. Because the blooms are delicate, they’re best used fresh and often combined with other flowers like roses or marigolds for a regal look.",
      extraimage: "assets/images/royaljasminedish.jpg",
    ),
    Vegetable(
      name: "Crossandra",
      imgUrl: "assets/images/crossandra.jpg",
      medicinal:
          "Crossandra's vibrant colors enhance any garden, adding beauty and visual appeal. This plant improves air quality by filtering toxins, promoting respiratory health. Attracts pollinators like bees and butterflies, supporting local biodiversity and garden productivity.",
      image: "assets/images/crossandrame.jpg",
      text: "Crossandra for decoration:",
      title:
          "Crossandra flowers are bright and beautiful, often used in decorations for their vibrant orange or yellow colors. They’re popular in South Indian traditions for making flower garlands worn in hair or used to adorn temples and festive spaces. The sturdy petals hold up well, making them great for long-lasting floral strings or loose petal decorations. Crossandra can also be combined with jasmine or marigold flowers to create colorful, fragrant arrangements. Their cheerful hues add warmth and brightness to any celebration or everyday decor.",
      extraimage: "assets/images/crossandradish.jpg",
    ),
    Vegetable(
      name: "Hibiscus",
      imgUrl: "assets/images/hibiscus.jpg",
      medicinal:
          "Herbalists have used hibiscus for centuries to support overall health, reduce inflammation, improve cardiovascular wellness, and even enhance skin health. Its versatility and potency make it a favorite for those seeking natural remedies that offer both preventive and therapeutic benefits.",
      image: "assets/images/hibiscusme.jpg",
      text: "Benefit for hair:",
      title:
          "To make hibiscus oil, fresh or dried hibiscus flowers and leaves are infused in a carrier oil like coconut, sesame, or almond oil. The flowers are often crushed or ground to release their nutrients before being mixed with the oil. This mixture is then gently heated or left to steep for several days to extract the hibiscus’s benefits. Hibiscus oil is known to promote hair growth, reduce dandruff, and add shine and softness to hair. After straining, the oil is ready to be used for scalp massages or as a natural hair treatment.",
      extraimage: "assets/images/hibiscusdish.jpg",
    ),
    Vegetable(
      name: "Damask Rose",
      imgUrl: "assets/images/damaskrose.jpg",
      medicinal:
          "Damask Rose offers medicinal benefits, including anti-inflammatory and antioxidant properties. Its soothing aroma reduces stress and anxiety, promoting relaxation and well-being. Versatile in gardens and arrangements, Damask Roses attract pollinators and require minimal care.",
      image: "assets/images/damaskme.jpg",
      text: "Benefit for skin",
      title:
          "Prepared as floral water, damask rose benefits skin by toning and hydrating it. It acts as a natural antiseptic. This excellent skin tonic rejuvenates tired skin, helps balance skin conditions and works to heal wounds.",
      extraimage: "assets/images/damaskdish.jpg",
    ),
  ];
  List<Vegetable> filteredVegetables = [];

  @override
  void initState() {
    super.initState();
    filteredVegetables = allVegetables;
  }

  void _filterVegetables(String query) {
    final q = query.toLowerCase();
    setState(() {
      filteredVegetables = allVegetables.where((veg) {
        return veg.name.toLowerCase().contains(q);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tricks and Tips')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search vegetables...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: _filterVegetables,
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: filteredVegetables.length,
              itemBuilder: (context, index) {
                final veg = filteredVegetables[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(veg.imgUrl),
                      onBackgroundImageError: (_, __) =>
                          const Icon(Icons.image_not_supported),
                    ),
                    title: Text(
                      veg.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      veg.medicinal.length > 50
                          ? '${veg.medicinal.substring(0, 50)}...'
                          : veg.medicinal,
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () => _openDetailPage(veg),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _openDetailPage(Vegetable veg) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => VegetableDetailPage(vegetable: veg)),
    );
  }
}

class VegetableDetailPage extends StatelessWidget {
  final Vegetable vegetable;

  const VegetableDetailPage({super.key, required this.vegetable});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(vegetable.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(vegetable.imgUrl),
                onBackgroundImageError: (_, __) =>
                    const Icon(Icons.image_not_supported, size: 50),
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              "Health Benefits:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              vegetable.medicinal,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 24),

            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(vegetable.image),
                  fit: BoxFit.cover,
                  onError: (_, __) {},
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(0.3),
                ),
                child: Center(
                  child: Text(
                    vegetable.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            Text(
              vegetable.title,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
