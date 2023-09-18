import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/blocs/pokemon_cubit/pokemon_cubit.dart';
import 'package:pokemon/screens/home_screen.dart';

import '../screens/home_screen_2.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => PokemonCubit()..fetchPokemonModelData())
      ],
      child: MaterialApp(
        home: HomeScreen2(),
      ),
    );
  }
}
