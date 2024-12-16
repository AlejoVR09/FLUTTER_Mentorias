import 'package:app/domain/entities/router/router_entity.dart';
import 'package:app/presentation/widgets/shared/navegation_list.dart';
import 'package:flutter/material.dart';

class HomeStateManagement extends StatelessWidget {
  const HomeStateManagement({
    required this.title,
    super.key,
  });

  final String title;
  static String name = "HomeStateManagement";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: const _BodyScaffold(),
    );
  }
}

class _BodyScaffold extends StatelessWidget {
  const _BodyScaffold();

  @override
  Widget build(BuildContext context) {
    return NavegationList(
      routerEntityList: routerStateManagement,
    );
  }
}
