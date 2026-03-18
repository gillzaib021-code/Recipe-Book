
import 'package:flutter/material.dart';
import 'package:recipe_book/favourite_screen.dart';
import 'package:recipe_book/model/recipe_model.dart';

import 'details_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List of all recipes with detailed information
  final List<Recipe> allRecipes = [
    Recipe(
      title: 'Pasta',
      subtitle: 'Delicious Italian Pasta',
      imagePath: 'assets/images/Spaghetti_Pasta-removebg-preview.png',
      description: 'Classic Italian pasta with rich tomato sauce and fresh herbs',
      ingredients: '• 400g spaghetti\n• 4 tomatoes, chopped\n• 3 garlic cloves\n• Fresh basil\n• Olive oil\n• Salt and pepper',
      instructions: '1. Boil pasta in salted water\n2. Sauté garlic in olive oil\n3. Add tomatoes and cook\n4. Mix with pasta\n5. Garnish with basil',
      prepTime: 10,
      cookTime: 15,
      rating: 4.5,
    ),
    Recipe(
      title: 'Cheeseburger',
      subtitle: 'Juicy burger with cheese, lettuce, and tomato',
      imagePath: 'assets/images/Cheeseburger.png',
      description: 'Classic American cheeseburger with all the fixings',
      ingredients: '• 500g ground beef\n• 4 burger buns\n• 4 cheese slices\n• Lettuce\n• Tomato slices\n• Onion\n• Ketchup and mustard',
      instructions: '1. Form beef into patties\n2. Grill patties\n3. Add cheese to melt\n4. Toast buns\n5. Assemble with toppings',
      prepTime: 15,
      cookTime: 10,
      rating: 4.8,
    ),
    Recipe(
      title: 'Pepperoni Pizza',
      subtitle: 'Thin crust pizza with pepperoni slices and cheese',
      imagePath: 'assets/images/Pepperoni Pizza.png',
      description: 'Crispy thin crust pizza topped with pepperoni and mozzarella',
      ingredients: '• Pizza dough\n• 200g tomato sauce\n• 250g mozzarella\n• 100g pepperoni\n• Oregano\n• Olive oil',
      instructions: '1. Roll out dough\n2. Spread sauce\n3. Add cheese and pepperoni\n4. Bake at 220°C for 15min\n5. Sprinkle oregano',
      prepTime: 20,
      cookTime: 15,
      rating: 4.7,
    ),
    Recipe(
      title: 'Grilled Steak',
      subtitle: 'Sliced grilled steak with roasted potatoes and tomatoes',
      imagePath: 'assets/images/Grilled Steak.jpeg',
      description: 'Perfectly grilled steak with rosemary and garlic',
      ingredients: '• 2 ribeye steaks\n• 4 potatoes\n• Cherry tomatoes\n• Rosemary\n• Garlic\n• Butter\n• Salt and pepper',
      instructions: '1. Season steaks\n2. Grill to desired doneness\n3. Roast potatoes\n4. Rest steak\n5. Serve with vegetables',
      prepTime: 10,
      cookTime: 20,
      rating: 4.9,
    ),
    Recipe(
      title: 'Fresh Salad',
      subtitle: 'Mixed greens, cucumber, cherry tomatoes, corn, and feta',
      imagePath: 'assets/images/Fresh Salad.png',
      description: 'Healthy and refreshing garden salad with feta cheese',
      ingredients: '• Mixed lettuce\n• Cucumber\n• Cherry tomatoes\n• Corn kernels\n• Feta cheese\n• Olive oil\n• Lemon juice',
      instructions: '1. Wash and chop vegetables\n2. Combine in bowl\n3. Add corn and feta\n4. Dress with oil and lemon\n5. Toss gently',
      prepTime: 10,
      cookTime: 0,
      rating: 4.3,
    ),
    Recipe(
      title: 'Chicken Curry',
      subtitle: 'Chicken pieces in rich spicy curry sauce',
      imagePath: 'assets/images/Chicken Curry.png',
      description: 'Aromatic chicken curry with Indian spices',
      ingredients: '• 500g chicken\n• 2 onions\n• 3 tomatoes\n• Ginger-garlic paste\n• Curry powder\n• Coconut milk\n• Cilantro',
      instructions: '1. Sauté onions and spices\n2. Add chicken\n3. Add tomatoes\n4. Simmer with coconut milk\n5. Garnish with cilantro',
      prepTime: 15,
      cookTime: 30,
      rating: 4.6,
    ),
    Recipe(
      title: 'Roasted Lamb',
      subtitle: 'Sliced roasted lamb with rosemary and roasted veggies',
      imagePath: 'assets/images/Roasted lamba.png',
      description: 'Tender roasted lamb with herbs and vegetables',
      ingredients: '• 1kg leg of lamb\n• Rosemary\n• Thyme\n• Garlic\n• Potatoes\n• Carrots\n• Red wine',
      instructions: '1. Marinate lamb with herbs\n2. Roast at 180°C\n3. Add vegetables\n4. Rest before slicing\n5. Serve with gravy',
      prepTime: 20,
      cookTime: 90,
      rating: 4.8,
    ),
    Recipe(
      title: 'Baked Chicken with Veggies',
      subtitle: 'Herb baked chicken with cherry tomatoes and potatoes',
      imagePath: 'assets/images/Baked Chicken with Veggies.png',
      description: 'One-pan baked chicken with Mediterranean vegetables',
      ingredients: '• 4 chicken thighs\n• Baby potatoes\n• Cherry tomatoes\n• Red onion\n• Rosemary\n• Olive oil\n• Lemon',
      instructions: '1. Season chicken\n2. Arrange vegetables\n3. Drizzle with oil\n4. Bake at 200°C\n5. Squeeze lemon before serving',
      prepTime: 15,
      cookTime: 45,
      rating: 4.5,
    ),
    Recipe(
      title: 'Tacos',
      subtitle: 'Stuffed soft shell tacos with vegetables and corn',
      imagePath: 'assets/images/Tacos.png',
      description: 'Mexican-style soft tacos with fresh toppings',
      ingredients: '• 8 soft tortillas\n• 400g ground beef\n• Taco seasoning\n• Lettuce\n• Corn\n• Sour cream\n• Salsa',
      instructions: '1. Cook beef with seasoning\n2. Warm tortillas\n3. Add beef\n4. Top with vegetables\n5. Serve with salsa',
      prepTime: 10,
      cookTime: 15,
      rating: 4.4,
    ),
    Recipe(
      title: 'Chocolate Chip Cookies',
      subtitle: 'Stack of classic chocolate chip cookies',
      imagePath: 'assets/images/Chocolate Chip Cookies.png',
      description: 'Soft and chewy chocolate chip cookies',
      ingredients: '• 225g butter\n• 200g brown sugar\n• 100g white sugar\n• 2 eggs\n• 350g flour\n• 300g chocolate chips\n• Vanilla',
      instructions: '1. Cream butter and sugars\n2. Add eggs and vanilla\n3. Mix in dry ingredients\n4. Fold in chocolate chips\n5. Bake at 180°C for 12min',
      prepTime: 15,
      cookTime: 12,
      rating: 4.9,
    ),
  ];

  List<Recipe> filteredRecipes = [];
  List<Recipe> favoriteRecipes = [];
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredRecipes = allRecipes;
    searchController.addListener(filterRecipes);
  }

  @override
  void dispose() {
    searchController.removeListener(filterRecipes);
    searchController.dispose();
    super.dispose();
  }

  void filterRecipes() {
    String query = searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        filteredRecipes = allRecipes;
      } else {
        filteredRecipes = allRecipes.where((recipe) {
          return recipe.title.toLowerCase().contains(query) ||
                 recipe.subtitle.toLowerCase().contains(query);
        }).toList();
      }
    });
  }

  void toggleFavorite(Recipe recipe) {
    setState(() {
      if (favoriteRecipes.contains(recipe)) {
        favoriteRecipes.remove(recipe);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${recipe.title} removed from favorites'),
            duration: const Duration(seconds: 1),
            backgroundColor: Colors.red,
          ),
        );
      } else {
        favoriteRecipes.add(recipe);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${recipe.title} added to favorites'),
            duration: const Duration(seconds: 1),
            backgroundColor: Colors.green,
          ),
        );
      }
    });
  }

  bool isFavorite(Recipe recipe) {
    return favoriteRecipes.contains(recipe);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Recipe Book',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: [
          // Favorites button in app bar
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FavoritesScreen(
                        favoriteRecipes: favoriteRecipes,
                        onToggleFavorite: toggleFavorite,
                      ),
                    ),
              );
                },
              ),
              if (favoriteRecipes.isNotEmpty)
                Positioned(
                  right: 5,
                  top: 5,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      favoriteRecipes.length.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search Recipe....',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          searchController.clear();
                        },
                      )
                    : null,
                border: const OutlineInputBorder(),
              ),
              onChanged: (value) {
                filterRecipes();
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  '${filteredRecipes.length} ${filteredRecipes.length == 1 ? 'recipe' : 'recipes'} found',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          Expanded(
            child: filteredRecipes.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 64,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'No recipes found',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Try searching with different keywords',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: filteredRecipes.length,
                    itemBuilder: (context, index) {
                      final recipe = filteredRecipes[index];
                      return Column(
                        children: [
                          ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                recipe.imagePath,
                                height: 50,
                                width: 65,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    height: 50,
                                    width: 65,
                                    color: Colors.grey[300],
                                    child: const Icon(Icons.restaurant, color: Colors.grey),
                                  );
                                },
                              ),
                            ),
                            title: Text(
                              recipe.title,
                              style: const TextStyle(fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(recipe.subtitle),
                            trailing: IconButton(
                              icon: Icon(
                                isFavorite(recipe) ? Icons.favorite : Icons.favorite_border,
                                color: isFavorite(recipe) ? Colors.red : null,
                              ),
                              onPressed: () => toggleFavorite(recipe),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                    recipe: recipe,
                                    isFavorite: isFavorite(recipe),
                                    onToggleFavorite: () => toggleFavorite(recipe),
                                  ),
                                ),
                              );
                            },
                          ),
                          if (index < filteredRecipes.length - 1) const Divider(),
                        ],
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}