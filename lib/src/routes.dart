// src/routes.dart
import '/page/about.dart';
import '/page/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  //por cada ruta sebe inistanciar una nueva ruta
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
      //fin ruta 1

      routes: <RouteBase>[
        GoRoute(
          path: 'About',
          builder: (BuildContext context, GoRouterState state) {
            return const About();
          },
        ),
      ],

      //fin ruta 2
    ),
  ],
);
