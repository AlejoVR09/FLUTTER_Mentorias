import 'package:app/presentation/home.dart';
import 'package:app/presentation/state_management/set_state.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return MyHomePage(title: 'FLutter app');
    },
  ),
  GoRoute(
    path: 'stateManagement',
    builder: (context, state) {
      return SetState();
    },
  ),
]);
