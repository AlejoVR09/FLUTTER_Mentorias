import 'package:flutter/material.dart';

class Wraps extends StatelessWidget {
  const Wraps({super.key});

  static String name = "Wraps";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wraps'),
      ),
      body: _BodyWraps(),
    );
  }
}

class _BodyWraps extends StatelessWidget {
  const _BodyWraps();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _WrapDirection(),
          _WrapDirection(
            direction: Axis.vertical,
          ),
        ],
      ),
    );
  }
}

class _WrapDirection extends StatelessWidget {
  const _WrapDirection({
    this.direction = Axis.horizontal,
  });

  final Axis direction;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.spaceAround,
      direction: direction,
      children: List.generate(
        5,
        (index) => Padding(
          padding: const EdgeInsets.all(
            2,
          ),
          child: Chip(
            label: Text(
              'Item $index',
            ),
          ),
        ),
      ),
    );
  }
}
