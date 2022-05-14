import 'package:flutter/material.dart';
import 'betboard2_page.dart';
// import 'package:golaazo/schedule_pages/data_table_page.dart';

class BetBoard extends StatefulWidget {
  const BetBoard({Key? key}) : super(key: key);

  @override
  _BetBoardState createState() => _BetBoardState();
}

class _BetBoardState extends State<BetBoard> {
  int _firstMatch = 0;
  int _secondMatch = 0;
  int _thirdMatch = 0;
  int _fourthMatch = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CALENDARIO DE PRONOSTICOS',
          style: TextStyle(fontSize: 14),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "Saldo Billetera:",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  Text(
                    "USD\$ 20.00",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ],
              ),
            ),
            const Center(child: Text('Valor de apuesta minima: USD\$ 3.00')),
            const Center(child: Text('Apuesta / partido: USD\$ 1.00')),
            const SizedBox(height: 10),
            Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: const [
                      Text(
                        'Calendario de Juegos',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Febrero 20',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: DataTable(
                horizontalMargin: 8,
                columnSpacing: 16,
                columns: const [
                  DataColumn(label: Expanded(child: Text('Gana'))),
                  DataColumn(
                      label: Expanded(
                          child: Text(
                    'Eq. A',
                    textAlign: TextAlign.center,
                  ))),
                  DataColumn(label: Expanded(child: Text('Empate'))),
                  DataColumn(
                      label: Expanded(
                          child: Text(
                    'Eq. B',
                    textAlign: TextAlign.center,
                  ))),
                  DataColumn(label: Expanded(child: Text('Gana')))
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Radio(
                          groupValue: _firstMatch,
                          value: 1,
                          onChanged: handleMatch1,
                        ),
                      ),
                      const DataCell(
                        Text('Delfin SC'),
                      ),
                      DataCell(
                        Radio(
                          groupValue: _firstMatch,
                          value: 2,
                          onChanged: handleMatch1,
                        ),
                      ),
                      const DataCell(
                        Text('Barcelona'),
                      ),
                      DataCell(
                        Radio(
                          groupValue: _firstMatch,
                          value: 3,
                          onChanged: handleMatch1,
                        ),
                      )
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Radio(
                          groupValue: _secondMatch,
                          value: 1,
                          onChanged: handleMatch2,
                        ),
                      ),
                      const DataCell(
                        Text('Técnico U.'),
                      ),
                      DataCell(
                        Radio(
                          groupValue: _secondMatch,
                          value: 2,
                          onChanged: handleMatch2,
                        ),
                      ),
                      const DataCell(
                        Text('9 de Octubre'),
                      ),
                      DataCell(
                        Radio(
                          groupValue: _secondMatch,
                          value: 3,
                          onChanged: handleMatch2,
                        ),
                      )
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Radio(
                          groupValue: _thirdMatch,
                          value: 1,
                          onChanged: handleMatch3,
                        ),
                      ),
                      const DataCell(
                        Text('Mushuc Runa'),
                      ),
                      DataCell(
                        Radio(
                          groupValue: _thirdMatch,
                          value: 2,
                          onChanged: handleMatch3,
                        ),
                      ),
                      const DataCell(
                        Text('U. Católica'),
                      ),
                      DataCell(
                        Radio(
                          groupValue: _thirdMatch,
                          value: 3,
                          onChanged: handleMatch3,
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Radio(
                          groupValue: _fourthMatch,
                          value: 1,
                          onChanged: handleMatch4,
                        ),
                      ),
                      const DataCell(
                        Text('Orense SC'),
                      ),
                      DataCell(
                        Radio(
                          groupValue: _fourthMatch,
                          value: 2,
                          onChanged: handleMatch4,
                        ),
                      ),
                      const DataCell(
                        Text('S.D. Aucas'),
                      ),
                      DataCell(
                        Radio(
                          groupValue: _fourthMatch,
                          value: 3,
                          onChanged: handleMatch4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: ElevatedButton(
                  onPressed: () {
                    resetValues();
                  },
                  child: const Text('BORRAR')),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BetBoardConf(
                          firstMatch: _firstMatch.toString(),
                          secondMatch: _secondMatch.toString(),
                          thirdMatch: _thirdMatch.toString(),
                          fourthMatch: _fourthMatch.toString(),
                        ),
                      ),
                    );
                  },
                  child: const Text('CONFIRMAR')),
            ),
          ],
        ),
      ),
    );
  }

  void handleMatch1(int? value) {
    setState(() {
      _firstMatch = value!;
    });
  }

  void handleMatch2(int? value) {
    setState(() {
      _secondMatch = value!;
    });
  }

  void handleMatch3(int? value) {
    setState(() {
      _thirdMatch = value!;
    });
  }

  void handleMatch4(int? value) {
    setState(() {
      _fourthMatch = value!;
    });
  }

  void resetValues() {
    handleMatch1(0);
    handleMatch2(0);
    handleMatch3(0);
    handleMatch4(0);
  }
}
