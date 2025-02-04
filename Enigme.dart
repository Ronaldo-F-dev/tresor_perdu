import 'Obstacle.dart';
import 'dart:io';
import 'Aventurier.dart';

class Enigme extends Obstacle {
  String question;
  String reponse;
  Enigme(this.question, this.reponse);

  @override
  Future<void> affronter(Aventurier joueur) async {
    print(" Énigme : $question");
    while (true) {
      stdout.write("Ta réponse : ");
      String? reponseJoueur = stdin.readLineSync()?.toLowerCase();
      if (reponseJoueur == reponse.toLowerCase()) {
        print(" Bonne réponse !\n");
        break;
      } else {
        print(" Mauvaise réponse !");
        joueur.perdreVie();
      }
    }
  }
}
