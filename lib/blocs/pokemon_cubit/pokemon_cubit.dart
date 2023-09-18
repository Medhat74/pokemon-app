import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:pokemon/moedls/pokemon_model.dart';
import 'package:pokemon/serviece/dio/dio_helper.dart';

part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit() : super(PokemonInitial());

  static PokemonCubit get(context) => BlocProvider.of(context);

  PokemonModel? pokemonModel;
  void fetchPokemonModelData(){
    emit(FetchPokemonDataLoadingState());
    print("value");
      var response = DioHelper.dio.get("https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json")
          .then((value) {
            var jsonData = jsonDecode(value.data);
            pokemonModel = PokemonModel.fromJson(jsonData);
            print(value);
            emit(FetchPokemonDataSuccessState());
      }).catchError((error){
        print(error.toString());
        emit(FetchPokemonDataErrorState(error.toString()));
      });
  }
}
