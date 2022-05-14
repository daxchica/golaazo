import 'package:flutter/material.dart';
import '../wallet/ui/authentication.dart';

// ignore: must_be_immutable
class BetBoardConf extends StatelessWidget {
  var firstMatch = '';
  var secondMatch = '';
  var thirdMatch = '';
  var fourthMatch = '';

  BetBoardConf(
      {Key? key,
      required this.firstMatch,
      required this.secondMatch,
      required this.thirdMatch,
      required this.fourthMatch})
      : super(key: key);

  // TextEditingController betQty = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BetBoardConf'),
      ),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(height: 15),
            // first Match
            SizedBox(
              width: double.infinity,
              child: Card(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.green[400],
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const Text(
                          'Resultado de Primer Partido',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 15),
                        Text(firstMatch)
                      ],
                    ),
                  )),
            ),
            const SizedBox(height: 25),
            // second Match
            SizedBox(
              width: double.infinity,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.green[400],
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const Text('Resultado de Segundo Partido',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15),
                      Text(secondMatch)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            // third Match
            SizedBox(
              width: double.infinity,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.green[400],
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      const Text('Resultado de Tercer Partido',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15),
                      Text(thirdMatch)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            // fourth Match
            SizedBox(
              width: double.infinity,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.green[400],
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      const Text('Resultado de Cuarto Partido',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15),
                      Text(fourthMatch)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: 200,
              child: Card(
                // margin: const EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text("Cantidad de Pronósticos: "),
                            Text('4'),
                          ],
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          textAlign: TextAlign.center,
                          controller: TextEditingController(),
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Ingresar Valor Total de Pronóstico'),
                        ),
                      ]),
                ),
              ),
            ),

            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 15,
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'SUBIR PRONÓSTICO',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Authentication(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
