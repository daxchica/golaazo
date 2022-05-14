import 'package:flutter/material.dart';
import '../net/flutterfire.dart';

class AddView extends StatefulWidget {
  const AddView({Key? key}) : super(key: key);

  @override
  State<AddView> createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  List<String> coins = [
    "Dólares",
    "EU",
  ];
  String dropdownValue = "Dólares";
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AddView'),
        ),
        body: Column(
          children: [
            DropdownButton(
              value: dropdownValue,
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: coins.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.3,
              child: TextFormField(
                controller: _amountController,
                decoration: const InputDecoration(
                    labelText: 'Monto del Pronóstico',
                    contentPadding: EdgeInsets.all(5)),
                keyboardType: const TextInputType.numberWithOptions(),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.indigo),
                child: MaterialButton(
                  onPressed: () async {
                    await addCoin(dropdownValue, _amountController.text);
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Confirmar Monto',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
