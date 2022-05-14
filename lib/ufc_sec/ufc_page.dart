import 'package:flutter/material.dart';
import 'ufc_api_manager.dart';
import 'ufc_model.dart';
import 'ufc_page_body.dart';

class UfcPage extends StatefulWidget {
  const UfcPage({Key? key}) : super(key: key);

  @override
  _UfcPageState createState() => _UfcPageState();
}

class _UfcPageState extends State<UfcPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UFC'),
      ),
      body: Container(
        color: Colors.amber,
        child: FutureBuilder<Iterable>(
            future: UfcApi().getAllMatches(),
            builder: (context, snapshot) {
              // assert(snapshot != null);
              if (snapshot.hasData) {
                // print('ok data');
                return UfcPageBody(List<UfcMatch>.from(snapshot.data!));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
