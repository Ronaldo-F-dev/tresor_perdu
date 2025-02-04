import 'dart:math';
import 'Aventurier.dart';
import 'dart:io';
import 'Obstacle.dart';

class Gardien extends Obstacle {
  @override
  Future<void> affronter(Aventurier joueur) async {
    print("⛔ Un gardien bloque ton chemin ! ⛔");
    print("1 Combattre ✂️");
    print("2 Négocier 🗣️");
    stdout.write("Que veux tu faire ? (1 ou 2) : ");
    String? choix = stdin.readLineSync();
    if (choix == "1") {
      print("⚔️ Tu combat...");

      await Future.delayed(Duration(seconds: 3));
      if (Random().nextBool()) {
        print("🎉 Victoire ! Le gardien est vaincu.\n");
      } else {
        print("❌ Défaite... Le gardien t'a touché et blessé !");
        joueur.perdreVie();
      }
    } else {
      print("🗣️ Tu essaies de négocier...");
      await Future.delayed(Duration(seconds: 3));
      if (Random().nextBool()) {
        print("🚴‍♀️ Le gardien accepte et te laisse passer.\n");
      } else {
        print("🚷 Le gardien refuse et t'attaque !");
        joueur.perdreVie();
      }
    }
  }
}
