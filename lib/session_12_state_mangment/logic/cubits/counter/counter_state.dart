
class CounterStat {
  int count;
  CounterStat(this.count);
}

class IntialState extends CounterStat {
  IntialState(super.count);
}

class IncrementCounterState extends CounterStat {
  IncrementCounterState(super.count);

}

class DecrementCounterState extends CounterStat {
  DecrementCounterState(super.count);
}