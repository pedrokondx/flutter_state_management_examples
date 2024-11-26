import 'package:flutter/material.dart';
import 'package:state_management_examples/value_notifier.dart/value_notifier_counter_state.dart';

class ValueNotifierController extends ValueNotifier<ValueNotifierCounterState> {
  ValueNotifierController() : super(ValueNotifierCounterState());

  void increment() {
    value = value.copyWith(counter: value.counter + 1);
  }

  void decrement() {
    value = value.copyWith(counter: value.counter - 1);
  }

  void reset() {
    value = value.copyWith(counter: 0);
  }
}
