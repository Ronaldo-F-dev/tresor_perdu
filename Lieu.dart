import 'Aventurier.dart';
import 'Obstacle.dart';

class Lieu {
  String nom;
  List<Obstacle> obstacles;
  Lieu(this.nom, this.obstacles);
  Future<void> explorer(Aventurier joueur) async {
    print("\n🌍 $nom");
    for (Obstacle obstacle in obstacles) {
      await obstacle.affronter(joueur);
    }
    print("🎉 Tu as terminé l'exploration de $nom !\n");
  }
}
