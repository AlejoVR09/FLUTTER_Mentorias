import 'package:flutter/material.dart';

class FlexWidget extends StatelessWidget {
  const FlexWidget({super.key});

  static String name = "Flex";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          FlexWidget.name,
        ),
      ),
      body: _BodyFlex(),
    );
  }
}

class _BodyFlex extends StatelessWidget {
  const _BodyFlex();

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        FlexDirection(
          direction: Axis.horizontal,
        ),
        FlexDirection(
          direction: Axis.vertical,
        ),
      ],
    );
  }
}

class FlexDirection extends StatelessWidget {
  const FlexDirection({
    required this.direction,
    super.key,
  });

  final Axis direction;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction,
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.amber,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.blue,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.green,
        ),
      ],
    );
  }
}
