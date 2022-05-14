import 'package:flutter/material.dart';
import 'package:golaazo/wallet/ui/wallet.dart';

import '../net/flutterfire.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GOLAAZO"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.indigo),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                style: const TextStyle(fontSize: 18, color: Colors.white),
                textAlign: TextAlign.center,
                controller: _emailField,
                decoration: const InputDecoration(
                    hintText: "something@email.com",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                controller: _passwordField,
                textAlign: TextAlign.center,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "password",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    labelText: "Contraseña",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await register(_emailField.text, _passwordField.text);
                  if (shouldNavigate) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Wallet(),
                      ),
                    );
                  } else {}
                },
                child: const Text('Registrarse'),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await signIn(_emailField.text, _passwordField.text);
                  if (shouldNavigate) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Wallet(),
                      ),
                    );
                  }
                },
                child: const Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
