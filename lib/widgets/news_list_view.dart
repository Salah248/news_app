import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_container.dart';

class NewsListview extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListview({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsContainer(
              article: articles[index],
            ),
          );
        },
      ),
    );
  }
}
