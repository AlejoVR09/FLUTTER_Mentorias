import 'package:app/domain/entities/router/router_entity.dart';
import 'package:app/presentation/widgets/shared/navegation_list.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  static String name = "MyHomePage";
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: NavegationList(
        routerEntityList: routerMenu,
      ),
    );
  }
}
