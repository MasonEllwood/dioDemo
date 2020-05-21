import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../models/gmg_recipes_client.dart';

class GMGRecipesProvider with ChangeNotifier {
  List<GMGRecipesClient> _recipesList = [
    GMGRecipesClient(
      content: 'this is a test',
      title: 'this is a test',
      postName: 'this is a test',
      website: 'this is a test',
      prepTime: 'this is a test',
      idleTime: 'this is a test',
      cookTime: 'this is a test',
      pellets: 'this is a test',
      serves: 'this is a test',
      mainImage: 'this is a test',
    ),
  ];

}
