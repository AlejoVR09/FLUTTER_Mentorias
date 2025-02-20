import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  static String name = "Flexible";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          FlexibleWidget.name,
        ),
      ),
      body: _BodyFlexible(),
    );
  }
}

class _BodyFlexible extends StatelessWidget {
  const _BodyFlexible();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.amber,
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              flex: 2,
              child: Container(
                height: 100,
                width: 50,
                color: Colors.green,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 3,
              child: Container(
                height: 100,
                color: Colors.blue,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 4,
              child: Container(
                height: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.red,
              ),
            ),
          ],
        )
      ],
    );
  }
}
