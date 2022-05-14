import 'package:flutter/material.dart';
import 'news_api_manager.dart';
import 'news_model.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white60,
      child: FutureBuilder<News>(
        future: ApiNewsManager().getNews(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data!.articles.length,
              itemBuilder: (context, index) {
                var height = MediaQuery.of(context).size.height;
                return Card(
                  elevation: 15,
                  child: Row(
                    children: [
                      Image.network(
                        snapshot.data!.articles[index].urlToImage,
                        height: height * 0.08,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              snapshot.data!.articles[index].title,
                              softWrap: true,
                              maxLines: 2,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              color: Colors.black,
                              height: 2,
                            ),
                            Text(
                              snapshot.data!.articles[index].content,
                              softWrap: true,
                              overflow: null,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10)
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
