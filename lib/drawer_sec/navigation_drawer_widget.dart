import 'package:flutter/material.dart';
import '../system_pages/betguide_page.dart';
import '../system_pages/help_page.dart';
import '../system_pages/legal_page.dart';
import '../wallet/ui/authentication.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color(0xff041057),
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            Image.asset('images/app_logos/golazo_bn_logo.png',
                height: 70, alignment: Alignment.centerLeft),
            const Divider(color: Colors.white70),
            buildMenuItem(
              text: 'Log In',
              icon: Icons.login_outlined,
              onClicked: () => selectedItem(context, 1),
              onPush: () {},
            ),
            buildMenuItem(
              text: 'Guía de Apuestas',
              icon: Icons.library_books_outlined,
              onClicked: () => selectedItem(context, 2),
              onPush: () {},
            ),
            buildMenuItem(
              text: 'Licencias Legales',
              icon: Icons.location_on_outlined,
              onClicked: () => selectedItem(context, 3),
              onPush: () {},
            ),
            buildMenuItem(
              text: 'Ayuda',
              icon: Icons.help_center_outlined,
              onClicked: () => selectedItem(context, 4),
              onPush: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
    required void Function() onPush,
  }) {
    const color = Colors.white;
    const hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: const TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Authentication(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const BetGuidePage(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const LegalPage(),
          ),
        );
        break;
      case 4:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const HelpPage(),
          ),
        );
        break;
    }
  }
}
