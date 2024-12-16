import 'package:flutter/material.dart';

class RouterEntity {
  RouterEntity({
    required this.title,
    required this.link,
    required this.icon,
  });

  final String title;
  final String link;
  final IconData icon;
}

final routerMenu = [
  RouterEntity(
    title: 'State Management',
    link: '/homeStateManagement',
    icon: Icons.access_alarms,
  ),
  RouterEntity(
    title: 'Widgets',
    link: '/homeWidgets',
    icon: Icons.cake_rounded,
  ),
];

final routerStateManagement = [
  RouterEntity(
    title: 'Set State',
    link: '/homeStateManagement/setState',
    icon: Icons.satellite_alt,
  ),
  RouterEntity(
    title: 'Provider',
    link: '/homeStateManagement/provider',
    icon: Icons.wysiwyg_sharp,
  ),
  RouterEntity(
    title: 'Riverpod',
    link: '/homeStateManagement/riverpod',
    icon: Icons.baby_changing_station,
  ),
  RouterEntity(
    title: 'Bloc',
    link: '/homeStateManagement/bloc',
    icon: Icons.offline_bolt_outlined,
  ),
];

final routerWidgets = [
  RouterEntity(
    title: 'Wrap',
    link: '/homeWidgets/wrap',
    icon: Icons.satellite_alt,
  ),
  RouterEntity(
    title: 'Slivers',
    link: '/homeWidgets/slivers',
    icon: Icons.folder_zip_outlined,
  ),
];
