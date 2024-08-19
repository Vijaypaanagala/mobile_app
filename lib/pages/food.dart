import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  String selCat = "BreakFast";
  

  void updateCategory(String category) {
    setState(() {
      selCat = category;
    });
  }

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
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _build("BreakFast"),
                  const SizedBox(width: 8),
                  _build("Lunch"),
                  const SizedBox(width: 8),
                  _build("Pre-Workout"),
                  const SizedBox(width: 8),
                  _build("Post-Workout"),
                  const SizedBox(width: 8),
                  _build("Dinner"),
                  const SizedBox(width: 8),
                ],
              ),
            ),
            const SizedBox(height: 70),
            if(selCat=="BreakFast") _buildbreakfast(),
             if(selCat=="Lunch") _buildlunch()
            // Add other conditions for different categories here
          ],
        ),
      ),
    );
  }

  Widget _build(String str) {
    bool isActive = str == selCat;
    return SizedBox(
      width: 180,
      child: InkWell(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: isActive
                ? Colors.green
                : const Color.fromARGB(255, 37, 37, 37),
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          onPressed: () {
            updateCategory(str);
          },
          child: Text(
            str,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
 
 
  Widget _buildbreakfast(){
    return Column(
      children: [
        _builditems(
          image:"images/ots.jpg",
          name:"oats with milk and peanut butter"

        ),
       const SizedBox(height: 20,),
         _builditems(
          image:"images/brd.jpg",
          name:"Bread with peanut butter and banana"

        ),
        const SizedBox(height: 20,),
         _builditems(
          image:"images/sal.jpg",
          name:"Fruit salad with honey"

        ),
      ],
    );
  }
   Widget _buildlunch(){
    return Column(
      children: [
        _builditems(
          image:"images/ots.jpg",
          name:"oats with milk and peanut butter"

        ),
       const SizedBox(height: 20,),
         _builditems(
          image:"images/brd.jpg",
          name:"Bread with peanut butter and banana"

        ),
        const SizedBox(height: 20,),
         _builditems(
          image:"images/sal.jpg",
          name:"Fruit salad with honey"

        ),
      ],
    );
  }
 Widget  _builditems( {required image,required String name}){
   return Container(
    width:430,
    height: 150,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white,width:2),
      borderRadius: BorderRadius.circular(10),
    ),
    
    
    child :Row(
    
      children: [
        
        SizedBox(
          height:150,
          width:150,
          child:ClipRRect(
          child: Image.asset(image,fit: BoxFit.cover,),
          ),
        ),
         Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                name,style:const TextStyle(color: Colors.white,fontSize: 16),
                maxLines: 2,
              ),
          
            ),
          ),
         ),
      ],
    )
   );
  }
}
