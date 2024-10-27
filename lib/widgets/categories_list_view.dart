import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/business.avif',
      categoryName: 'business',
    ),
    CategoryModel(
      image: 'assets/sports.avif',
      categoryName: 'sports',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'technology',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'entertainment',
    ),
    CategoryModel(
      image: 'assets/general.avif',
      categoryName: 'general',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      categoryName: 'health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      categoryName: 'science',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          }),
    );
  }
}
