
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestion_des_redacteurs_pour_magazine_infos/pages/create_redacteur_page.dart';
import 'package:gestion_des_redacteurs_pour_magazine_infos/pages/edit_redacteur_page.dart';
import 'package:gestion_des_redacteurs_pour_magazine_infos/pages/home_page.dart';
import 'package:gestion_des_redacteurs_pour_magazine_infos/pages/info_redacteur_page.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => const MyHomePage()
        ),
        GoRoute(
            path: '/info',
            builder: (context, state) => const InfoRedacteurPage()
        ),
        GoRoute(
            path: '/create',
            builder: (context, state) => const CreateRedacteurPage()
        ),
        GoRoute(
            path: '/edit',
            builder: (context, state) => const EditRedacteurPage()
        )
      ]
  );
});
