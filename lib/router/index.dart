import 'package:book_log/main.dart';
import 'package:book_log/screens/bookshelf.dart';
import 'package:book_log/screens/calendar.dart';
import 'package:book_log/screens/review.dart';
import 'package:book_log/screens/setting.dart';
import 'package:book_log/screens/tag.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/calendar',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainScreen(child: child);
      },
      routes: [
        GoRoute(
          path: '/calendar',
          builder:
              (BuildContext context, GoRouterState state) =>
                  const CalendarPage(),
        ),
        GoRoute(
          path: '/bookshelf',
          builder:
              (BuildContext context, GoRouterState state) =>
                  const BookShelfPage(),
        ),
        GoRoute(
          path: '/tag',
          builder:
              (BuildContext context, GoRouterState state) => const TagPage(),
        ),
        GoRoute(
          path: '/setting',
          builder:
              (BuildContext context, GoRouterState state) =>
                  const SettingPage(),
        ),
      ],
    ),
    GoRoute(
      path: '/Review',
      builder: (BuildContext context, GoRouterState state) {
        return const ReviewPage();
      },
    ),
  ],
);

String getRoute(int idx) {
  switch (idx) {
    case 0:
      return '/calendar';
    case 1:
      return '/bookshelf';
    case 3:
      return '/tag';
    case 4:
      return '/setting';
    default:
      return '/calendar';
  }
}
