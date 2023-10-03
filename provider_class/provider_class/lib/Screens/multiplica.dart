import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/Providers/counter_provider.dart';

class Multiplica extends StatefulWidget {
  const Multiplica({super.key});

  @override
  State<Multiplica> createState() => _MultiplicaState();
}

class _MultiplicaState extends State<Multiplica> {
  @override
  Widget build(BuildContext context) {
    var counterProvider = context.watch<CounterProvider>();

    return Center(
      child: Column(
        children: [
          Text(
            counterProvider.counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterProvider.multiDos();
                    _mostrarAviso(context, 2);
                  },
                  child: Text('x2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterProvider.multiTres();
                    _mostrarAviso(context, 3);
                  },
                  child: Text('x3'),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterProvider.multiCinco();
                    _mostrarAviso(context, 5);
                  },
                  child: Text('x5'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _mostrarAviso(BuildContext context, int factor) {
    String mensaje = context.read<CounterProvider>().getAviso(factor);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(mensaje),
      duration: Duration(seconds: 2),
    ));
  }
}
