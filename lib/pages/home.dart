import 'package:flutter/material.dart';
import 'login.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/img1.png"), 
              fit: BoxFit.cover,
            ),
          ),
          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 560), // Spacer to adjust the position of the text
                const Text(
                  "MissionFit",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
               const  SizedBox(height: 30), // Spacer to adjust the gap between text and button
                ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 25),
                  backgroundColor: Colors.green
                 ),
                  onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return const Login();
                    })
                  ); // Action when the button is pressed
                  },
                  child:const  Text('Get Started',style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                    
                    
                  ),), // Text displayed on the button
                ),
              ],
            ),
          ),
        ),
      );
  }
}