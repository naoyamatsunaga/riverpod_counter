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

  void decrementCounter() {
    //_counter++;
    state--;
  }

  void resetCounter() {
    //_counter++;
    state = 0;
  }

  void multiplyCounter() {
    //_counter++;
    state = state * state;
  }
}

// ビルドの前にターミナルで「flutter pub run build_runner build」を実行する。
