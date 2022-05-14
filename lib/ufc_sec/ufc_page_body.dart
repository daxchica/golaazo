// ignore_for_file: non_constant_identifier_names

import 'ufc_match_tile.dart';
import 'ufc_teamstat.dart';
import 'package:flutter/material.dart';
import 'ufc_model.dart';
import 'ufc_goalstat.dart';

Widget UfcPageBody(List<UfcMatch> allmatches) {
  return Column(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          height: 30,
          color: Colors.red,
        ),
      ),
      Expanded(
        flex: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ufcTeamStat(
                'Local', allmatches[0].home.logo, allmatches[0].home.name),
            ufcGoalStat(allmatches[0].goal.home, allmatches[0].goal.away,
                allmatches[0].fixture.status.elapsed),
            ufcTeamStat(
                'Visitante', allmatches[0].away.logo, allmatches[0].away.name),
          ],
        ),
      ),
      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff4373d9),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(
              16,
            ),
            child: Column(
              children: [
                const Text(
                  'RESULTADOS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allmatches.length,
                    itemBuilder: (context, index) {
                      return ufcMatchTile(allmatches[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
