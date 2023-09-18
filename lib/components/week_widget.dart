import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Weakness",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                    TextButton(
  onPressed: () {
    // Handle button press
  },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>( 
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    )
  ),
  child: Text(
    'Fire',
    style: TextStyle(
      fontSize: 16.0,
      color: Color.fromARGB(255, 255, 255, 255),
    ),
  ),
),
TextButton(
  onPressed: () {
    // Handle button press
  },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>( 
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    )
  ),
  child: Text(
    'Ice',
    style: TextStyle(
      fontSize: 16.0,
      color: Color.fromARGB(255, 255, 255, 255),
    ),
  ),
),
TextButton(
  onPressed: () {
    // Handle button press
  },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>( 
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    )
  ),
  child: Text(
    'Flying',
    style: TextStyle(
      fontSize: 16.0,
      color: Color.fromARGB(255, 255, 255, 255),
    ),
  ),
),
TextButton(
  onPressed: () {
    // Handle button press
  },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>( 
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    )
  ),
  child: Text(
    'Psychic',
    style: TextStyle(
      fontSize: 16.0,
      color: Color.fromARGB(255, 255, 255, 255),
    ),
  ),
)
            ],),
          ],
        ),
      ),
    );
  }
}