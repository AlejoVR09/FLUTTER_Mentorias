import 'package:app/domain/entities/router/router_entity.dart';
import 'package:app/presentation/widgets/shared/navegation_list.dart';
import 'package:flutter/material.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({
    required this.title,
    super.key,
  });

  final String title;
  static String name = 'HomeWidgets';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: _BodyHomeWdiget(),
    );
  }
}

class _BodyHomeWdiget extends StatelessWidget {
  const _BodyHomeWdiget();

  @override
  Widget build(BuildContext context) {
    return NavegationList(
      routerEntityList: routerWidgets,
    );
  }
}
