import 'package:flutter/material.dart';
import 'dart:convert';

class Pokemon {
  final int id;
  final String name;
  final String photoUrl;
   final String photoUrl2;
   final String photoUrl3;
  final int height;
  final int weight;
   Stats stats;
   final Color color;
   final String category;

  Pokemon( {required this.photoUrl2,
  required this.photoUrl3,
    required this.id,
    required this.name,
     required this.photoUrl, 
     required this.height, 
     required this.weight,
     required this.stats,
     required this.color,
     required this.category,
     });


          
      List<Pokemon> pokemonList = [];


      List<Pokemon> addfun(Pokemon p){
      pokemonList.add(p);
        return pokemonList;

      }

}



class Stats {
  final double hp;
  final double atk;
  final double def;
  final double spd;

 const Stats({required this.hp, required this.atk, required this.def, required this.spd});
}
