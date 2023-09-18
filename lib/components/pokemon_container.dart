import 'package:flutter/material.dart';

class PokemonContainer extends StatelessWidget {
  late String text;
  late String img;

  PokemonContainer(this.text, this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Color of the shadow
            spreadRadius: 4, // Spread radius
            blurRadius: 9, // Blur radius
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.network(this.img,height: 85,width: 85),
          Text(this.text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),)
          ],
        ),
      ),
    );
  }
}
