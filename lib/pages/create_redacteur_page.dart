import 'package:flutter/material.dart';
import 'package:gestion_des_redacteurs_pour_magazine_infos/widgets/my_custume_drawer.dart';
import 'package:go_router/go_router.dart';

import '../widgets/my_custom_text.dart';

class CreateRedacteurPage extends StatefulWidget {
  const CreateRedacteurPage({super.key});

  @override
  State<CreateRedacteurPage> createState() => _CreateRedacteurPageState();
}

class _CreateRedacteurPageState extends State<CreateRedacteurPage> {
  final _formKey = GlobalKey<FormState>();

  final nameRedacteur = TextEditingController();
  final spacialityRedacteur = TextEditingController();

  @override
  void dispose() {
    nameRedacteur.dispose();
    spacialityRedacteur.dispose();
    super.dispose();
  }

  void submitForm() {

  }

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
      body: Container(

        padding: EdgeInsets.all(12),
        child: Form(
            key: _formKey,
            child: Column(
          children: [
            TextFormField(
              controller: nameRedacteur,
              decoration: InputDecoration(labelText: "Nom du Rédacteur"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer le nom';
                }
                return null;
              },
            ),
            TextFormField(
              controller: spacialityRedacteur,
              decoration: InputDecoration(labelText: "Spécialité du Rédacteur"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer la spécialité';
                }
                return null;
              },
            ),

            const SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
                onPressed: (){}, child: MyCustomText(text: "Ajouter Rédacteur", color: Colors.white,))
          ],
        )),
      ),
    );
  }
}

