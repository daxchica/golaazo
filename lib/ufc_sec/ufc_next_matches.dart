import 'package:flutter/material.dart';

class UfcNextMatches extends StatefulWidget {
  const UfcNextMatches({Key? key}) : super(key: key);

  @override
  _UfcNextMatchesState createState() => _UfcNextMatchesState();
}

class _UfcNextMatchesState extends State<UfcNextMatches> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 150,
            color: Colors.orangeAccent,
            child: OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        '20-FEB-22',
                        textAlign: TextAlign.end,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Image.asset('images/teams/delfin_sc_logo.png'),
                        ),
                        const SizedBox(width: 5),
                        Flexible(
                          child:
                              Image.asset('images/teams/barcelona_sc_logo.png'),
                        ),
                      ],
                    ),
                    const Text('Liga Pro'),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                        ]),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 150,
            color: const Color(0xff629adc),
            child: OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        '20-FEB-22',
                        textAlign: TextAlign.end,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Image.asset(
                              'images/teams/tecnico_universitario.png'),
                        ),
                        const SizedBox(width: 5),
                        Flexible(
                          child: Image.asset(
                              'images/teams/club_9_octubre_logo.png'),
                        ),
                      ],
                    ),
                    const Text('Liga Pro'),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                        ]),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 150,
            color: const Color(0xffc4c234),
            child: OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        '20-FEB-22',
                        textAlign: TextAlign.end,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Image.asset('images/teams/mushuc_runa_sc.png'),
                        ),
                        const SizedBox(width: 5),
                        Flexible(
                          child: Image.asset('images/teams/logo_catolica.png'),
                        ),
                      ],
                    ),
                    const Text('Liga Pro'),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                        ]),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 150,
            color: const Color(0xffeb9def),
            child: OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        '20-FEB-22',
                        textAlign: TextAlign.end,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Image.asset('images/teams/orense_sc.png'),
                        ),
                        const SizedBox(width: 5),
                        Flexible(
                          child: Image.asset('images/teams/aucas_400x400.png'),
                        ),
                      ],
                    ),
                    const Text('Liga Pro'),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                        ]),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 150,
            color: Colors.yellow,
            child: OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        '20-FEB-22',
                        textAlign: TextAlign.end,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Image.asset('images/teams/cumbaya_logo.png'),
                        ),
                        const SizedBox(width: 5),
                        Flexible(
                          child: Image.asset('images/teams/delvalle_logo.png'),
                        ),
                      ],
                    ),
                    const Text('Liga Pro'),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                        ]),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 150,
            color: const Color(0xff3bff89),
            child: OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        '20-FEB-22',
                        textAlign: TextAlign.end,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Image.asset('images/teams/csemelec_logo.png'),
                        ),
                        const SizedBox(width: 5),
                        Flexible(
                          child:
                              Image.asset('images/teams/macara_logo.png'),
                        ),
                      ],
                    ),
                    const Text('Liga Pro'),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                        ]),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 150,
            color: const Color(0xffEF4024),
            child: OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        '20-FEB-22',
                        textAlign: TextAlign.end,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Image.asset('images/teams/gquilcity_logo.png'),
                        ),
                        const SizedBox(width: 5),
                        Flexible(
                          child: Image.asset(
                              'images/teams/deportivo_cuenca_logo.png'),
                        ),
                      ],
                    ),
                    const Text('Liga Pro'),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                        ]),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 150,
            color: Colors.yellow,
            child: OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        '20-FEB-22',
                        textAlign: TextAlign.end,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Image.asset('images/teams/ldu_quito_logo.png'),
                        ),
                        const SizedBox(width: 5),
                        Flexible(
                          child:
                              Image.asset('images/teams/gualaceo_sc_logo.png'),
                        ),
                      ],
                    ),
                    const Text('Liga Pro'),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                          Text('-', style: TextStyle(fontSize: 45)),
                        ]),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
