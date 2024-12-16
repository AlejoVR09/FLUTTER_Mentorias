import 'package:app/domain/entities/router/router_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavegationList extends StatelessWidget {
  const NavegationList({
    required this.routerEntityList,
    super.key,
  });

  final List<RouterEntity> routerEntityList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: routerEntityList.length,
      itemBuilder: (context, index) {
        final routerItem = routerEntityList[index];
        return ListTile(
          onTap: () {
            context.go(routerItem.link);
          },
          title: Text(
            routerItem.title,
          ),
          trailing: Icon(
            Icons.chevron_right,
          ),
          leading: Icon(
            routerItem.icon,
          ),
        );
      },
    );
  }
}
