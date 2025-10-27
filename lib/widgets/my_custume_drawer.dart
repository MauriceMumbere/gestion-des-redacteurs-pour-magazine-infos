import 'package:flutter/material.dart';
import 'package:gestion_des_redacteurs_pour_magazine_infos/widgets/my_custom_text.dart';
import 'package:go_router/go_router.dart';

class MyCustumDrawer extends StatelessWidget {
  const MyCustumDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.pink,
              ),
              child: const MyCustomText(text: "Menu de navigation", fontWeight: FontWeight.bold,)),
          ListTile(
            title: const MyCustomText(text: "Ajouter un Rédacteur", fontWeight: FontWeight.bold,),
            onTap: (){
              context.go("/create");
            },
          ),
          ListTile(
            title: const MyCustomText(text: "Informations des Rédacteurs", fontWeight: FontWeight.bold,),
            onTap: (){
              context.go("/info");
            },
          )
        ],
      ),
    );
  }
}
