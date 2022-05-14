import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'navigation_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GOLAAZO',
      theme: ThemeData(
        buttonTheme: const ButtonThemeData(buttonColor: Color(0xff041057)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: const Color(0xff041057), onPrimary: Colors.white),
        ),

        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(primary: Colors.black)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff041057),
        ),
        // primarySwatch: Colors.indigo,
      ),
      home: const NavigationPage(),
    );
  }
}
