import 'package:flutter/material.dart';

class Mealhome extends StatelessWidget {
  const Mealhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Explore",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Your meal plan is here",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 70),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 53, 52, 52),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
                onPressed: () {},
                child: const Text(
                  "Breakfast",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 53, 52, 52),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
                onPressed: () {},
                child: const Text(
                  "Lunch",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 53, 52, 52),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
                onPressed: () {},
                child: const Text(
                  "Pre-Workout",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 53, 52, 52),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
                onPressed: () {},
                child: const Text(
                  "Post-Workout",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 53, 52, 52),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                ),
                onPressed: () {},
                child: const Text(
                  "Dinner",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
     
    );
  }
}
