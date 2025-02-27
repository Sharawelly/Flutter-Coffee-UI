class CoffeeItem {
  const CoffeeItem({
    required this.name,
    required this.type,
    required this.description,
    required this.image,
    required this.rating,
    required this.price,
    required this.numOfRatingPeople,
    required this.temperature,
  });

  final String name;
  final String type;
  final String description;
  final String image;
  final double rating;
  final double price;
  final int numOfRatingPeople;
  final String temperature;
}
