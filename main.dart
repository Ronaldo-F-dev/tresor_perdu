import 'dart:io';
import 'Aventurier.dart';
import 'Lieu.dart';
import 'Enigme.dart';
import 'Gardien.dart';
import 'Piege.dart';

void main() async {
  print("Quel est votre nom ? ");
  String nom = stdin.readLineSync()!;
  print("Bienvenue $nom");
  Aventurier joueur = Aventurier(nom: nom);
  List<Lieu> lieux = [
    Lieu("Zone interdite", [
      Enigme("Quel est le numéro de Mbappé au Réal Madrid ?", "9"),
      Piege(),
      Gardien()
    ]),
    Lieu("Couvent", [Piege(), Enigme("4 * 9 = ?", "36"), Gardien()]),
    Lieu("Temple de Python de Ouidah", [
      Gardien(),
      Piege(),
      Enigme("Quelle est l'année d'indépendance du Bénin ?", "1960")
    ])
  ];
  for (Lieu lieu in lieux) {
    await lieu.explorer(joueur);
  }
  print(
      " Félicitations, $nom ! Tu as terminé l'aventure avec ${joueur.vies} vies restantes !");
}
