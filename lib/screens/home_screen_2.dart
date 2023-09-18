import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/blocs/pokemon_cubit/pokemon_cubit.dart';
import 'package:pokemon/blocs/pokemon_cubit/pokemon_cubit.dart';

import '../components/pokemon_container.dart';

class HomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Poke App'),
      ),
      body: BlocConsumer<PokemonCubit, PokemonState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = PokemonCubit.get(context);
          if (state is FetchPokemonDataLoadingState){
            return const Center(child: CircularProgressIndicator());
          }
          else if(state is FetchPokemonDataSuccessState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PokemonContainer(cubit.pokemonModel!.pokemon![0].name!,
                        cubit.pokemonModel!.pokemon![0].img!
                        ),
                    PokemonContainer(cubit.pokemonModel!.pokemon![1].name!,
                        cubit.pokemonModel!.pokemon![1].img!),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PokemonContainer(cubit.pokemonModel!.pokemon![2].name!,
                        cubit.pokemonModel!.pokemon![2].img!),
                    PokemonContainer(cubit.pokemonModel!.pokemon![3].name!,
                        cubit.pokemonModel!.pokemon![3].img!),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PokemonContainer(cubit.pokemonModel!.pokemon![4].name!,
                        cubit.pokemonModel!.pokemon![4].img!),
                    PokemonContainer(cubit.pokemonModel!.pokemon![5].name!,
                        cubit.pokemonModel!.pokemon![5].img!),
                  ],
                ),
                /*Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(

              onPressed: () {
                // Button action
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(20), // Adjust the padding as needed
                primary: Colors.blue, // Button background color
              ),
              child: Icon(
                Icons.refresh,
                size: 25, // Adjust the icon size as needed
              ),
            ),
          ),*/
              ],
            );
          }else if(state is FetchPokemonDataErrorState) {
            return Center(child:  Text(state.error),);
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
