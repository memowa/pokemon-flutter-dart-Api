    import 'package:poke/mode/api.dart';






 List<Pokemon> pokemonList = [];

List<Pokemon> get(){
  return pokemonList;
}




Pokemon jumpToNextItem(Pokemon currentPokemon) {
  int currentIndex = pokemonList.indexOf(currentPokemon); // Get the index of the current Pokemon
  if (currentIndex < pokemonList.length - 1) { // Check if there's a next item
    currentIndex++; // Increment the current index
  }
  return pokemonList[currentIndex]; // Return the next Pokemon object
}

Pokemon jumpToPreviousItem(Pokemon currentPokemon) {
  int currentIndex = pokemonList.indexOf(currentPokemon); // Get the index of the current Pokemon
  if (currentIndex > 0) { // Check if there's a previous item
    currentIndex--; // Decrement the current index
  }
  return pokemonList[currentIndex]; // Return the previous Pokemon object
}

List<Pokemon> addPokemon(Pokemon p){
pokemonList.add(p);
  return pokemonList;

}


