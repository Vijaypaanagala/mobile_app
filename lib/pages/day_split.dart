import 'package:flutter/material.dart';
import 'package:mobile_app/pages/botnavbar.dart';
import 'package:mobile_app/pages/workout.dart';

class DaySplit extends StatelessWidget {
  const DaySplit({super.key});
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Workouts',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const Workout();
                }));
              },
              child: Daycontainer(
                day: 'Day 1',
              ),
            ),
            const SizedBox(height: 10),
            Daycontainer(day: 'Day 2'),
            const SizedBox(height: 10),
            Daycontainer(day: 'Day 3'),
            const SizedBox(height: 10),
            Daycontainer(day: 'Day 4'),
            const SizedBox(height: 10),
            Daycontainer(day: 'Day 5'),
            const SizedBox(height: 10),
            Daycontainer(day: 'Day 6'),
            const SizedBox(height: 10),
            Daycontainer(day: 'Day 7'),
          ],
        ),
      ),
      // Positioned(
      //   left: 16,
      //   top: 16,
      //   child: IconButton(
      //     icon: Icon(Icons.arrow_back, color: Colors.white),
      //     onPressed: () {
      //       // Handle navigation to the previous page
      //       Navigator.of(context).pop();
      //     },
      //   ),
      // ),

      bottomNavigationBar: Botnavbar(
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}

class Daycontainer extends StatelessWidget {
  final String day;
  Daycontainer({required this.day});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFF29E33C),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          day,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
