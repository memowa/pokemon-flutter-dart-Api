

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';


Color funcolor(name) {

  if(name=='grass'){
    return Color.fromRGBO(196, 212, 134, 1);

   }
 if(name=='fire'){
return  Color.fromRGBO(215, 112, 95, 1);
  }
   if(name=='water'){
return    Color.fromRGBO(111, 185, 199, 1);
  }
   if(name=='bug'){
return    Color.fromRGBO(238, 207, 151, 1);
  }
   if(name=='normal'){
return  Color(0xFF373737);
  }
   if(name=='poison'){
return  Color.fromRGBO(157, 108, 156, 1);
  }
  if(name=='electric'){
return  Color.fromRGBO(238, 207, 151, 1);
  }
   if(name=='ground'){
return  Color(0xFF483313);
  }
   if(name=='fighting'){
return  Color(0xFFACAAAA);
  }

   if(name=='rock'){
return  Color(0xFF959595);
  }
   if(name=='ghost'){
return  Color(0xFF292156);
  }
   if(name=='ice'){
return  Color(0xFF0094FF);
  }
   if(name=='dragon'){
return  Color(0xFF76D98C);
  }
   if(name=='psychic'){
return  Color.fromRGBO(240, 201, 207, 1);
  }else{
    return Color.fromARGB(255, 85, 72, 72);
  }
  
  }
