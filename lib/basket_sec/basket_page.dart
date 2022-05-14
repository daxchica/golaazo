import 'package:flutter/material.dart';
import 'basket_api_manager.dart';
import 'basket_model.dart';
import 'basket_page_body.dart';

class BasketballPage extends StatefulWidget {
  const BasketballPage({Key? key}) : super(key: key);

  @override
  _BasketballPageState createState() => _BasketballPageState();
}

class _BasketballPageState extends State<BasketballPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BASKETBALL'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red,
        child: FutureBuilder<Iterable>(
            future: BasketApi().getAllMatches(),
            builder: (context, snapshot) {
              // assert(snapshot != null);
              if (snapshot.hasData) {
                // print('ok data');
                return
                  BasketPageBody(List<BasketMatch>.from(snapshot.data!));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
