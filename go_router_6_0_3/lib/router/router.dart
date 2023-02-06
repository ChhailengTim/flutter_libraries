import 'package:go_router/go_router.dart';

import '../details/detail_screen.dart';
import '../details/second_screen.dart';
import '../main.dart';

final GoRouter router = GoRouter(
  initialLocation: '/secondScreen/detailScreen',
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (_, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'secondScreen',
          builder: (_, GoRouterState state) {
            return const SecondScreen();
          },
          routes: [
            GoRoute(
              path: 'detailScreen',
              builder: (_, GoRouterState state) {
                return const DetailScreen();
              },
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/detailScreen',
      builder: (_, GoRouterState state) {
        return const DetailScreen();
      },
    ),
  ],
);
