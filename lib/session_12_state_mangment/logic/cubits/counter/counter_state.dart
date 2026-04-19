

class CounterState {
  final int count;

  CounterState({required this.count});
}

class CounterIncrementState extends CounterState {
  CounterIncrementState({required super.count});
}

class CounterDecrementState extends CounterState {
  CounterDecrementState({required super.count});
}


