class Recipe {
  final String title;
  final String subtitle;
  final String imagePath;
  final String description;
  final String ingredients;
  final String instructions;
  final int prepTime;
  final int cookTime;
  final double rating;

  Recipe({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.description = '',
    this.ingredients = '',
    this.instructions = '',
    this.prepTime = 0,
    this.cookTime = 0,
    this.rating = 0.0,
  });

  // Copy with method for updating favorites
  Recipe copyWith({
    String? title,
    String? subtitle,
    String? imagePath,
    String? description,
    String? ingredients,
    String? instructions,
    int? prepTime,
    int? cookTime,
    double? rating,
  }) {
    return Recipe(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      imagePath: imagePath ?? this.imagePath,
      description: description ?? this.description,
      ingredients: ingredients ?? this.ingredients,
      instructions: instructions ?? this.instructions,
      prepTime: prepTime ?? this.prepTime,
      cookTime: cookTime ?? this.cookTime,
      rating: rating ?? this.rating,
    );
  }
}