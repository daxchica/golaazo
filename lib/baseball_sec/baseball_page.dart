import 'package:flutter/material.dart';
import 'baseball_api_manager.dart';
import 'baseball_model.dart';
import 'baseball_page_body.dart';

class BaseballPage extends StatefulWidget {
  const BaseballPage({Key? key}) : super(key: key);

  @override
  _BaseballPageState createState() => _BaseballPageState();
}

class _BaseballPageState extends State<BaseballPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BASEBALL'),
      ),
      body: Container(
        color: Colors.limeAccent,
        child: FutureBuilder<Iterable>(
            future: BaseballApi().getAllMatches(),
            builder: (context, snapshot) {
              // assert(snapshot != null);
              if (snapshot.hasData) {
                // print('ok data');
                return
                  BaseballPageBody(List<BaseballMatch>.from(snapshot.data!));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }),
      )
    );

  }
}
