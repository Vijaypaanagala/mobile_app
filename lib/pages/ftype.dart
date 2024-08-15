import 'package:flutter/material.dart';
import 'package:mobile_app/pages/inpts.dart';


class Ftype extends StatelessWidget {
  const Ftype({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        // title: const Text("Login", style: TextStyle(color: Colors.white)),
      ),
      body: Center(

        child: Column(
          
          children: [
           
             const  Text("choose your goal",style: TextStyle(color: Colors.white,fontSize: 30),),
                 const SizedBox(height: 50,),
                 GestureDetector(
                   onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return const Inputs();
                    }));
              },
           child: Container(
              width: 200,
              height: 200,
              decoration:  BoxDecoration(
                image: const DecorationImage(
                  image:  AssetImage("images/b3.png"),
                  fit:  BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20)
              ),
            ),
                 ),
            const SizedBox(height: 10,),
            const Text(
              "bulk",
              style: TextStyle(color: Colors.white,fontSize: 23),
            ),
             const SizedBox(height: 30,),
             GestureDetector(
               onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return const Inputs();
                    }));
              },
           child: Container(
              width: 200,
              height: 200,
              decoration:  BoxDecoration(
                image:const  DecorationImage(
                  image: AssetImage("images/b.png"),
                  fit: BoxFit.cover,
                ),
                 borderRadius: BorderRadius.circular(20)
              ),
            ),
             ),
            const SizedBox(height: 10,),
            const Text(
              "cut",
              style: TextStyle(color: Colors.white,fontSize: 23),
            ),
             
             
          ],
        ),
      ),
    );
  }
}
