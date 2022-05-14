// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'baseball_goalstat.dart';
import 'baseball_match_tile.dart';
import 'baseball_model.dart';
import 'baseball_team_stat.dart';

Widget BaseballPageBody(List<BaseballMatch> allmatches) {
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
            baseballTeamStat(
                'Local', allmatches[0].home.logo, allmatches[0].home.name),
            baseballGoalStat(allmatches[0].goal.home, allmatches[0].goal.away,
                allmatches[0].fixture.status.elapsed),
            baseballTeamStat(
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
                      return baseballMatchTile(allmatches[index]);
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
