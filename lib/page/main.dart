import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


import '../mode/api.dart';
import '../mode/pokemon.dart';
import 'funcolor.dart';
import 'items.dart';
import 'lis.dart';

class first extends StatelessWidget {
  

  final Map<String, dynamic>? pokemonData;
  
  const first({Key? key, required this.pokemonData}) : super(key: key);

  

 


  @override
  Widget build(BuildContext context) {
 




  pokemonData!.forEach((key, value) {
  
    if(value['id']>9){
      
    Pokemon pokemon = Pokemon(
      id: value['id'],
      name: key,
      height: value['height'],
      weight: value['weight'],
      photoUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/0"+value['id'].toString()+".png", 
      stats:Stats(hp: value['stats_hp']/200, atk: value['stats_attack']/200, def: value['stats_defense']/200, spd: value['stats_speed']/200), 
      photoUrl2: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/'+(value['id']+1).toString()+'.gif', 
      color: funcolor(value['color']), 
      category: value['color'].toString(),
       photoUrl3: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/'+(value['id']-1).toString()+'.gif' ,   
    );
        addPokemon(pokemon);
    }else{
Pokemon pokemon = Pokemon(
      id: value['id'],
      name: key,
      height: value['height'],
      weight: value['weight'],
      photoUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/00"+value['id'].toString()+".png",  
      stats:Stats(hp: value['stats_hp']/200, atk: value['stats_attack']/200, def: value['stats_defense']/200, spd: value['stats_speed']/200  ) ,  
      photoUrl2: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/'+(value['id']+1).toString()+'.gif', 
      color: funcolor(value['color']), 
      category: value['color'].toString(),
       photoUrl3: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/'+(value['id']-1).toString()+'.gif' , 
      );

          addPokemon(pokemon);
    }

  });



    return Scaffold(
      appBar: homeApp(),
       backgroundColor: Color.fromARGB(255, 255, 247, 247),
      body: 
       GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
      children:pokemonList.map((e) => 
      item(okemon: e)).toList() ,
      ),

    );

  }


   AppBar homeApp() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 117, 113, 113),
      elevation: 0,
      title: Text("POKEMON RIDA"),
      centerTitle: true,
      
    );
  }


}
/*mine(routess).map((e) => 
      item(okemon: e)).toList(),
      
      
       GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
      children:  Category_data.map((e) => 
      item(okemon: e)).toList() ,
      ),
      
     
  List<Pokemon> mine(Map<String, dynamic> data) {
  List<Pokemon> pokemonList = [];

  data.forEach((key, value) {
    Pokemon pokemon = Pokemon(
      id: value['id'].toString(),
      name: key,
      height: value['height'],
      weight: value['weight'],
      photoUrl: value['sprites']?['front_default'], // add null check
    );
    pokemonList.add(pokemon);
  });

  return pokemonList;
} 
      
       */