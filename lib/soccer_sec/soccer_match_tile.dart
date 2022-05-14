import 'package:flutter/material.dart';
import 'package:golaazo/soccer_sec/soccer_model.dart';

Widget soccerMatchTile(SoccerMatch match) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            match.home.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        Image.network(
          match.home.logo,
          width: 36,
        ),
        Expanded(
          child: Text(
            "${match.goal.home} - ${match.goal.away}",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        Image.network(
          match.away.logo,
          width: 36,
        ),
        Expanded(
          child: Text(
            match.away.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
    ),
  );
}
