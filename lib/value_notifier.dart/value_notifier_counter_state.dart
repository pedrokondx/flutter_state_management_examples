class ValueNotifierCounterState {
  int counter = 0;

  ValueNotifierCounterState({this.counter = 0});

  ValueNotifierCounterState copyWith({
    int? counter,
  }) {
    return ValueNotifierCounterState(
      counter: counter ?? this.counter,
    );
  }
}
