import 'dart:ui';

class Food {
  String name;
  String price;
  String image;

  Food({
    required this.name,
    required this.price,
    required this.image,
  });

  String get _name => name;
  String get _price => price;
  String get _image => image;

}
