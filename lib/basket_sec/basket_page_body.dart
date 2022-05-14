// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'basket_goalstat.dart';
import 'basket_match_tile.dart';
import 'basket_model.dart';
import 'basket_team_stat.dart';

Widget BasketPageBody(List<BasketMatch> allmatches) {
  return Column(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          width: double.infinity,
          child: const Text(
            'Calendario a Jugarse',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          color: Colors.red[300],
        ),
      ),
      Expanded(
        flex: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            basketTeamStat(
                'Local', allmatches[0].home.logo, allmatches[0].home.name),
            basketGoalStat(allmatches[0].goal.home, allmatches[0].goal.away,
                allmatches[0].fixture.status.elapsed),
            basketTeamStat(
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
                      return basketMatchTile(allmatches[index]);
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
