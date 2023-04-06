import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:poke/mode/api.dart';


import 'page/main.dart';
import 'page/oneitem.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, dynamic>? pokemonData;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=100&offset=0"));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final data = jsonData["results"];
      Map<String, dynamic> myMap = {};
      for (var prop in data) {
        myMap[prop["name"]] = await fun(prop["url"]);
      }
      setState(() {
        pokemonData = myMap;
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Map<String, dynamic>> fun(url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      Map<String, dynamic> data = {
        'id': jsonData['id'],
        'height': jsonData['height'],
        'weight': jsonData['weight'],
        'sprites': jsonData['sprites']["front_default"],
        'stats_hp':jsonData['stats'][0]["base_stat"],
         'stats_attack':jsonData['stats'][1]["base_stat"],
          'stats_defense':jsonData['stats'][2]["base_stat"],
           'stats_speed':jsonData['stats'][3]["base_stat"],
           'color':jsonData['types'][0]['type']["name"]
      };

      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: 
         pokemonData != null ? first(pokemonData: pokemonData) :Center(child:
         Image.asset(
          'assets/images/me.gif', // replace with the path of your image
          fit: BoxFit.cover,
        ),
        ),

      ),
      initialRoute: '/',
      routes: {
       '/oneitem': (context) =>  oneitem(),
      },
    );
  }
}