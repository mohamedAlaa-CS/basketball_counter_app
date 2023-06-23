import 'package:basketball_counter_app/Cubit/Counter_Cubit.dart';
import 'package:basketball_counter_app/Cubit/Counter_State.dart';
import 'package:basketball_counter_app/screens/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text('Points Counter'),
            ),

            body:
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Team A',
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
                              style:const TextStyle(
                                fontSize: 150,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding:const EdgeInsets.all(8),
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncrement(team: 'A', buttonNumber: 1);
                              },
                              child: const Text(
                                'Add 1 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize:const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncrement(team: 'A', buttonNumber: 2);
                              },
                              child: const Text(
                                'Add 2 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncrement(team: 'A', buttonNumber: 3);
                              },
                              child:const Text(
                                'Add 3 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 500,
                        child:VerticalDivider(
                          indent: 50,
                          endIndent: 50,
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const  Text(
                              'Team B',
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
                              style:const TextStyle(
                                fontSize: 150,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding:const EdgeInsets.all(8),
                                backgroundColor: Colors.orange,
                                minimumSize:const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncrement(team: 'B', buttonNumber: 1);
                              },
                              child:const Text(
                                'Add 1 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize:const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncrement(team: 'B', buttonNumber: 2);
                              },
                              child:const Text(
                                'Add 2 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize:const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .teamIncrement(team: 'B', buttonNumber: 3);
                              },
                              child:const Text(
                                'Add 3 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding:const EdgeInsets.all(8),
                      backgroundColor: Colors.orange,
                      minimumSize:const Size(150, 50),
                    ),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)  => testRusult( ),) );
                    },
                    child: const Text(
                      'Result',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding:const EdgeInsets.all(8),
                      backgroundColor: Colors.orange,
                      minimumSize:const Size(150, 50),
                    ),
                    onPressed: () {
                      BlocProvider.of<CounterCubit>(context)
                          .teamIncrement(team: 'A', buttonNumber: 0);

                      BlocProvider.of<CounterCubit>(context).restart();

                    },
                    child:const Text(
                      'Reset',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                 const  SizedBox(height: 20,),
                ],
              ),


          );
        },
        listener: (context, state) {});
  }
}
