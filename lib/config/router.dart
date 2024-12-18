import 'package:app/presentation/home.dart';
import 'package:app/presentation/state_management/home_state_management.dart';
import 'package:app/presentation/state_management/state_managers/bloc/page_bloc.dart';
import 'package:app/presentation/state_management/state_managers/provider/page_provider.dart';
import 'package:app/presentation/state_management/state_managers/riverpod/page_riverpod.dart';
import 'package:app/presentation/state_management/state_managers/set_state/set_state.dart';
import 'package:app/presentation/widgets_screen/home_widgets.dart';
import 'package:app/presentation/widgets_screen/slivers/slivers.dart';
import 'package:app/presentation/widgets_screen/wrap/wrap.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: MyHomePage.name,
      builder: (context, state) {
        return MyHomePage(title: 'Flutter app');
      },
    ),
    GoRoute(
      path: '/homeStateManagement',
      name: HomeStateManagement.name,
      builder: (context, state) {
        return HomeStateManagement(
          title: 'State Management',
        );
      },
      routes: [
        GoRoute(
          path: 'setState',
          name: SetState.name,
          builder: (context, state) {
            return SetState(
              title: 'Set State',
            );
          },
        ),
        GoRoute(
          path: 'provider',
          name: PageProvider.name,
          builder: (context, state) {
            return PageProvider();
          },
        ),
        GoRoute(
          path: 'riverpod',
          name: PageRiverpod.name,
          builder: (context, state) {
            return PageRiverpod();
          },
        ),
        GoRoute(
          path: 'bloc',
          name: PageBloc.name,
          builder: (context, state) {
            return PageBloc();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/homeWidgets',
      name: HomeWidgets.name,
      builder: (context, state) {
        return HomeWidgets(
          title: 'Widgets',
        );
      },
      routes: [
        GoRoute(
          path: 'wrap',
          name: Wraps.name,
          builder: (context, state) {
            return Wraps();
          },
        ),
        GoRoute(
          path: 'slivers',
          name: Slivers.name,
          builder: (context, state) {
            return Slivers();
          },
        ),
      ],
    ),
  ],
);
