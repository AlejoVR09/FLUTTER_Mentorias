import 'package:app/presentation/state_management/state_managers/provider/view_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageProvider extends StatelessWidget {
  const PageProvider({
    super.key,
  });
  static String name = 'PageProvider';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(counter: 0),
      child: ViewProvider(
        title: 'Provider view',
      ),
    );
  }
}
