import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Inputs extends StatelessWidget {
  const Inputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
         iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child:Center(
        child: Column(
          children: [
           const Text("Enter the details",style: TextStyle(color:Colors.white,fontSize: 30),),
           const SizedBox(height: 70,),
              Container(
                width: 280,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 31, 31, 31),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(40)),
                      hintText: "Height (in cm)",
                      hintStyle: const TextStyle(color: Colors.white,),
                      ),
                ),
              ),
              const SizedBox(height: 40,),
              Container(
                width: 280,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 31, 31, 31),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(40)),
                      hintText: "Weight (in Kgs)",
                      hintStyle: const TextStyle(color: Colors.white,),
                      ),
                ),
              ),
              const SizedBox(height: 40,),
              Container(
                width: 280,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 31, 31, 31),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2.0,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(40)),
                      hintText: "Age",
                      hintStyle: const TextStyle(color: Colors.white,),
                      ),
                ),
              ),const SizedBox(height: 80,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                   padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 8),
                      backgroundColor: Colors.green),
                
                onPressed: (){}, child: const Text("Next",style: TextStyle(color: Colors.white,fontSize: 25),))

        ],),
      )
      )
    );
  }
}