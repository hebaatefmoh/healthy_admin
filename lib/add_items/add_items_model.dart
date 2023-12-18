class Food{
  final String id;
  final String price;
  final String offerprice;
  final String type;
  final String typear;

  final String nameAr;
  final String nameEn;
  final String image;
  final String descriptionAr;
  final String descriptionEn;
  final Map<String, dynamic> nutritionalInfoAr;
  final Map<String, dynamic> nutritionalInfoEn;

  Food({required this.id,  required this.price,required this.offerprice,


    required this.type,
    required this.nameAr,
    required this.nameEn,
    required this.image,
    required this.descriptionAr,
    required this.descriptionEn,
    required this.nutritionalInfoAr,
    required this.nutritionalInfoEn,
    required this.typear,
  }

);
}