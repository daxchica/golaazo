import 'package:flutter/material.dart';

Widget pointStat(int home, int away, int elapsed) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$elapsed'",
          style: const TextStyle(fontSize: 30),
        ),
        const Text('EN JUEGO', style: TextStyle(fontSize: 24)),
        Expanded(
          child: Center(
            child: Text(
              "$home - $away",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 36.0,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
