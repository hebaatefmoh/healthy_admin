import 'package:flutter/material.dart';
import 'package:myhealthyfood_admin/add_items/add_items_model.dart';
import 'package:myhealthyfood_admin/resources/assets_manager.dart';

List<Food> foods = [



  Food(
    type: 'Snack',
    typear: 'السناك',

    nameAr: 'زبادي طبيعي',
    nameEn: 'GreakYougrt ',
    image: ImageAssets.GreekYogurt,
    descriptionAr: 'الزبادي الطبيعي هو مصدر رائع للبروتين والبكتيريا النافعة للجهاز الهضمي.',
    descriptionEn: 'Plain yogurt is an excellent source of protein and beneficial bacteria for the digestive system.',
    nutritionalInfoAr: {'calories': 100, 'protein': 10, 'fat': 0, 'carbs': 15},
    nutritionalInfoEn: {'calories': 100, 'protein': 10, 'fat': 0, 'carbs': 15},
    id: '1',
    price: '100',
    offerprice: '80',
   // id: '31',
  ),
  Food(
    type: 'Fruit',
    nameAr: 'توت',
    nameEn: 'Blueberries',
    image: ImageAssets.toot,
    descriptionAr: 'التوت هو فاكهة غنية بالمضادات الأكسدة والفيتامينات الضرورية لصحة الجسم.',
    descriptionEn: 'Blueberries are rich in antioxidants and essential vitamins for overall health.',
    nutritionalInfoAr: {'calories': 42, 'protein': 1, 'fat': 0, 'carbs': 11},
    nutritionalInfoEn: {'calories': 42, 'protein': 1, 'fat': 0, 'carbs': 11},
   // id: '32',
    id: '2',
    price: '120',
    offerprice: '90',
    typear: 'الفاكهه',
  ),
  // Food(
  //   type: 'Dinner',
  //   nameAr: 'سلطة الفاكهة',
  //   nameEn: 'FruitSalad',
  //   image: ImageAssets.fruitSalad,
  //   descriptionAr: 'سلطة الفاكهة هي وجبة منعشة ولذيذة تحتوي على مزيج من الفواكه الملونة.',
  //   descriptionEn: 'Fruit salad is a refreshing and delicious meal with a mix of colorful fruits.',
  //   nutritionalInfoAr: {'calories': 70, 'protein': 1, 'fat': 0, 'carbs': 18},
  //   nutritionalInfoEn: {'calories': 70, 'protein': 1, 'fat': 0, 'carbs': 18},
  //   id: '33',
  // ),
  Food(
    type: 'Snack',
    nameAr: 'عصير الأناناس',
    nameEn: 'PineappleJuice',
    image: ImageAssets.pineappleJuice,
    descriptionAr: 'عصير الأناناس الطازج يحتوي على العديد من الفيتامينات والمواد المضادة للالتهابات.',
    descriptionEn: 'Fresh pineapple juice is rich in vitamins and anti-inflammatory compounds.',
    nutritionalInfoAr: {'calories': 80, 'protein': 1, 'fat': 0, 'carbs': 20},
    nutritionalInfoEn: {'calories': 80, 'protein': 1, 'fat': 0, 'carbs': 20},
    id: '1',
    price: '200',
    offerprice: '70',
    //id: '34',
    typear: 'السناك',
  ),
  Food(
    type: 'Fruit',
    nameAr: 'مشمش',
    nameEn: 'Apricot',
    image: ImageAssets.apricot,
    descriptionAr: 'المشمش هو فاكهة لذيذة وغنية بالألياف وفيتامين A الضروري لصحة البصر.',
    descriptionEn: 'Apricot is a delicious fruit, rich in fiber and vitamin A essential for eye health.',
    nutritionalInfoAr: {'calories': 17, 'protein': 0, 'fat': 0, 'carbs': 4},
    nutritionalInfoEn: {'calories': 17, 'protein': 0, 'fat': 0, 'carbs': 4},
   // id: '35',
    id: '4',
    price: '50',
    offerprice: '20',
    typear: 'الفاكهه',
  ),
  Food(
    type: 'Snack',
    nameAr: 'شاي أخضر',
    nameEn: 'Green Tea',
    image: ImageAssets.greenTea,
    descriptionAr: 'شاي أخضر غني بالمضادات الأكسدة ويساعد في تعزيز صحة القلب وتقليل مستويات الكولسترول.',
    descriptionEn: 'Green tea is rich in antioxidants and helps promote heart health and reduce cholesterol levels.',
    nutritionalInfoAr: {'calories': 0, 'protein': 0, 'fat': 0, 'carbs': 0},
    nutritionalInfoEn: {'calories': 0, 'protein': 0, 'fat': 0, 'carbs': 0},
   // id: '36'
    // ,
    id: '5',
    price: '20',
    offerprice: '10',
    typear: 'السناك',
  ),
  Food(
    type: 'Dinner',
    nameAr: 'كينوا بالخضار',
    nameEn: 'Vegetable ',
    image: ImageAssets.quinoaSalad,
    descriptionAr: 'كينوا بالخضار هو طبق خفيف وصحي يحتوي على خيارات خضراء متنوعة وكينوا كمصدر للبروتين.',
    descriptionEn: 'Vegetable quinoa is a light and healthy dish with a variety of green options and quinoa as a protein source.',
    nutritionalInfoAr: {'calories': 150, 'protein': 5, 'fat': 3, 'carbs': 27},
    nutritionalInfoEn: {'calories': 150, 'protein': 5, 'fat': 3, 'carbs': 27},
   // id: '37',
    typear: 'العشاء',
    id: '6',
    price: '110',
    offerprice: '95',
  ),
  Food(
    type: 'Fruit',
    nameAr: 'جوز الهند',
    nameEn: 'Coconut',
    image: ImageAssets.coconut,
    descriptionAr: 'جوز الهند هو فاكهة لذيذة ومغذية، يمكن تناولها على شكل لحم أو شراب.',
    descriptionEn: 'Coconut is a delicious and nutritious fruit, can be consumed as meat or as a drink.',
    nutritionalInfoAr: {'calories': 354, 'protein': 3, 'fat': 33, 'carbs': 15},
    nutritionalInfoEn: {'calories': 354, 'protein': 3, 'fat': 33, 'carbs': 15},
    //id: '26',
    typear: 'الفاكهه',
    id: '6',
    price: '60',
    offerprice: '50',
  ),
  Food(
    type: 'Dinner',
    nameAr: 'سلطة الطماطم والخيار',
    nameEn: 'TomatoCucumber ',
    image: ImageAssets.tomatoCucumber,
    descriptionAr: 'سلطة الطماطم والخيار هي وجبة خفيفة ومنعشة تحتوي على خضار طازجة وصلصة لذيذة.',
    descriptionEn: 'Tomato Cucumber Salad is a light and refreshing meal with fresh vegetables and a tasty dressing.',
    nutritionalInfoAr: {'calories': 50, 'protein': 2, 'fat': 1, 'carbs': 10},
    nutritionalInfoEn: {'calories': 50, 'protein': 2, 'fat': 1, 'carbs': 10},
   // id: '27',
    typear: 'العشاء',
    id: '7',
    price: '100',
    offerprice: '80',
  ),
  Food(
    type: 'Snack',
    nameAr: 'مكسرات مشكلة',
    nameEn: 'Mixed Nuts',
    image: ImageAssets.mixedNuts,
    descriptionAr: 'مكسرات مشكلة تعتبر وجبة خفيفة مشبعة وغنية بالدهون الجيدة والبروتين.',
    descriptionEn: 'Mixed Nuts are a satisfying and nutrient-rich snack, high in good fats and protein.',
    nutritionalInfoAr: {'calories': 200, 'protein': 5, 'fat': 18, 'carbs': 8},
    nutritionalInfoEn: {'calories': 200, 'protein': 5, 'fat': 18, 'carbs': 8},
   // id: '28',
    typear: 'السناك',
    id: '9',
    price: '20',
    offerprice: '14',
  ),
  Food(
    type: 'Fruit',
    nameAr: 'عنب',
    nameEn: 'Grapes',
    image: ImageAssets.grapes,
    descriptionAr: 'العنب هو فاكهة لذيذة ومنعشة، تتميز بنكهتها الحلوة والمميزة.',
    descriptionEn: 'Grapes are a delicious and refreshing fruit, known for their sweet and distinctive flavor.',
    nutritionalInfoAr: {'calories': 69, 'protein': 1, 'fat': 0, 'carbs': 18},
    nutritionalInfoEn: {'calories': 69, 'protein': 1, 'fat': 0, 'carbs': 18},
   // id: '29',
    id: '8',
    price: '18',
    offerprice: '15',
    typear: 'الفاكهه',
  ),
  Food(
    type: 'Dinner',
    nameAr: 'صحن الحمص بالطحينة',
    nameEn: 'Hummus Plate',
    image: ImageAssets.hummusPlate,
    descriptionAr: 'صحن الحمص بالطحينة هو طبق خفيف وشهي يحتوي على حمص مع صلصة الطحينة.',
    descriptionEn: 'Hummus Plate with Tahini is a tasty and light dish with chickpeas and tahini sauce.',
    nutritionalInfoAr: {'calories': 180, 'protein': 6, 'fat': 14, 'carbs': 8},
    nutritionalInfoEn: {'calories': 180, 'protein': 6, 'fat': 14, 'carbs': 8},
    id: '10',
    price: '10',
    offerprice: '8',
   // id: '30',
    typear: 'العشاء',
  ),
  Food(
    type: 'Snack',
    nameAr: 'عيش بالزيتون',
    nameEn: 'Olive Bread',
    image: ImageAssets.oliveBread,
    descriptionAr: 'عيش بالزيتون هو نوع لذيذ من الخبز يحتوي على قطع من الزيتون للنكهة.',
    descriptionEn: 'Olive Bread is a delicious type of bread that contains pieces of olives for flavor.',
    nutritionalInfoAr: {'calories': 120, 'protein': 3, 'fat': 5, 'carbs': 15},
    nutritionalInfoEn: {'calories': 120, 'protein': 3, 'fat': 5, 'carbs': 15},
   // id: '22',
    id: '11',
    price: '22',
    offerprice: '20',
    typear: 'السناك',
  ),

  Food(
    type: 'Snack',
    nameAr: 'عصير التفاح الطازج',
    nameEn: 'Fresh Juice',
    image: ImageAssets.freshAppleJuice,
    descriptionAr: 'عصير التفاح الطازج هو مشروب منعش ولذيذ مستخرج من التفاح الطازج.',
    descriptionEn: 'Fresh Apple Juice is a refreshing and delicious beverage extracted from fresh apples.',
    nutritionalInfoAr: {'calories': 80, 'protein': 0, 'fat': 0, 'carbs': 20},
    nutritionalInfoEn: {'calories': 80, 'protein': 0, 'fat': 0, 'carbs': 20},
   // id: '24',
    typear: 'السناك',
    id: '12',
    price: '34',
    offerprice: '28',
  ),
  Food(
    type: 'Fruit',
    nameAr: 'تمر',
    nameEn: 'Dates',
    image: ImageAssets.dates,
    descriptionAr: 'التمر هو فاكهة طيبة ومغذية، تعتبر مصدرًا جيدًا للطاقة والفيتامينات.',
    descriptionEn: 'Dates are a delicious and nutritious fruit, considered a good source of energy and vitamins.',
    nutritionalInfoAr: {'calories': 23, 'protein': 0, 'fat': 0, 'carbs': 6},
    nutritionalInfoEn: {'calories': 23, 'protein': 0, 'fat': 0, 'carbs': 6},
    //id: '25',
    typear: 'الفاكهه',
    id: '13',
    price: '15',
    offerprice: '12',
  ),



  Food(
    id: '15',
    price: '36',
    offerprice: '30',
    type: 'Fruit',
    nameAr: 'كمثرى',
    nameEn: 'Pear',
    image: ImageAssets.pear,
    descriptionAr: 'الكمثرى هي فاكهة لذيذة وغنية بالألياف والمعادن الهامة لدعم الهضم وتعزيز الصحة العامة.',
    descriptionEn: 'Pear is a delicious fruit, rich in fiber and essential minerals to support digestion and enhance overall health.',
    nutritionalInfoAr: {'calories': 57, 'protein': 1, 'fat': 0, 'carbs': 15},
    nutritionalInfoEn: {'calories': 57, 'protein': 1, 'fat': 0, 'carbs': 15},
    //id: '41',
    typear: 'الفاكهه',
  ),
  Food(
    id: '16',
    price: '100',
    offerprice: '80',
    type: 'Vegetables',
    nameAr: 'كوسة مشوية',
    nameEn: ' Zucchini',
    image: ImageAssets.grilledZucchini,
    descriptionAr: 'الكوسة المشوية هي وجبة خفيفة وصحية مليئة بالألياف والمغذيات الضرورية.',
    descriptionEn: 'Grilled zucchini is a light and healthy meal full of fiber and essential nutrients.',
    nutritionalInfoAr: {'calories': 33, 'protein': 2, 'fat': 0, 'carbs': 6},
    nutritionalInfoEn: {'calories': 33, 'protein': 2, 'fat': 0, 'carbs': 6},
  //  id: '42',
    typear: 'الخضراوات',
  ),
  Food(
    id: '17',
    price: '200',
    offerprice: '180',
    type: 'Snack',
    nameAr: 'فاصوليا محمصة',
    nameEn: 'Roasted Almonds',
    image: ImageAssets.almonds,
    descriptionAr: 'الفاصوليا المحمصة هي وجبة سناك صحية مليئة بالبروتين والدهون الصحية.',
    descriptionEn: 'Roasted almonds are a healthy snack full of protein and healthy fats.',
    nutritionalInfoAr: {'calories': 160, 'protein': 6, 'fat': 14, 'carbs': 6},
    nutritionalInfoEn: {'calories': 160, 'protein': 6, 'fat': 14, 'carbs': 6},
  //  id: '43',
    typear: 'السناك',
  ),
  Food( id: '18',
    price: '100',
    offerprice: '80',
    type: 'Vegetables',
    nameAr: 'جزر مبشور',
    nameEn: 'ShredCarrots',
    image: ImageAssets.shreddedCarrots,
    descriptionAr: 'الجزر المبشورة هي إضافة مثالية للسلطات والوجبات الخفيفة وتقدم فوائد صحية كبيرة.',
    descriptionEn: 'Shredded carrots are a perfect addition to salads and snacks, offering great health benefits.',
    nutritionalInfoAr: {'calories': 41, 'protein': 1, 'fat': 0, 'carbs': 10},
    nutritionalInfoEn: {'calories': 41, 'protein': 1, 'fat': 0, 'carbs': 10},
   // id: '44',
    typear: 'الخضراوات',
  ),

  Food(
    id: '18',
    price: '50',
    offerprice: '30',
    type: 'Snack',
    nameAr: 'كرفس مقطع',
    nameEn: 'Celery_Sticks',
    image: ImageAssets.celery,
    descriptionAr: 'حبات الكرفس المقطعة هي وجبة خفيفة منخفضة السعرات تحتوي على الكثير من الألياف والماء.',
    descriptionEn: 'Chopped celery sticks are a low-calorie snack that is rich in fiber and water.',
    nutritionalInfoAr: {'calories': 10, 'protein': 0, 'fat': 0, 'carbs': 2},
    nutritionalInfoEn: {'calories': 10, 'protein': 0, 'fat': 0, 'carbs': 2},
    //id: '47',
    typear: 'السناك',
  ),
  Food(
    id: '19',
    price: '100',
    offerprice: '80',
    type: 'Vegetables',
    nameAr: 'خيار مقطع',
    nameEn: 'Cucumber Slices',
    image: ImageAssets.cucumber,
    descriptionAr: 'شرائح الخيار المقطعة هي وجبة خفيفة منعشة ومنخفضة السعرات تعزز الترطيب وتقدم العديد من الفيتامينات.',
    descriptionEn: 'Chopped cucumber slices are a refreshing, low-calorie snack that promotes hydration and provides many vitamins.',
    nutritionalInfoAr: {'calories': 8, 'protein': 0, 'fat': 0, 'carbs': 2},
    nutritionalInfoEn: {'calories': 8, 'protein': 0, 'fat': 0, 'carbs': 2},
   // id: '48',
    typear: 'الخضراوات',
  ),
  Food(
    id: '20',
    price: '100',
    offerprice: '80',
    type: 'Snack',
    nameAr: 'عسل ولوز',
    nameEn: 'Honey Almonds',
    image: ImageAssets.honeyAlmonds,
    descriptionAr: 'اللوز المحمص بالعسل هو خيار سناك صحي ولذيذ يوفر البروتين والطاقة اللازمة.',
    descriptionEn: 'Honey-roasted almonds are a healthy and delicious snack option that provides protein and necessary energy.',
    nutritionalInfoAr: {'calories': 160, 'protein': 6, 'fat': 14, 'carbs': 6},
    nutritionalInfoEn: {'calories': 160, 'protein': 6, 'fat': 14, 'carbs': 6},
 //   id: '49',
    typear: 'السناك',
  ),
  Food(
    id: '21',
    price: '100',
    offerprice: '80',
    type: 'Fruit',
    nameAr: 'رمان',
    nameEn: 'Pomegranate',
    image: ImageAssets.pomegranate,
    descriptionAr: 'الرمان هو فاكهة لذيذة ومليئة بالمضادات الأكسدية والفيتامينات المفيدة للصحة.',
    descriptionEn: 'Pomegranate is a delicious fruit full of antioxidants and vitamins that are beneficial for health.',
    nutritionalInfoAr: {'calories': 83, 'protein': 1, 'fat': 1, 'carbs': 19},
    nutritionalInfoEn: {'calories': 83, 'protein': 1, 'fat': 1, 'carbs': 19},
 //   id: '50',
    typear: 'الفاكهه',
  ),
  Food(
    id: '22',
    price: '50',
    offerprice: '45',
    type: 'Vegetables',
    nameAr: 'بازيلاء طازجة',
    nameEn: 'Fresh Peas',
    image: ImageAssets.freshPeas,
    descriptionAr: 'البازيلاء الطازجة تعد مصدرًا ممتازًا للبروتين النباتي وتحتوي على العديد من الفيتامينات والمعادن.',
    descriptionEn: 'Fresh peas are an excellent source of plant-based protein and contain many vitamins and minerals.',
    nutritionalInfoAr: {'calories': 62, 'protein': 4, 'fat': 0, 'carbs': 11},
    nutritionalInfoEn: {'calories': 62, 'protein': 4, 'fat': 0, 'carbs': 11},
   // id: '51',
    typear: 'الخضراوات',
  ),
  Food(
    id: '23',
    price: '25',
    offerprice: '18',
    type: 'Luanch',
    nameAr: 'سلطة التونة',
    nameEn: 'Tuna Salad',
    image: ImageAssets.tunaSalad,
    descriptionAr: 'سلطة التونة اللذيذة تعتبر وجبة خفيفة صحية ومشبعة بالبروتين والفيتامينات.',
    descriptionEn: 'Delicious tuna salad is a healthy and protein-packed snack full of vitamins.',
    nutritionalInfoAr: {'calories': 180, 'protein': 20, 'fat': 8, 'carbs': 5},
    nutritionalInfoEn: {'calories': 180, 'protein': 20, 'fat': 8, 'carbs': 5},
   // id: '52',
    typear: 'الغذاء',
  ),
  Food(
    id: '24',
    price: '100',
    offerprice: '80',
    type: 'Snack',
    nameAr: 'صنوبر محمص',
    nameEn: 'RoastedNuts',
    image: ImageAssets.pineNuts,
    descriptionAr: 'الصنوبر المحمص هو سناك لذيذ وغني بالدهون الصحية والمعادن الضرورية للجسم.',
    descriptionEn: 'Roasted pine nuts are a tasty and nutrient-rich snack, high in healthy fats and essential minerals.',
    nutritionalInfoAr: {'calories': 190, 'protein': 3, 'fat': 19, 'carbs': 4},
    nutritionalInfoEn: {'calories': 190, 'protein': 3, 'fat': 19, 'carbs': 4},
  //  id: '53',

    typear: 'السناك',
  ),
  Food(
    id: '25',
    price: '100',
    offerprice: '80',
    type: 'Dinner',
    nameAr: 'سلمون بالفلفل الأسود',
    nameEn: 'Salmon ',
    image: ImageAssets.salmonPepper,
    descriptionAr: 'سلمون بالفلفل الأسود هو وجبة عشاء لذيذة وغنية بالأحماض الدهنية الأوميجا-3 والبروتين.',
    descriptionEn: 'Salmon with black pepper is a delicious dinner rich in omega-3 fatty acids and protein.',
    nutritionalInfoAr: {'calories': 220, 'protein': 25, 'fat': 12, 'carbs': 3},
    nutritionalInfoEn: {'calories': 220, 'protein': 25, 'fat': 12, 'carbs': 3},
    //id: '54',
    typear: 'العشاء',
  ),

  Food(
    id: '26',
    price: '8',
    offerprice: '5',
    type: 'Luanch',
    nameAr: 'شوربة العدس',
    nameEn: 'Lentil Soup',
    image: ImageAssets.lentilSoup,
    descriptionAr: 'شوربة العدس اللذيذة هي وجبة غنية بالألياف والبروتين المفيدة للهضم.',
    descriptionEn: 'Delicious lentil soup is a fiber-rich meal with beneficial protein for digestion.',
    nutritionalInfoAr: {'calories': 150, 'protein': 9, 'fat': 1, 'carbs': 26},
    nutritionalInfoEn: {'calories': 150, 'protein': 9, 'fat': 1, 'carbs': 26},
  //  id: '56',
    typear: 'الغذاء',
  ),
  Food(
    id: '23',
    price: '55',
    offerprice: '50',
    type: 'Fruit',
    nameAr: 'أناناس طازج',
    nameEn: 'Fresh Pineapple',
    image: ImageAssets.freshPineapple,
    descriptionAr: 'الأناناس الطازج هو فاكهة لذيذة ومنعشة تحتوي على الفيتامينات والمواد المضادة للأكسدة.',
    descriptionEn: 'Fresh pineapple is a delicious and refreshing fruit containing vitamins and antioxidants.',
    nutritionalInfoAr: {'calories': 50, 'protein': 0, 'fat': 0, 'carbs': 13},
    nutritionalInfoEn: {'calories': 50, 'protein': 0, 'fat': 0, 'carbs': 13},
    //id: '57',
    typear: 'الفاكهه',
  ),

];

//جزر (Carrot):
//
// الوصف باللغة العربية: "الجزر هي خضروات صحية ولذيذة. تحتوي على 41 سعرة حرارية، 1 جرام بروتين، وتوفر 2 جرام من الألياف."
// الوصف بالإنجليزية: "Carrots are healthy and tasty vegetables. They contain 41 calories, 1 gram of protein, and provide 2 grams of fiber."
// سمك مشوي (Grilled Fish):
//
// الوصف باللغة العربية: "السمك المشوي هو طعام خفيف ولذيذ. يحتوي على 180 سعرة حرارية، 25 جرام بروتين، و8 جرام دهون."
// الوصف بالإنجليزية: "Grilled fish is a light and delicious food. It contains 180 calories, 25 grams of protein, and 8 grams of fat."
// بطاطس (Potato):
//
// الوصف باللغة العربية: "البطاطس هي مصدر جيد للطاقة. تحتوي على 150 سعرة حرارية، 2 جرام بروتين، وتكون خالية من الدهون."
// الوصف بالإنجليزية: "Potatoes are a good source of energy. They contain 150 calories, 2 grams of protein, and are fat-free."
// تفاحة (Apple):
//
// الوصف باللغة العربية: "التفاح هو فاكهة لذيذة وغنية بالفيتامينات والمعادن. إنها تحتوي على 95 سعرة حرارية وتوفر الألياف."
// الوصف بالإنجليزية: "Apple is a delicious fruit rich in vitamins and minerals. It contains 95 calories and provides fiber."
// دجاج مشوي (Grilled Chicken):
//
// الوصف باللغة العربية: "الدجاج المشوي هو خيار صحي ولذيذ. يحتوي على 220 سعرة حرارية، 40 جرام بروتين، و8 جرام دهون."
// الوصف بالإنجليزية: "Grilled chicken is a healthy and delicious choice. It contains 220 calories, 40 grams of protein, and 8 grams of fat."
// لحم (Meat):
//
// الوصف باللغة العربية: "اللحم هو مصدر غني بالبروتينات. يحتوي على 41 سعرة حرارية، 1 جرام بروتين، ويكون خاليًا من الدهون والألياف."
// الوصف بالإنجليزية: "Meat is a protein-rich source. It contains 41 calories, 1 gram of protein, and is free of fat and fiber."
// تفاح (Apple):
//
// الوصف باللغة العربية: "التفاح هو فاكهة لذيذة وغنية بالفيتامينات والمعادن. إنها تحتوي على 95 سعرة حرارية وتوفر الألياف."
// الوصف بالإنجليزية: "Apple is a delicious fruit rich in vitamins and minerals. It contains 95 calories and provides fiber."
// زبدة الفول السوداني (Peanut Butter):
// الوصف باللغة العربية: "زبدة الفول السوداني هي خيار صحي ولذيذ. تحتوي على 94 سعرة حرارية، 4 جرام بروتين، 8 جرام دهون، و3 جرام كربوهيدرات."
// الوصف بالإنجليزية: "Peanut butter is a healthy and delicious choice. It contains 94 calories, 4 grams of protein, 8 grams of fat, and 3 grams of carbohydrates."
// تشيز كيك (Cheesecake):
// الوصف باللغة العربية: "تشيز كيك هو حلوى لذيذة تحتوي على 250 سعرة حرارية، 5 جرام بروتين، 18 جرام دهون، و20 جرام كربوهيدرات."
// الوصف بالإنجليزية: "Cheesecake is a delicious dessert that contains 250 calories, 5 grams of protein, 18 grams of fat, and 20 grams of carbohydrates."
// وهكذا يتم توفير وصف حقيقي لكل عنصر في القائمة. إذا كان لديك أي طلب إضافي أو استفسار، فلا تتردد في طرحه.
//بروكلي (Broccoli):
// الوصف باللغة العربية: "البروكلي هو خضار صحي يحتوي على 55 سعرة حرارية، 3 جرام بروتين، ويوفر 2 جرام من الألياف."
// الوصف بالإنجليزية: "Broccoli is a healthy vegetable that contains 55 calories, 3 grams of protein, and provides 2 grams of fiber."
// بطيخ (Watermelon):
// الوصف باللغة العربية: "البطيخ هو فاكهة منعشة تحتوي على 30 سعرة حرارية، 1 جرام بروتين، وتوفر 1 جرام من الألياف."
// الوصف بالإنجليزية: "Watermelon is a refreshing fruit that contains 30 calories, 1 gram of protein, and provides 1 gram of fiber."
// لحم بقر مشوي (Grilled Beef):
// الوصف باللغة العربية: "اللحم بقر المشوي هو مصدر غني بالبروتينات. يحتوي على 300 سعرة حرارية، 35 جرام بروتين، و15 جرام دهون."
// الوصف بالإنجليزية: "Grilled beef is a protein-rich source. It contains 300 calories, 35 grams of protein, and 15 grams of fat."
// عصير البرتقال (Orange Juice):
// الوصف باللغة العربية: "عصير البرتقال هو مشروب منعش ولذيذ. يحتوي على 120 سعرة حرارية، 1 جرام بروتين، و25 جرام كربوهيدرات."
// الوصف بالإنجليزية: "Orange juice is a refreshing and delicious drink. It contains 120 calories, 1 gram of protein, and 25 grams of carbohydrates."
// فشار (Popcorn):
// الوصف باللغة العربية: "الفشار هو خيار خفيف ولذيذ. يحتوي على 30 سعرة حرارية، 1 جرام بروتين، 1 جرام دهون، و6 جرام كربوهيدرات."
// الوصف بالإنجليزية: "Popcorn is a light and tasty option. It contains 30 calories, 1 gram of protein, 1 gram of fat, and 6 grams of carbohydrates."
// موز (Banana):
// الوصف باللغة العربية: "الموز هو فاكهة لذيذة ومغذية. يحتوي على 105 سعرة حرارية، 1 جرام بروتين، و27 جرام كربوهيدرات."
// الوصف بالإنجليزية: "Banana is a delicious and nutritious fruit. It contains 105 calories, 1 gram of protein, and 27 grams of carbohydrates."
// سلمون مشوي (Grilled Salmon):
// الوصف باللغة العربية: "السلمون المشوي هو طعام صحي ولذيذ. يحتوي على 250 سعرة حرارية، 30 جرام بروتين، و12 جرام دهون."
// الوصف بالإنجليزية: "Grilled salmon is a healthy and delicious food. It contains 250 calories, 30 grams of protein, and 12 grams of fat."
// سلطة الكينوا (Quinoa Salad):
// الوصف باللغة العربية: "سلطة الكينوا هي وجبة خفيفة ومغذية. تحتوي على 180 سعرة حرارية، 5 جرام بروتين، 8 جرام دهون، و25 جرام كربوهيدرات."
// الوصف بالإنجليزية: "Quinoa salad is a light and nutritious meal. It contains 180 calories, 5 grams of protein, 8 grams of fat, and 25 grams of carbohydrates."
// عصير التوت الأحمر (Red Berry Juice):
// الوصف باللغة العربية: "عصير التوت الأحمر هو مشروب لذيذ وغني بالعناصر الغذائية. يحتوي على 100 سعرة حرارية، 1 جرام بروتين، و25 جرام كربوهيدرات."
// الوصف بالإنجليزية: "Red berry juice is a delicious and nutrient-rich drink. It contains 100 calories, 1 gram of protein, and 25 grams of carbohydrates."
// فراولة (Strawberry):
// الوصف باللغة العربية: "الفراولة هي فاكهة لذيذة ومنخفضة السعرات الحرارية. تحتوي على 4 سعرات حرارية، وتكون خالية من الدهون والبروتين."
// الوصف بالإنجليزية: "Strawberry is a delicious fruit and low in calories. It contains 4 calories and is free of fat and protein."