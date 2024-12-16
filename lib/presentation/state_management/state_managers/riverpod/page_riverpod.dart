import 'package:app/presentation/state_management/state_managers/riverpod/view_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageRiverpod extends StatelessWidget {
  const PageRiverpod({super.key});

  static String name = 'PageRiverpod';

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: const ViewRiverpod(
        title: 'Riverppod',
      ),
    );
  }
}
