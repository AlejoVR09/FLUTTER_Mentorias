import 'package:app/presentation/state_management/home_state_management.dart';
import 'package:app/presentation/state_management/state_managers/bloc/page_bloc.dart';
import 'package:app/presentation/state_management/state_managers/provider/page_provider.dart';
import 'package:app/presentation/state_management/state_managers/riverpod/page_riverpod.dart';
import 'package:app/presentation/state_management/state_managers/set_state/set_state.dart';
import 'package:app/presentation/widgets_screen/home_widgets.dart';
import 'package:app/presentation/widgets_screen/slivers/slivers.dart';
import 'package:app/presentation/widgets_screen/wrap/wrap.dart';
import 'package:flutter/material.dart';

/// {@template RouterEntity}
/// Class that represents a route for the app, used to make navigation
/// {@endtemplate}
class RouterEntity {
  /// {@macro RouterEntity}
  const RouterEntity({
    required this.title,
    required this.link,
    required this.icon,
    required this.widget,
    this.parentLink = '',
    this.innerRoutes = const [],
  });

  final String title;
  final String link;
  final String parentLink;
  final IconData icon;
  final Widget widget;
  final List<RouterEntity> innerRoutes;
}

final routerMenu = [
  RouterEntity(
      title: 'Home State Management',
      link: '/homeStateManagement',
      icon: Icons.access_alarms,
      innerRoutes: routerStateManagement,
      widget: HomeStateManagement(title: 'State Management')),
  RouterEntity(
    title: 'Home Widgets',
    link: '/homeWidgets',
    icon: Icons.cake_rounded,
    innerRoutes: routerWidgets,
    widget: HomeWidgets(title: 'Widgets'),
  ),
];

/// {@template RouterStateManagement}
/// State management routes
/// {@endtemplate}
final routerStateManagement = [
  RouterEntity(
    title: 'Set State',
    link: 'setState',
    parentLink: '/homeStateManagement',
    icon: Icons.satellite_alt,
    widget: SetState(
      title: 'Set State',
    ),
  ),
  RouterEntity(
    title: 'Provider',
    link: 'provider',
    parentLink: '/homeStateManagement',
    icon: Icons.wysiwyg_sharp,
    widget: PageProvider(),
  ),
  RouterEntity(
    title: 'Riverpod',
    link: 'riverpod',
    parentLink: '/homeStateManagement',
    icon: Icons.baby_changing_station,
    widget: PageRiverpod(),
  ),
  RouterEntity(
    title: 'Bloc',
    link: 'bloc',
    parentLink: '/homeStateManagement',
    icon: Icons.offline_bolt_outlined,
    widget: PageBloc(),
  ),
];

/// {@template RouterStateManagement}
/// Widgets routes
/// {@endtemplate}
final routerWidgets = [
  RouterEntity(
    title: 'Wraps',
    link: 'wrap',
    parentLink: '/homeWidgets',
    icon: Icons.satellite_alt,
    widget: Wraps(),
  ),
  RouterEntity(
    title: 'Slivers',
    link: 'slivers',
    parentLink: '/homeWidgets',
    icon: Icons.folder_zip_outlined,
    widget: Slivers(),
  ),
];
