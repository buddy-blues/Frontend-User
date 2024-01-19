import 'package:buddy_blues/provider/article_provider.dart';
import 'package:buddy_blues/screens/article/widget/list_article_widget.dart';
import 'package:buddy_blues/widget/basic_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/apiservice.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    // List<Map<String, dynamic>> listArticle = [
    //   {
    //     "title": "Postpartum Blues Can Hit First-Time Dads, Too",
    //     "desc": "HealthDay",
    //     "published": "Published at 10 January 2024",
    //     "image": "assets/images/article1.png"
    //   },
    //   {
    //     "title": "Everyone Can Be A Great Dad",
    //     "desc": "MentalNews",
    //     "published": "Published at 10 January 2024",
    //     "image": "assets/images/article2.png"
    //   },
    //   {
    //     "title": "What To Do if You Have Baby Blues",
    //     "desc": "DailyArticle",
    //     "published": "Published at 10 January 2024",
    //     "image": "assets/images/article3.png"
    //   },
    //   {
    //     "title": "Parenting is As Important As Yourself",
    //     "desc": "MotionFast",
    //     "published": "Published at 10 January 2024",
    //     "image": "assets/images/article4.png"
    //   }
    // ];

    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: BasicAppbar(title: "Articles"),
        ),
        body: ChangeNotifierProvider<ArticlesProvider>(
          create: (_) => ArticlesProvider(apiService: ApiService()),
          child: Consumer<ArticlesProvider>(
          builder: (context, state, _) {
            if (state.state == ResultState.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.state == ResultState.hasData) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 27),
                child: ListView.builder(
                    itemCount: state.result.articles.length,
                    itemBuilder: (context, index) {
                      var data = state.result.articles[index];
                      return ListArticleWidget(
                        title: data.title,
                        desc: data.description ?? 'No further description',
                        published:
                            '${data.publishedAt.day.toString().padLeft(2,'0')} ${Month(data.publishedAt.month)} ${data.publishedAt.year} on ${data.publishedAt.hour.toString().padLeft(2,'0')}:${data.publishedAt.minute.toString().padLeft(2,'0')}',
                        image: data.urlToImage ?? 'https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg',
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/webpage',
                            arguments: data.url,
                          );
                        },
                      );
                    }),
              );
            } else if (state.state == ResultState.noData) {
              return Center(
                child: Material(
                  child: Text(state.message),
                ),
              );
            } else if (state.state == ResultState.error) {
              return Center(
                child: Material(
                  child: Text(state.message),
                ),
              );
            } else {
              return const Center(
                child: Material(
                  child: Text(''),
                ),
              );
            }
          },
        )
        )
    );
  }
  
  String Month(int month){
    switch(month){
      case 1: return 'January';
      case 2: return 'February';
      case 3: return 'March';
      case 4: return 'April';
      case 5: return 'May';
      case 6: return 'June';
      case 7: return 'July';
      case 8: return 'August';
      case 9: return 'September';
      case 10: return 'October';
      case 11: return 'November';
      case 12: return 'December';
      default: return '';
    }
  }
}
