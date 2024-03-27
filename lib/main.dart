import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/counter.dart';
import 'package:riverpod_counter/random_color.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //watch:変更のたび発火される
    final int counter = ref.watch(counterProvider);
    final Color color = ref.watch(randomColorProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("riverPod"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$counter',
              style: TextStyle(
                color: color,
                fontSize: 100,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            //onPressed: _incrementCounter,
            onPressed: () {
              // read:1回しか呼ばれない
              // notifier:counter.dartの中身全体のイメージ
              ref.read(randomColorProvider.notifier).randomColor();
            },
            child: const Icon(Icons.color_lens),
          ),
          FloatingActionButton(
            //onPressed: _incrementCounter,
            onPressed: () {
              // read:1回しか呼ばれない
              // notifier:counter.dartの中身全体のイメージ
              ref.read(counterProvider.notifier).resetCounter();
            },
            child: const Icon(Icons.exposure_zero),
          ),
          FloatingActionButton(
            //onPressed: _incrementCounter,
            onPressed: () {
              // read:1回しか呼ばれない
              // notifier:counter.dartの中身全体のイメージ
              ref.read(counterProvider.notifier).decrementCounter();
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            //onPressed: _incrementCounter,
            onPressed: () {
              // read:1回しか呼ばれない
              // notifier:counter.dartの中身全体のイメージ
              ref.read(counterProvider.notifier).incrementCounter();
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            //onPressed: _incrementCounter,
            onPressed: () {
              // read:1回しか呼ばれない
              // notifier:counter.dartの中身全体のイメージ
              ref.read(counterProvider.notifier).multiplyCounter();
            },
            child: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}
