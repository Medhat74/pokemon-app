part of 'pokemon_cubit.dart';

@immutable
abstract class PokemonState {}

class PokemonInitial extends PokemonState {}

class FetchPokemonDataLoadingState extends PokemonState {}
class FetchPokemonDataErrorState extends PokemonState {
  String error;

  FetchPokemonDataErrorState(this.error);
}
class FetchPokemonDataSuccessState extends PokemonState {}
