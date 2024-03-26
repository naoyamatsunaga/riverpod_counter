import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter.g.dart';

@riverpod
class Counter extends _$Counter {
  // int _counter = 0;

  @override
  int build() => 0;

  void incrementCounter() {
    //_counter++;
    state++;
  }
}
