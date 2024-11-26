import 'package:mobx/mobx.dart';
part 'mobx_counter_store.g.dart';

class MobxCounterStore = _MobxCounterStore with _$MobxCounterStore;

abstract class _MobxCounterStore with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }

  @action
  void decrement() {
    counter--;
  }

  @action
  void reset() {
    counter = 0;
  }
}
