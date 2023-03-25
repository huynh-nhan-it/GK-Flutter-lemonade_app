import 'package:flutter/material.dart';
import 'package:lemonade_app/model/Discover.dart';
import 'package:lemonade_app/model/list_designer.dart';
import 'package:lemonade_app/model/product.dart';

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

const kDefaultPaddin = 20.0;

const List<Icon> list_icons = [
  Icon(Icons.home_rounded),
  Icon(Icons.manage_search),
  Icon(Icons.messenger_rounded),
  Icon(Icons.account_box_rounded)
];

const List<Icon> list_outlines = [
  Icon(Icons.home_outlined, color: Colors.grey),
  Icon(Icons.manage_search_outlined, color: Colors.grey),
  Icon(Icons.messenger_outline_rounded, color: Colors.grey),
  Icon(Icons.account_box_outlined, color: Colors.grey)
];

const List<String> list_names = ["Home", "Discover", "Support", "Profile"];

const TextStyle textStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    fontStyle: FontStyle.italic);

var discover_men = [
  {'name': 'On Sale', 'id': 1, 'image': 'assets/images/Onsale.png'},
  {'name': 'New In', 'id': 2, 'image': 'assets/images/NewIn.png'},
  {'name': 'Designers', 'id': 3, 'image': 'assets/images/Designers.png'},
  {'name': 'Clothing', 'id': 4, 'image': 'assets/images/Clothing.png'},
  {'name': 'Accessories', 'id': 5, 'image': 'assets/images/Accessories.png'},
  {'name': 'Lifestyle', 'id': 6, 'image': 'assets/images/Lifestyle.png'},
  {'name': 'Beauty and Wellness', 'id': 7, 'image': 'assets/images/beauty.png'},
  {'name': 'Shoes', 'id': 8, 'image': 'assets/images/Shoes_discover.png'},
];

var list_as_men = [
  'All',
  'New In',
  'Bags',
  'Bow Ties',
  'Bracelets',
  'Eyeglasses',
  'Hats',
  'Scarves',
  'Socks',
  'Sunglasses',
  'Ties',
].toList();

var clothing_men = [
  'All',
  'New In',
  'Abayas',
  'Blazers',
  'Hoodies',
  'Jackets',
  'Pants',
  'Sets',
  'Shirts',
  'Shorts',
  'Suits',
  'Sweaters',
  'Swimwear',
  'T-Shirts',
  'Tracksuits',
  'Vests',
].toList();

var shoes_men = [
  'All',
  'New In',
  'Boots',
  'Mules',
  'Oxfords',
  'Sandals',
  'Slides',
  'Sneakers',
].toList();

var designer_men = [
  'Arak Studio',
  'Artsocks',
  'Be Aside',
  'CiaCiao',
  'Curated',
  'Cut Paste Build',
  'Ghayat',
  'GRAVALDI',
  'HH The Brand',
  'Highpurr',
  'Hope 111',
  'Horouf Fashion',
  'House of Scarves',
  'Inspirador',
  'Jdeed',
  'Joumana Chahada',
  'Kalsé',
  'KAOS',
  'Maison Je',
  'Mohamed Beyrouti',
  'Mr. BOHO',
  'Nafsi',
  'Perso The Brand',
  'Repertoire',
  'Sikasok',
  'Sonder the Brand',
  'TA GUEULE',
  'The Hakiba',
  'The Laughing Geisha',
  'Unfinished',
  'Urban Feet',
  'ZED',
].toList();

var list_product_men = [
  {
    'designer': 'Curated',
    'name': 'Black Cape with Embroidery',
    'type': 'Jackets',
    'price': '11.485.000,00 VND',
    'status': 1,
    'des':
        "This black cape with embroidery is a layer you can't live without. Minimal and effortlessly cool, style it with button up shirts, jeans and turtlenecks to have a sophisticated look everywhere you go. Pieces you can mix and match with your wardrobe favorites, designed by Mohamad Bayrouti. Made to order on Lemonade Fashion",
    'list_image': [
      'assets/images/1.png',
      'assets/images/2.png',
      'assets/images/3.png'
    ],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'Curated',
    'name': 'Oxford Bomber Jacket In Gray',
    'type': 'Jackets',
    'price': '1.725.000,00 VND',
    'status': 1,
    'des':
        "Oxford bomber jacket in gray. Water repellent jacket with a Curated logo in stainless steel. Also comes in black. Style with casual joggers or jeans and polo shirts. Designed for the love of loungewear by Curated. Made to order on Lemonade Fashion.",
    'list_image': [
      'assets/images/4.png',
      'assets/images/5.png',
      'assets/images/6.png',
    ],
    'fabric': 'Gray Impermeable Oxford',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'ZED',
    'name': 'Zip Up Cardigan In Beige',
    'type': 'Jackets',
    'price': '1.150.000,00 VND',
    'status': 0,
    'des':
        'Beige zip up cardigan. Made of cotton. Style it with a pair of black jeans, a black sweater underneath, and grey sneakers. Make your style statement with a pair of black sunglasses and this layering essential. Designed by ZED. Made to order on Lemonade Fashion.',
    'list_image': [
      'assets/images/7.png',
      'assets/images/8.png',
      'assets/images/9.png',
    ],
    'fabric': 'Beige Woven Cotto',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'Nafsi',
    'name': 'Jo Textured White Jacket',
    'type': 'Jackets',
    'price': '5.630.000,00 VND',
    'status': 0,
    'des':
        'Cool Jo jacket for your modern attire. Made of cotton and poly blend. Layer with your favorite shirts, blouses, pants, or even wear bare for the ultimate trendy look. Modern and contemporary pieces designed by Nafsi, made to order on Lemonade Fashion.',
    'list_image': [
      'assets/images/10.png',
      'assets/images/11.png',
      'assets/images/12.png',
    ],
    'fabric': 'White Upcycled Wool and Cotton Blend',
    'delivery': 'Canada'
  },
  {
    'designer': 'Mouftah El Chark',
    'name': 'Zigzag Jacket',
    'type': 'Jackets',
    'price': '4.570.000,00 VND',
    'status': 1,
    'des':
        'Zigzag black jacket with intricate silver hand embroidery. It’s all about the details with this must have layer. Style this jacket with fitted pants or dark jeans. Shop hand made stories designed by Mouftah el Chark, made to order on Lemonade Fashion.',
    'list_image': [
      'assets/images/13.png',
      'assets/images/14.png',
      'assets/images/15.png',
    ],
    'fabric': 'Black Cotton & Silver Embroidery',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'LARA',
    'name': 'Cascade Hand Painted Cap',
    'type': 'Hats',
    'price': '1.155.000,00 VND',
    'status': 1,
    'des':
        "A classic cap in black. Hand painted by the designer, Lara, herself, with gold, blue, white and red cascade. Shop hand painted accessories with intricate designs from LaRa made to order on Lemonade Fashion.",
    'list_image': [
      'assets/images/16.png',
      'assets/images/17.png',
      'assets/images/18.png'
    ],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'Inspirador',
    'name': 'Inspirador Logo Mesh Cap',
    'type': 'Hats',
    'price': '925.000,00 VND',
    'status': 1,
    'des':
        "A classic cap in black. Hand painted by the designer, Lara, herself, with gold, blue, white and red cascade. Shop hand painted accessories with intricate designs from LaRa made to order on Lemonade Fashion.",
    'list_image': ['assets/images/19.png', 'assets/images/20.png'],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'LARA',
    'name': 'Red and Silver Splatter Hand Painted Cap',
    'type': 'Hats',
    'price': '1.155.000,00 VND',
    'status': 1,
    'des':
        "A classic cap in black. Hand painted by the designer, Lara, herself, with gold, blue, white and red cascade. Shop hand painted accessories with intricate designs from LaRa made to order on Lemonade Fashion.",
    'list_image': ['assets/images/21.png', 'assets/images/22.png'],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'LARA',
    'name': 'Silver Splatter Hand Painted Cap',
    'type': 'Hats',
    'price': '1.155.000,00 VND',
    'status': 1,
    'des':
        "A classic cap in black. Hand painted by the designer, Lara, herself, with gold, blue, white and red cascade. Shop hand painted accessories with intricate designs from LaRa made to order on Lemonade Fashion.",
    'list_image': ['assets/images/23.png', 'assets/images/24.png'],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'HH THE BRAND',
    'name': 'The Slide',
    'type': 'Shoes',
    'price': '3.925.000,00 VND',
    'status': 1,
    'des':
        "The Walk Barefoot Logo Slides are the ideal addition to your summer wardrobe. A classic and slick design, these black slides feature the brand logo and the statement ‘Walk Barefoot’ printed across the bands. Shop summer essentials from Ta Gueule made to order on Lemonade Fashion.",
    'list_image': [
      'assets/images/25.png',
      'assets/images/26.png',
      'assets/images/27.png'
    ],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'TA GUEULE',
    'name': '"Walk Barefoot" Logo Slides in Black',
    'type': 'Shoes',
    'price': '1.270.000,00 VND',
    'status': 1,
    'des':
        "The Walk Barefoot Logo Slides are the ideal addition to your summer wardrobe. A classic and slick design, these black slides feature the brand logo and the statement ‘Walk Barefoot’ printed across the bands. Shop summer essentials from Ta Gueule made to order on Lemonade Fashion.",
    'list_image': [
      'assets/images/28.png',
      'assets/images/29.png',
      'assets/images/30.png'
    ],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'MAISON JE',
    'name': 'Beige Suede Sneakers',
    'type': 'Shoes',
    'price': '2.310.000,00 VND',
    'status': 1,
    'des':
        "The Walk Barefoot Logo Slides are the ideal addition to your summer wardrobe. A classic and slick design, these black slides feature the brand logo and the statement ‘Walk Barefoot’ printed across the bands. Shop summer essentials from Ta Gueule made to order on Lemonade Fashion.",
    'list_image': [
      'assets/images/31.png',
      'assets/images/32.png',
      'assets/images/33.png'
    ],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
];

var get_list_product_men = list_product_men
    .map((product) => Product(
        designer: product['designer'] as String,
        name: product['name'] as String,
        type: product['type'] as String,
        price: product['price'] as String,
        status: product['status'] as int,
        des: product['des'] as String,
        list_image: product['list_image'] as List<String>,
        fabric: product['fabric'] as String,
        delivery: product['delivery'] as String))
    .toList();

Future<List<Product>> get_list_product(String type) async {
  return get_list_product_men
      .where((product) => {type}.contains(product.type))
      .toList();
}

List<List<String>> getlist_alpha(List<String> list) {
  list.sort();
  List<String> list_alpha = [];
  String pre = list[0][0];
  List<List<String>> list_all_design = [];
  for (int i = 0; i < list.length; i++) {
    if (pre == list[i][0]) {
      list_alpha.add(list[i]);
    } else {
      list_all_design.add(list_alpha);
      pre = list[i][0];
      list_alpha = [];
      list_alpha.add(list[i]);
    }
  }
  list_all_design.add(list_alpha);
  return list_all_design;
}

var list_desiner_men = getlist_alpha(designer_men)
    .map((item) => ListDesigner(Alphaword: item[0][0], list_design: item))
    .toList();

var list_men = discover_men
    .map((men) => Discover(
        name: men['name'] as String,
        ID: men['id'] as int,
        image: men['image'] as String))
    .toList();

var color_men = [
  Color.fromARGB(255, 250, 118, 36),
  Color.fromARGB(255, 127, 181, 255),
  Color.fromARGB(255, 247, 108, 217),
  Color.fromARGB(255, 127, 181, 255),
  Color.fromARGB(255, 255, 210, 76),
  Color.fromARGB(255, 255, 99, 99),
  Color.fromARGB(255, 246, 245, 77),
  Color.fromARGB(255, 255, 168, 168)
];

Future<List<Object>> list_detail_discover_men(int ID) async {
  if (ID == 4) {
    return clothing_men;
  }
  if (ID == 5) {
    return list_as_men;
  }
  if (ID == 8) {
    return shoes_men;
  }
  return [];
}

var discover_women = [
  {'name': 'On Sale', 'id': 1, 'image': 'assets/images/Onsale_women.png'},
  {'name': 'New In', 'id': 2, 'image': 'assets/images/NewIn_women.png'},
  {'name': 'Designers', 'id': 3, 'image': 'assets/images/Designers_women.png'},
  {'name': 'Clothing', 'id': 4, 'image': 'assets/images/Clothing_women.png'},
  {
    'name': 'Accessories',
    'id': 5,
    'image': 'assets/images/Accessories_women.png'
  },
  {'name': 'Lifestyle', 'id': 6, 'image': 'assets/images/Lifestyle_women.png'},
  {
    'name': 'Beauty and Wellness',
    'id': 7,
    'image': 'assets/images/beauty_women.png'
  },
  {'name': 'Shoes', 'id': 8, 'image': 'assets/images/shoes_women.png'},
];

var list_as_women = [
  'All',
  'New In',
  'Bags',
  'Belts',
  'Bracelets',
  'Cufflinks',
  'Earrings',
  'Eyeglasses',
  'Gloves',
  'Hats',
  'Headpieces',
  'Necklaces',
  'Pins',
  'Rings',
  'Scarves',
  'Socks',
  'Sunglasses',
  'Sunglasses Chain',
  'Ties',
].toList();

var clothing_women = [
  'All',
  'New In',
  'Abayas',
  'Blazers',
  'Bodysuits',
  'Crop Tops',
  'Dresses',
  'Hoodies',
  'Jackets',
  'Jeans',
  'Jumpsuits',
  'Pants',
  'Sets',
  'Shirts',
  'Shorts',
  'Skirts',
  'Sleepwear',
  'Suits',
  'Sweaters',
  'Swimwear',
  'T-Shirts',
  'Tracksuits',
  'Vests',
].toList();

var shoes_women = [
  'All',
  'New In',
  'Boots',
  'Flats',
  'Heels',
  'Mules',
  'Oxfords',
  'Sandals',
  'Slides',
  'Slippers',
  'Sneakers'
].toList();

var designer_women = [
  'Alaa Najd',
  'Alltastic',
  'Amiisi',
  'B Bloomed',
  'Be Aside',
  'Canava Design',
  'Cherina Beachwear',
  'CiaCiao',
  'D by Dunia',
  'DHD The Label',
  'Elio Abou Fayssal',
  'Elphit',
  'EM Basics',
  'Fadwa Hayek Couture',
  'Farah Seif',
  'Fem',
  'Femme Fierce',
  'Gael Ghattas',
  'Glammy Touch',
  'Ghayat',
  'Hagop Shahinian',
  'HAI Swimwear',
  'HB Collection',
  'Impearials',
  'InAHeartBead',
  'Inspirador',
  'Jayda Hany',
  'Jewls By Céline',
  'Joanna Andraos',
  'Joudesign',
  'Kaftish',
  'Kalsé',
  'ZGEST',
  'ZED',
];

var color_women = [
  Color.fromARGB(255, 244, 115, 185),
  Color.fromARGB(255, 139, 219, 129),
  Color.fromARGB(255, 127, 181, 255),
  Color.fromARGB(255, 255, 210, 76),
  Color.fromARGB(255, 247, 108, 217),
  Color.fromARGB(255, 73, 255, 0),
  Color.fromARGB(255, 141, 233, 129),
  Color.fromARGB(255, 75, 123, 229)
];

var list_women = discover_women
    .map((women) => Discover(
        name: women['name'] as String,
        ID: women['id'] as int,
        image: women['image'] as String))
    .toList();

var list_desiner_women = getlist_alpha(designer_women)
    .map((item) => ListDesigner(Alphaword: item[0][0], list_design: item))
    .toList();

Future<List<Object>> list_detail_discover_women(int ID) async {
  if (ID == 4) {
    return clothing_women;
  }
  if (ID == 5) {
    return list_as_women;
  }
  if (ID == 8) {
    return shoes_women;
  }
  return [];
}

var list_product_women = [
  {
    'designer': 'Curated',
    'name': 'Black Cape with Embroidery',
    'type': 'Jackets',
    'price': '11.485.000,00 VND',
    'status': 1,
    'des':
        "This black cape with embroidery is a layer you can't live without. Minimal and effortlessly cool, style it with button up shirts, jeans and turtlenecks to have a sophisticated look everywhere you go. Pieces you can mix and match with your wardrobe favorites, designed by Mohamad Bayrouti. Made to order on Lemonade Fashion",
    'list_image': [
      'assets/images/1_1.png',
      'assets/images/1_2.png',
      'assets/images/1_3.png'
    ],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'ZED',
    'name': 'Zip Up Cardigan In Beige',
    'type': 'Jackets',
    'price': '1.150.000,00 VND',
    'status': 0,
    'des':
        'Beige zip up cardigan. Made of cotton. Style it with a pair of black jeans, a black sweater underneath, and grey sneakers. Make your style statement with a pair of black sunglasses and this layering essential. Designed by ZED. Made to order on Lemonade Fashion.',
    'list_image': [
      'assets/images/2_1.png',
      'assets/images/2_2.png',
      'assets/images/2_3.png'
    ],
    'fabric': 'Beige Woven Cotto',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'Nafsi',
    'name': 'Jo Textured White Jacket',
    'type': 'Jackets',
    'price': '5.630.000,00 VND',
    'status': 0,
    'des':
        'Cool Jo jacket for your modern attire. Made of cotton and poly blend. Layer with your favorite shirts, blouses, pants, or even wear bare for the ultimate trendy look. Modern and contemporary pieces designed by Nafsi, made to order on Lemonade Fashion.',
    'list_image': [
      'assets/images/3_1.png',
      'assets/images/3_2.png',
      'assets/images/3_3.png'
    ],
    'fabric': 'White Upcycled Wool and Cotton Blend',
    'delivery': 'Canada'
  },
  {
    'designer': 'Mouftah El Chark',
    'name': 'Zigzag Jacket',
    'type': 'Jackets',
    'price': '4.570.000,00 VND',
    'status': 1,
    'des':
        'Zigzag black jacket with intricate silver hand embroidery. It’s all about the details with this must have layer. Style this jacket with fitted pants or dark jeans. Shop hand made stories designed by Mouftah el Chark, made to order on Lemonade Fashion.',
    'list_image': [
      'assets/images/4_1.png',
      'assets/images/4_2.png',
      'assets/images/4_3.png'
    ],
    'fabric': 'Black Cotton & Silver Embroidery',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'LARA',
    'name': 'Cascade Hand Painted Cap',
    'type': 'Hats',
    'price': '1.155.000,00 VND',
    'status': 1,
    'des':
        "A classic cap in black. Hand painted by the designer, Lara, herself, with gold, blue, white and red cascade. Shop hand painted accessories with intricate designs from LaRa made to order on Lemonade Fashion.",
    'list_image': [
      'assets/images/5_1.png',
      'assets/images/5_2.png',
      'assets/images/5_3.png'
    ],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'Inspirador',
    'name': 'Inspirador Logo Mesh Cap',
    'type': 'Hats',
    'price': '925.000,00 VND',
    'status': 1,
    'des':
        "A classic cap in black. Hand painted by the designer, Lara, herself, with gold, blue, white and red cascade. Shop hand painted accessories with intricate designs from LaRa made to order on Lemonade Fashion.",
    'list_image': [
      'assets/images/6_1.png',
      'assets/images/6_2.png',
      'assets/images/6_3.png'
    ],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'LARA',
    'name': 'Red and Silver Splatter Hand Painted Cap',
    'type': 'Hats',
    'price': '1.155.000,00 VND',
    'status': 1,
    'des':
        "A classic cap in black. Hand painted by the designer, Lara, herself, with gold, blue, white and red cascade. Shop hand painted accessories with intricate designs from LaRa made to order on Lemonade Fashion.",
    'list_image': ['assets/images/21.png', 'assets/images/22.png'],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'LARA',
    'name': 'Silver Splatter Hand Painted Cap',
    'type': 'Hats',
    'price': '1.155.000,00 VND',
    'status': 1,
    'des':
        "A classic cap in black. Hand painted by the designer, Lara, herself, with gold, blue, white and red cascade. Shop hand painted accessories with intricate designs from LaRa made to order on Lemonade Fashion.",
    'list_image': [
      'assets/images/7_1.png',
      'assets/images/7_2.png',
      'assets/images/7_3.png'
    ],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
  {
    'designer': 'HH THE BRAND',
    'name': 'The Slide',
    'type': 'Shoes',
    'price': '3.925.000,00 VND',
    'status': 1,
    'des':
        "The Walk Barefoot Logo Slides are the ideal addition to your summer wardrobe. A classic and slick design, these black slides feature the brand logo and the statement ‘Walk Barefoot’ printed across the bands. Shop summer essentials from Ta Gueule made to order on Lemonade Fashion.",
    'list_image': [
      'assets/images/7_1.png',
      'assets/images/7_2.png',
      'assets/images/7_3.png'
    ],
    'fabric': 'Black Wool Cashmere',
    'delivery': 'Lebanon'
  },
];

var get_list_product_women = list_product_women
    .map((product) => Product(
        designer: product['designer'] as String,
        name: product['name'] as String,
        type: product['type'] as String,
        price: product['price'] as String,
        status: product['status'] as int,
        des: product['des'] as String,
        list_image: product['list_image'] as List<String>,
        fabric: product['fabric'] as String,
        delivery: product['delivery'] as String))
    .toList();

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);
