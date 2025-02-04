import 'dart:io';
import 'dart:math';
import 'dart:io';

class Aventurier {
  String nom;
  int vies = 3;

  Aventurier({required this.nom});

  void perdreVie() {
    vies--;
    if (vies > 0) {
      print("Oups ! Il te reste $vies vies ♥️.");
    } else {
      print("Game Over ☠😭");
      exit(0);
    }
  }
}
