
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_7_flutter_hult/session_12_state_mangment/logic/cubits/counter/counter_state.dart';

class CounterCubit extends Cubit<CounterStat>{
  CounterCubit() : super(IntialState(0));

  void increment(){
    emit(IncrementCounterState(state.count + 1));
  }

  void decrement(){
    emit(DecrementCounterState(state.count - 1));
  }

}
