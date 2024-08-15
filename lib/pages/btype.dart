import 'package:flutter/material.dart';
import 'package:mobile_app/pages/ftype.dart';


class Btype extends StatelessWidget {
  const Btype({super.key});

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
           
             const  Text("Select your body type",style: TextStyle(color: Colors.white,fontSize: 30),),
                 const SizedBox(height: 25,),
                 GestureDetector(
                   onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return const Ftype();
                    }));
              },
           child: Container(
              width: 160,
              height: 150,
              decoration:  BoxDecoration(
                image: const DecorationImage(
                  image:  AssetImage("images/b.png"),
                  fit:  BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20)
              ),
            ),
                 ),
            const SizedBox(height: 10,),
            const Text(
              "Fatty",
              style: TextStyle(color: Colors.white,fontSize: 23),
            ),
             const SizedBox(height: 10,),
             GestureDetector(
               onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return const Ftype();
                    }));
              },
           child: Container(
              width: 160,
              height: 150,
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
              "Lean",
              style: TextStyle(color: Colors.white,fontSize: 23),
            ),
             
             const SizedBox(height: 10,),
             GestureDetector(
              onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context){
                      return const Ftype();
                    }));
              },
            child:Container(
              width: 160,
              height: 150,
              decoration:  BoxDecoration(
                image: const DecorationImage(
                  
                  image: AssetImage("images/b1.png"),
                  fit: BoxFit.cover,
                ),
                 borderRadius: BorderRadius.circular(20)
              ),
            ),),
            const SizedBox(height: 10,),
            const Text(
              "Skinny",
              style: TextStyle(color: Colors.white,fontSize: 23),
            )
          ],
        ),
      ),
    );
  }
}
