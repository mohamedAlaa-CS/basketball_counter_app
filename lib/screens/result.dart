import 'package:flutter/material.dart';
import '../Cubit/Counter_Cubit.dart';

class testRusult extends StatelessWidget {

   testRusult() : super();

  @override
  Widget build(BuildContext context) {
    String win = '';
    CounterCubit cubit = CounterCubit.get(context);
    if(cubit.teamAPoint > cubit.teamBPoint){win = 'A'; }
    else{win = 'B';}
    return Scaffold(
      appBar: AppBar(title:const Text('Resulte ', style:TextStyle(fontSize: 30)),backgroundColor: Colors.orange,),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Row(

              children: [
                Container(
                  height: 200,
                  width:200,
                  decoration: BoxDecoration(
                    border: Border.all(width: 7, color:Colors.orange),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Text('Team A ',style: TextStyle(fontSize: 40),),
                      GestureDetector(child: Text( '${cubit.teamAPoint}',style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),)),


                    ],
                  ),

                ),
              const  SizedBox(width: 9,),

                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(width: 7, color:Colors.orange),
                    borderRadius:const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Text('Team B ',style: TextStyle(fontSize: 40),),
                      Text('${cubit.teamBPoint}',style:const TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),


                    ],
                  ),

                ),


              ],
            ),
          const  SizedBox(height: 40,),
            Container(
              height: 90,
              width:double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 7, color:Colors.orange),
                borderRadius:const BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('Team $win  is win 🏆 😍',style: const TextStyle(fontSize: 40,color: Colors.blue ))

                ],
              ),

            ),
          ],
        ),
      ),
    );
    
  }
}
