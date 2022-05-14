import 'package:flutter/material.dart';
import 'package:golaazo/wallet/ui/authentication.dart';
import 'my_homepage.dart';
import 'soccer_sec/soccer_page.dart';
import 'system_pages/schedule_page.dart';
import 'drawer_sec/navigation_drawer_widget.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int index = 0;
  final screens = [
    const MyHomePage(),
    const Center(
      child: Text('Probs'),
    ),
    const Center(
      child: Text('Picks'),
    ),
    const ScheduleCalendar(),
    const SoccerPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_circle_outline),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Authentication(),
            ),
          );
        },
      ),
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        // leading: const Icon(Icons.menu),
        title: const Text('GOLAAZO'),
      ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          height: 40,
          backgroundColor: Colors.white70,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Inicio',
            ),
            NavigationDestination(
              icon: Icon(Icons.domain_disabled_sharp),
              label: 'Probs',
            ),
            NavigationDestination(
              icon: Icon(Icons.file_copy_sharp),
              label: 'Picks',
            ),
            NavigationDestination(
              icon: Icon(Icons.event_sharp),
              label: 'Calendario',
            ),
            NavigationDestination(
              icon: Icon(Icons.library_books),
              label: 'Comentarios',
            ),
          ],
        ),
      ),
    );
  }
}
