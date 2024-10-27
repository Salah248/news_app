class ArticleModel {
  ArticleModel(
      {required this.image,
      required this.subtitel,
      required this.titel,
      required this.content});

  final String? image;
  final String titel;
  final String? subtitel;
  final String content;
  factory ArticleModel.fromJson(
      json) // factory name constructor  لو بتعامل مع api من الثوابت
  {
    return ArticleModel(
      image: json['image'],
      subtitel: json['description'],
      titel: json['title'],
      content: json['content'],
    );
  }
}
