import 'package:app/domain/entities/router/router_entity.dart';
import 'package:app/presentation/home.dart';
import 'package:go_router/go_router.dart';

/// Variable used to declare the routes of the application
final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: MyHomePage.name,
      builder: (context, state) {
        return MyHomePage(title: 'Flutter app');
      },
      routes: routerMenu.map(
        (route) {
          return GoRoute(
            path: route.link,
            builder: (context, state) {
              return route.widget;
            },
            routes: route.innerRoutes.map(
              (innerRoute) {
                return GoRoute(
                  path: innerRoute.link,
                  builder: (context, state) {
                    return innerRoute.widget;
                  },
                );
              },
            ).toList(),
          );
        },
      ).toList(),
    ),
  ],
);
