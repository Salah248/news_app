import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({super.key, required this.article});
  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            article.image ??
                'https://th.bing.com/th/id/OIG4.5J7iAGpHfOVXCpOd2O99?pid=ImgGn',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Image.network(
                'https://th.bing.com/th/id/OIG4.5J7iAGpHfOVXCpOd2O99?pid=ImgGn',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          article.titel,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          article.subtitel ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),
        )
      ],
    );
  }
}
