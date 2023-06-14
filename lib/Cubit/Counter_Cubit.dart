import 'package:flutter_bloc/flutter_bloc.dart';

import 'Counter_State.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(teamAIncreamentState());

int teamAPoint = 0;
int teamBPoint = 0;

void teamIncrement({ required String team, required int buttonNumber})
{
 if( team =='A'){
   teamAPoint +=buttonNumber;
   emit(teamAIncreamentState());
 }else {
   teamBPoint+=buttonNumber;
   emit(teamBIncreamentState());
 }
}
void restart(){
  teamAPoint =0;
  teamBPoint =0;
}
}