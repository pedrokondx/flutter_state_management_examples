import 'package:equatable/equatable.dart';

class BlocCounterState extends Equatable {
  final int counter;

  const BlocCounterState(this.counter);

  @override
  List<Object> get props => [counter];
}
