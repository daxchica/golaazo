import 'package:flutter/material.dart';
import 'package:golaazo/soccer_sec/soccer_api_manager.dart';
import 'package:golaazo/soccer_sec/soccer_model.dart';
import 'package:golaazo/soccer_sec/soccer_page_body.dart';

import '../schedule_sec/betboard_page.dart';

class SoccerPage extends StatefulWidget {
  const SoccerPage({Key? key}) : super(key: key);

  @override
  _SoccerPageState createState() => _SoccerPageState();
}

class _SoccerPageState extends State<SoccerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FUTBOL",
        ),
        centerTitle: true,
        actions: [
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
              child: TextButton(
                  child: const Text(
                    'Pronosticar',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BetBoard(),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.green,
        child: FutureBuilder<Iterable>(
            future: SoccerApi().getAllMatches(),
            builder: (context, snapshot) {
              // assert(snapshot != null);
              if (snapshot.hasData) {
                // print('ok data');
                return pageBody(List<SoccerMatch>.from(snapshot.data!));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
