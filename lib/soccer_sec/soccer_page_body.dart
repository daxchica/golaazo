import 'soccer_match_tile.dart';
import 'soccer_team_stat.dart';
import 'package:flutter/material.dart';
import 'package:golaazo/soccer_sec/soccer_team_stat.dart';
import 'soccer_goalstat.dart';
import 'soccer_model.dart';

Widget pageBody(List<SoccerMatch> allmatches) {
  return Column(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(40)),
          width: double.infinity,
          child: const Text(
            'Calendario a Jugarse',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.amber,
            // Color(0xff4373d9),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              soccerTeamStat(
                  'Local', allmatches[0].home.logo, allmatches[0].home.name),
              soccerGoalStat(allmatches[0].goal.home, allmatches[0].goal.away,
                  allmatches[0].fixture.status.elapsed),
              soccerTeamStat('Visitante', allmatches[0].away.logo,
                  allmatches[0].away.name),
            ],
          ),
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xff4373d9),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Padding(
            padding: const EdgeInsets.all(
              16,
            ),
            child: Column(
              children: [
                const Text(
                  'RESULTADOS ANTERIORES',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allmatches.length,
                    itemBuilder: (context, index) {
                      return soccerMatchTile(allmatches[index]);
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
