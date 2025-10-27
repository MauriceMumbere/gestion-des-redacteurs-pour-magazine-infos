import 'package:flutter/material.dart';
import 'package:gestion_des_redacteurs_pour_magazine_infos/widgets/my_custom_text.dart';
import 'package:gestion_des_redacteurs_pour_magazine_infos/widgets/my_custume_drawer.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.red,
        title: const MyCustomText(text: "Magazine Infos", fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white,), centerTitle: true,
      ),
      drawer: const MyCustumDrawer(),
      body: const Center(child: Text('Bienvenue sur la page d’accueil')),
    );
  }
}
