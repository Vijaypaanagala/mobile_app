import 'package:flutter/material.dart';
import 'package:mobile_app/pages/btype.dart';
import 'package:mobile_app/pages/sign.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Login", style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Welcome back",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
             const SizedBox(height: 10,),
              const Text(
                'enter your credentials to login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto'),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 330,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 31, 31, 31),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
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
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter your Email",
                      hintStyle: const TextStyle(color: Colors.white),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.white,
                      )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 330,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 31, 31, 31),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
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
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.white),
                      prefixIcon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.white,
                      )),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 90, vertical: 8),
                      backgroundColor: Colors.green),
                  onPressed: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                        return const Btype();
                      }));
                  },
                  child: const Text("Login",
                      style: TextStyle(color: Colors.white, fontSize: 30))),
              const SizedBox(
                height: 40,
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text(
                    "Don't have an account ?",
                    style: TextStyle(color: Colors.white,fontSize: 21),
                  ),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                        return const Sign();
                      }));
                    },
                   child: const Text(
                "Sign up",
                style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 21),
              )
                    
                  )
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
