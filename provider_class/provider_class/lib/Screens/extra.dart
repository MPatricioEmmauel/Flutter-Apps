import 'package:flutter/material.dart';

class Extra extends StatelessWidget {
  final int numeroModificado;

  Extra(int counter, {required this.numeroModificado});

  Color calcularColor() {
    if (numeroModificado % 10 == 0 && numeroModificado <= 100) {
      // Cambia el color para múltiplos de 10 hasta 100
      return Colors.green;
    } else {
      // Color fijo para otros valores
      return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    Color color = calcularColor();

    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: color,
        child: Center(
          child: Text(
            'Extra',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
