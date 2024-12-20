// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobxCounterStore on _MobxCounterStore, Store {
  late final _$counterAtom =
      Atom(name: '_MobxCounterStore.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$_MobxCounterStoreActionController =
      ActionController(name: '_MobxCounterStore', context: context);

  @override
  void increment() {
    final _$actionInfo = _$_MobxCounterStoreActionController.startAction(
        name: '_MobxCounterStore.increment');
    try {
      return super.increment();
    } finally {
      _$_MobxCounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_MobxCounterStoreActionController.startAction(
        name: '_MobxCounterStore.decrement');
    try {
      return super.decrement();
    } finally {
      _$_MobxCounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_MobxCounterStoreActionController.startAction(
        name: '_MobxCounterStore.reset');
    try {
      return super.reset();
    } finally {
      _$_MobxCounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
