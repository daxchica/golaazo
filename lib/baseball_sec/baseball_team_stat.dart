import 'package:flutter/material.dart';

Widget baseballTeamStat(String team, String logo, String teamName) {
  return Expanded(
    child: Column(
      children: [
        const SizedBox(
          height: 18,
        ),
        Text(
          team,
          softWrap: true,
          style: const TextStyle(fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
        Expanded(
          child: Image.network(
            logo,
            width: 54,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          teamName,
          softWrap: true,
          style: const TextStyle(
            fontSize: 18.0,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        )
      ],
    ),
  );
}
