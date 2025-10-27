import 'package:flutter/material.dart';
import 'package:gestion_des_redacteurs_pour_magazine_infos/widgets/my_custume_drawer.dart';
import 'package:go_router/go_router.dart';

import '../widgets/my_custom_text.dart';

class CreateRedacteurPage extends StatelessWidget {
  const CreateRedacteurPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const MyCustomText(text: "Ajout d'un Rédacteurs", fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white,),
          centerTitle: true,
          leading: IconButton(onPressed: (){
            context.go("/");
          }, icon: Icon(Icons.arrow_back, color: Colors.white,)),
        ),
      drawer: MyCustumDrawer(),
      body: const Text("Page de creation d'un redacteur"),
    );
  }
}

