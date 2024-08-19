import 'package:flutter/material.dart';
import 'package:mobile_app/pages/plans.dart';

class Botnavbar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  const Botnavbar({super.key, required this.currentIndex, required this.onTap});

  @override
  _BotnavbarState createState() => _BotnavbarState();
}

class _BotnavbarState extends State<Botnavbar> {
  void _onitemTapped(int index) {
    if (index == 0) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return const Plans();
      }));
    } else {
      widget.onTap(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
            splashFactory: InkRipple.splashFactory,
            highlightColor: Colors.transparent),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: 'Progress',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profile',
            ),
          ],
          currentIndex: widget.currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: _onitemTapped,
          backgroundColor: Colors.black,
        ));
  }
}
