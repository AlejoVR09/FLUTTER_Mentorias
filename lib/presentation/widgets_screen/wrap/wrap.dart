import 'package:flutter/material.dart';

class Wraps extends StatelessWidget {
  const Wraps({super.key});

  static String name = "Wraps";

  /// helper method that creates a column with a text
  /// represent a title for a section in a view
  Widget getWrapTitleSection(String title) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(title),
        SizedBox(height: 20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wraps'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              getWrapTitleSection('Direction'),
              _WrapDirection(),
              _WrapDirection(
                direction: Axis.vertical,
                horizontalSpacing: 10,
              ),
              getWrapTitleSection('Spacing'),
              _WrapOverflow(),
            ],
          ),
        ),
      ),
    );
  }
}

class _WrapDirection extends StatelessWidget {
  const _WrapDirection({
    this.direction = Axis.horizontal,
    this.horizontalSpacing = 1,
  });

  final Axis direction;
  final double horizontalSpacing;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.spaceAround,
      direction: direction,
      spacing: horizontalSpacing,
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

class _WrapOverflow extends StatelessWidget {
  const _WrapOverflow();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: Wrap(
        clipBehavior: Clip.none,
        children: List.generate(
          10,
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
      ),
    );
  }
}
