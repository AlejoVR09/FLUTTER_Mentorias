import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterBlocEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEventIncrement>((event, emit) {
      emit(
        state.copyWith(
          count: event.counter + 1,
        ),
      );
    });
    on<CounterEventDecrement>((event, emit) {
      emit(
        state.copyWith(
          count: event.counter - 1,
        ),
      );
    });
  }
}

class CounterState {
  CounterState({
    this.count = 0,
  });

  final int count;

  CounterState copyWith({
    int? count,
  }) {
    return CounterState(
      count: count ?? this.count,
    );
  }
}

class CounterInitial extends CounterState {
  CounterInitial();
}

class CounterBlocEvent {
  CounterBlocEvent();
}

class CounterEventIncrement extends CounterBlocEvent {
  CounterEventIncrement({
    required this.counter,
  });

  final int counter;
}

class CounterEventDecrement extends CounterBlocEvent {
  CounterEventDecrement({
    required this.counter,
  });

  final int counter;
}

class ViewBloc extends StatefulWidget {
  const ViewBloc({super.key, required this.title});

  final String title;

  @override
  State<ViewBloc> createState() => _ProviderState();
}

class _ProviderState extends State<ViewBloc> {
  @override
  Widget build(BuildContext context) {
    final counterBloc = context.watch<CounterBloc>().state.count;
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
              '$counterBloc',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .read<CounterBloc>()
              .add(CounterEventIncrement(counter: counterBloc));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
