import 'package:flutter/material.dart';
import 'package:mobile_app/pages/thepose.dart';
import 'package:mobile_app/pages/workout.dart';

class Workanim extends StatelessWidget {
  const Workanim({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Workout',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/dbanm.png'),
              )),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Inclined DB Bench Press',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w200),
            ),
            const Text(
              'Next: Declined DB Bench Press',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  '00 : 59',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  width: 100,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Thepose();
                    }));
                  },
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('images/cam.png'),
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const Workout();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 9),
                  backgroundColor: Colors.green,
                ),
                child: const Text(
                  'Done',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
