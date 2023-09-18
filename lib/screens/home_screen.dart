import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokemon/moedls/pokemon_model.dart';
import 'package:pokemon/screens/screen1.dart';
import 'package:pokemon/serviece/dio/dio_helper.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  late PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            DioHelper.dio.get("https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json")
                .then((value) {
                  print(value);
                  var jsonData = json.decode(value.data);
                  pokemonModel = PokemonModel.fromJson(jsonData);
                  print(pokemonModel.pokemon!.length);
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FirstScreen()));
            }).catchError((error){
              print(error);
            });
          },
          child: Text("Get"),
        ),
      ),
    );
  }
}
