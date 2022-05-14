import 'package:flutter/material.dart';
import 'basket_sec/basket_page.dart';
import 'soccer_sec/soccer_page.dart';
import 'ufc_sec/ufc_page.dart';
import 'baseball_sec/baseball_page.dart';
import 'news_sec/news_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SoccerPage(),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.sports_soccer_outlined,
                          size: 32,
                        ),
                        Text(
                          'FUTBOL',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const BasketballPage(),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.sports_basketball_outlined,
                          size: 32,
                        ),
                        Text(
                          'BASKET',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const BaseballPage(),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.sports_baseball_outlined,
                          size: 32,
                        ),
                        Text(
                          'BASEBALL',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const UfcPage(),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.sports_mma_outlined,
                          size: 32,
                        ),
                        Text(
                          'UFC',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => const UfcPage(),
                      //   ),
                      // );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.sports_tennis_outlined,
                          size: 32,
                        ),
                        Text(
                          'Tenis',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Card(
            elevation: 20,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Text(
                  'NOTICIAS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ),
          const Expanded(child: NewsPage()),
        ],
      ),
    );
  }
}
