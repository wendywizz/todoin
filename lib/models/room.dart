import 'package:meta/meta.dart';

class Room {
  final String name;
  final int minPrice;
  final int maxPrice;
  final double rating;
  final String introImage;

  Room({
    @required this.name,
    this.minPrice = 0,
    this.maxPrice = 0,
    this.rating = 0,
    this.introImage =
        'https://www.inventech.co.th/wp-content/uploads/2020/01/placeholder.png',
  });
}
