import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'News',
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              TextSpan(
                text: 'Cloud',
                style: TextStyle(color: Colors.orange, fontSize: 22),
              ),
            ],
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),

        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 32,
        //     ),
        //     Expanded(child: NewsListview())
        //   ],
        // ),
      ),
    );
  }
}
