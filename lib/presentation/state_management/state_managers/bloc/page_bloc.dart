import 'package:app/presentation/state_management/state_managers/bloc/view_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageBloc extends StatelessWidget {
  const PageBloc({
    super.key,
  });

  static String name = 'PageBloc';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: ViewBloc(title: 'Bloc'),
    );
  }
}
