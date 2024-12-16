import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateProvider =
    StateNotifierProvider<CounterStateNotifierProvider, int>(
  (ref) {
    return CounterStateNotifierProvider(
      counter: 0,
    );
  },
);

class CounterStateNotifierProvider extends StateNotifier<int> {
  final int counter;

  CounterStateNotifierProvider({
    required this.counter,
  }) : super(0);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

class ViewRiverpod extends ConsumerStatefulWidget {
  const ViewRiverpod({super.key, required this.title});

  final String title;

  @override
  ViewRiverpodState createState() => ViewRiverpodState();
}

class ViewRiverpodState extends ConsumerState<ViewRiverpod> {
  @override
  Widget build(BuildContext context) {
    final counterState = ref.watch<int>( counterStateProvider );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counterState',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ref.read( counterStateProvider.notifier ).increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
