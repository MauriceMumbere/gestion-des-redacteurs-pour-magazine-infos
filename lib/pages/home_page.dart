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
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/magazin-infos.jpeg",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              PartieTitre(),
              PartieText(),
              PartieIcone(),
              PartieRubrique(),
            ],
          ),
    ));
  }
}

// Partie titre
class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Bienvenue au magazine infos",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            "Votre magazine Numérique, votre source d'inspiration",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

// Partie texte
class PartieText extends StatelessWidget {
  const PartieText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
        "Magazine infos numérique est bien plus qu'un simple magazine d'informations. C'est votre passerelle vers le monde, une source inestimable de connaissance et d'actualités soigneusement sélectionnées pour vous éclairer sur les enjeux mondiaux, la culture, la science et voir même le divertissement (le jeux).",
      ),
    );
  }
}

// Partie icone
class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildIcone(Icons.phone, 'tel'),
        _buildIcone(Icons.mail, 'mail'),
        _buildIcone(Icons.send, 'Partage'),
      ],
    );
  }
}

Widget _buildIcone(IconData icon, String text) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 40, color: Colors.pink),
        SizedBox(height: 5),
        Text(text.toUpperCase(), style: TextStyle(color: Colors.pink)),
      ],
    ),
  );
}

// Partie rubrique
class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/image-papier.jpeg",
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/image-a-la-une-papier-entete.jpeg",
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
