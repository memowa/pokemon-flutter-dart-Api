import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:convert';

import '../mode/api.dart';
import 'lis.dart';



class oneitem extends StatelessWidget {
    final String apiUrl = "https://gorest.co.in/public/v1/users";

      late final Pokemon okemon;





 void test(BuildContext context){
          Navigator.of(context).pushNamed("/oneitem",
          arguments:   jumpToNextItem(okemon));
        }

         void pre(BuildContext context){
          Navigator.of(context).pushNamed("/oneitem",
          arguments:   jumpToPreviousItem(okemon));
        }
 
 

  @override
  Widget build(BuildContext context) {
    var routs=ModalRoute.of(context)?.settings.arguments as Pokemon ;
    okemon=routs;

   Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
      backgroundColor:routs.color,
      elevation: 0,
      title: Text(routs.name, style: TextStyle(fontSize: 30, color: Colors.white),),
    actions: [
      Padding(padding: EdgeInsets.only(
        top: 20,
        right: 10,
      ),
      ),
      InkWell(
      onTap: () => test(context) ,
      splashColor: Theme.of(context).primaryColor,
            child: Image.network(routs.photoUrl2),
          ),
           InkWell(
      onTap: () => pre(context) ,
      splashColor: Theme.of(context).primaryColor,
            child: Image.network(routs.photoUrl3),
          ),
          
      ],
      
    ),
    
       body:Container(
      color: Color.fromARGB(255, 24, 23, 23),
      child: Column(
        children: [
          
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50 ,),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [routs.color,Color.fromARGB(255, 136, 123, 123)],
                  stops: [0.5, 0.9],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
               ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              )
            ),
            child:  Column(children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 0),
                child: Stack(children: [
                Image.network(routs.photoUrl)
                ]),
              ),
            
            ]),
          ),
           Container(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                      child: 
                       Text(routs.name, style: TextStyle(fontSize: 60, color: routs.color),),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Container(
                      height:50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: routs.color,
                      ),
                      width: 100,
                      
                      child:   Container(
                      child: Center(
                   child:  Text(routs.category, style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 20, 13, 13)),
                  ),
                      ),
                      ),
                    ),
                       SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(                        
                        children: [
                           Padding(padding: EdgeInsets.all(20)),
                          Column(
                           children: [
                                  Text(routs.height.toString()+"  M" , style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 233, 220, 220)),),
                                   SizedBox(
                                            height: 10,
                                          ),
                                  Text("Height" , style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 233, 220, 220)),),
                                      ], 
                          ),
                            SizedBox(
                                            width: 120,
                                          ),
                           Column(
                           children: [
                                  Text(routs.height.toString()+"  KG" , style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 233, 220, 220)),),
                                   SizedBox(
                                            height: 10,
                                          ),
                                  Text("Weight" , style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 233, 220, 220)),),
                                      ], 
                          ),
                        ] 

                        ,
                      ),
                    ),
                    Column(
                      children: [
                        
                     Text("Stats" , style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 233, 220, 220)),),
                        stats("HP  ",Color.fromARGB(209, 219, 8, 8),routs.stats.hp),
                        stats("ATK",Color.fromARGB(209, 243, 144, 15),routs.stats.atk),
                         stats("DEF",Color.fromARGB(209, 64, 37, 216),routs.stats.def),
                          stats("SPD",Color.fromARGB(209, 86, 238, 243),routs.stats.spd),

                          /*
                          {routs.stats.hp}
                          {routs.stats.atk/300})
                          {routs.stats.def/300}
                          {routs.stats.spd/300}*/
                         
                      ],
                    ),
                         
                  ],
                )
              )
        ],
      ),
    ),
    
      );
  }


Row stats( vari , colo , value){
  return   Row(
      children: [
         SizedBox(
            width: 20,
                    )                  ,  
                Text(vari , style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 233, 220, 220)),),
                                  SizedBox(
                                            width: 30,
                                          ),  
                     Container(
                      margin: EdgeInsets.symmetric(vertical:4),
                      width: 300,
                      height: 20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          value: value,
                          valueColor: AlwaysStoppedAnimation<Color>(colo),
                          backgroundColor: Color(0xffD6D6D6),
                          
                        ),
                      ),
                    )
                              ],
                            ) ;
}

}