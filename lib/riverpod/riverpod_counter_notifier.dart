import 'package:riverpod/riverpod.dart';

class RiverpodCounterNotifier extends StateNotifier<int> {
  RiverpodCounterNotifier() : super(0);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }

  void reset() {
    state = 0;
  }
}

final counterProvider =
    StateNotifierProvider<RiverpodCounterNotifier, int>((ref) {
  return RiverpodCounterNotifier();
});
