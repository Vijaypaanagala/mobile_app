import 'package:flutter/material.dart';
import 'package:mobile_app/pages/botnavbar.dart';
import 'day_split.dart';

class Plans extends StatelessWidget {
  const Plans({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const DaySplit();
                }));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 84, 85, 86),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(200, 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40))),
              child: const Text('Workout Plan', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const DaySplit();
                }));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 84, 85, 86),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(200, 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40))),
              child:
                  const Text('Nutrition Plan', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Theme(
      //   data: Theme.of(context).copyWith(
      //     canvasColor: Colors.black,
      //   ),
      //   child: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.search),
      //         label: 'Search',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.newspaper),
      //         label: 'Progress',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.account_box),
      //         label: 'Profile',
      //       ),
      //     ],
      //     currentIndex: _selectedIndex,
      //     selectedItemColor: Colors.white,
      //     unselectedItemColor: Colors.grey,
      //     onTap: _onTapped,
      //   ),
      // ),
      bottomNavigationBar: Botnavbar(
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}
