import 'dart:math';
import 'Aventurier.dart';
import 'dart:io';
import 'Obstacle.dart';

class Gardien extends Obstacle {
  @override
  Future<void> affronter(Aventurier joueur) async {
    print("⛪ Un gardien bloque ton chemin !");
    print("1️⃣ Combattre ✂️");
    print("2️⃣ Négocier 🗣️");
    stdout.write("Que fais-tu ? (1/2) : ");
    String? choix = stdin.readLineSync();
    if (choix == "1") {
      print("⚔️ Tu engages le combat...");

      await Future.delayed(Duration(seconds: 1));
      if (Random().nextBool()) {
        print("🎉 Victoire ! Le gardien est vaincu.\n");
      } else {
        print("❌ Défaite... Le gardien t'a blessé !");
        joueur.perdreVie();
      }
    } else {
      print("🗣️ Tu essaies de négocier...");
      await Future.delayed(Duration(seconds: 1));
      if (Random().nextBool()) {
        print("🚴‍♀️ Le gardien accepte et te laisse passer.\n");
      } else {
        print("🚷 Le gardien refuse et t'attaque !");
        joueur.perdreVie();
      }
    }
  }
}
