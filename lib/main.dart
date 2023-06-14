import 'package:basketball_counter_app/Cubit/Counter_Cubit.dart';
import 'package:basketball_counter_app/Cubit/Counter_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Text('Points Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
                            style: TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'A', buttonNumber: 1);
                            },
                            child: Text(
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
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'A', buttonNumber: 2);
                            },
                            child: Text(
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
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'A', buttonNumber: 3);
                            },
                            child: Text(
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
                    Container(
                      height: 500,
                      child: VerticalDivider(
                        indent: 50,
                        endIndent: 50,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoint}',
                            style: TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(8),
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'B', buttonNumber: 1);
                            },
                            child: Text(
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
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'B', buttonNumber: 2);
                            },
                            child: Text(
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
                              minimumSize: Size(150, 50),
                            ),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'B', buttonNumber: 3);
                            },
                            child: Text(
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
                    padding: EdgeInsets.all(8),
                    primary: Colors.orange,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context)
                        .teamIncrement(team: 'A', buttonNumber: 0);

                    BlocProvider.of<CounterCubit>(context).restart();
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
