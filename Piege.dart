import 'Obstacle.dart';
import 'Aventurier.dart';
import 'dart:math';

class Piege extends Obstacle {
  @override
  Future<void> affronter(Aventurier joueur) async {
    print(" Un piège apparaît !");
    await Future.delayed(Duration(seconds: 1));
    if (Random().nextBool()) {
      print(" Tu évites le piège avec succès !\n");
    } else {
      print("Aïe ${joueur.nom} !Tu es touché !");
      joueur.perdreVie();
    }
  }
}
