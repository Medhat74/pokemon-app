import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text("Types", style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                  fontWeight: FontWeight.bold,
              ),),
            )
     ,Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           ElevatedButton(
             onPressed: () {
               // Button logic
             },
             style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30),
               ),
               backgroundColor: Colors.orange[400],
             ),
             child: Text('Grass',style: TextStyle(
    color: Colors.black,),),
           ),
           ElevatedButton(
             onPressed: () {
               // Button logic
             },
             style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30),
               ),
               backgroundColor: Colors.orange[400],
             ),
             child: Text('Poison' ,style: TextStyle(
               color: Colors.black,),),
           ),
         ],
     )
          ],
        ),
      ),
    );
  }
}
