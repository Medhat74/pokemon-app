import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Container(
              height: 400,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade50),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            )
        ),
        Positioned(
          top: 50,
          left: 80,
          child: Image.network('http://www.serebii.net/pokemongo/pokemon/001.png'),
        )
      ],
    );
  }
}
