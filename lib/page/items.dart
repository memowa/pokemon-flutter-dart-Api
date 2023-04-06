import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


import '../mode/api.dart';


class item extends StatelessWidget {
 

final Pokemon okemon;

  const item({ required this.okemon});


  @override
  Widget build(BuildContext context) {

        void test(BuildContext context){
          Navigator.of(context).pushNamed("/oneitem",
          arguments:
            okemon
          
          );
        }


    return InkWell(
      onTap: () => test(context) ,
      splashColor: Theme.of(context).primaryColor,
      child: Stack(
        children: [
          ClipRRect(
            child: Image.network(this.okemon.photoUrl,height:250,fit: BoxFit.cover,
            ),
          ),
              Container(
                
                padding:  EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                child: Text(okemon.name
                , style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 14, 8, 8)),),
                decoration: BoxDecoration(
                            color: this.okemon.color.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(40)
                ),
              ) 
            
        ],
      ),
    );
  }
}