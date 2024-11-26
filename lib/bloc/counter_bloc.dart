import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_examples/bloc/counter_events.dart';
import 'package:state_management_examples/bloc/bloc_counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, BlocCounterState> {
  CounterBloc() : super(const BlocCounterState(0)) {
    on<IncrementCounter>((event, emit) {
      emit(BlocCounterState(state.counter + 1));
    });

    on<DecrementCounter>((event, emit) {
      emit(BlocCounterState(state.counter - 1));
    });

    on<ResetCounter>((event, emit) {
      emit(const BlocCounterState(0));
    });
  }
}
