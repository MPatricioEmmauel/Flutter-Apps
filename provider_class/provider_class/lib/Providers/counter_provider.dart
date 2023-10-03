import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0; //Variable privada, la usamos en el provider namas

  int get counter => _counter; // Variable publica

  void increment() {
    _counter++;
    notifyListeners(); // Le avisa a los listeners que cambio un dato
  }

  void decrement() {
    if (_counter > 0) {
      _counter--;
      notifyListeners();
    }
  }

  void reset() {
    _counter = 0;
    notifyListeners();
  }

  void multiDos() {
    _counter = _counter * 2;
    notifyListeners(); // Le avisa a los listeners que cambio un dato
  }

  void multiTres() {
    _counter *= 3;
    notifyListeners();
  }

  void multiCinco() {
    _counter *= 5;
    notifyListeners();
  }

  String getAviso(int factor) {
    String mensaje;
    switch (factor) {
      case 2:
        mensaje = "Multiplicado por 2";
        break;
      case 3:
        mensaje = "Multiplicado por 3";
        break;
      case 5:
        mensaje = "Multiplicado por 5";
        break;
      default:
        mensaje = "Multiplicado por $factor";
    }
    return mensaje;
  }

  bool esPrimo(int numero) {
    if (numero <= 1) {
      return false;
    }
    for (int i = 2; i <= (numero / 2); i++) {
      if (numero % i == 0) {
        return false;
      }
    }
    return true;
  }
}
