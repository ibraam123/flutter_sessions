import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(
    0
  );

  // Increment state
  void increment() => emit(
    state + 1
  );
  
  // Decrement state
  void decrement() => emit(
    state - 1
  );
}
