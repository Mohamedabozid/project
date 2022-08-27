import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//main start
//ceoss center
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(

   appBar: AppBar(
     backgroundColor: Colors.red,
     leading: Icon(
       Icons.menu,
     ),
     title: Text(
     'صيدليه رهف'
   ),
     actions: [
       IconButton(onPressed: (){
         print('delete');
       }, icon:Icon(Icons.delete) ),
       IconButton(onPressed:(){print('search');}, icon: Icon(
    Icons.search
),
)

     ],
       ),
   body:Column(
     children: [
       Stack(
         alignment: Alignment.bottomCenter,
         children: [

           Image(
             image: NetworkImage(
               'https://th.bing.com/th/id/OIP.tMdDziFDtavEBlPEAp6b9gHaHa?w=171&h=180&c=7&r=0&o=5&pid=1.7',
             ),
             width: 200.0,
             height: 200.0,
             fit: BoxFit.cover,
           ),
           Container(
             width: 200.0,
             color: Colors.black.withOpacity(.5),
             padding: EdgeInsets.symmetric(
               vertical: 10.00,
             ),
             child: Text(
               'first',
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 30.00,
                 color: Colors.white,
               ),
             ),
           ),
         ],
       ),

     ],
   ),

 );
  }

}