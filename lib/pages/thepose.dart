import 'package:flutter/material.dart';

class Thepose extends StatelessWidget {
  const Thepose({super.key});
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
            Container(
              width: 100,
              height: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/mic.png'),
              )),
            ),
            Container(
              width: 600,
              height: 500,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/posedet.png'),
              )),
            ),
            Container(
              width: 200,
              height: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/record.png'),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
