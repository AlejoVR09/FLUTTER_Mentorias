import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  static String name = "Expanded";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ExpandedWidget.name,
        ),
      ),
      body: _BodyExpanded(),
    );
  }
}

class _BodyExpanded extends StatelessWidget {
  const _BodyExpanded();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 100,
            color: Colors.amber,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 100,
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 100,
            width: 10,
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            height: 100,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
