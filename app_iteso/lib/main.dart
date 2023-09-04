import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(21, 76, 121, 1.0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'App ITESO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _likes = 0;

  void _incrementLikes() {
    setState(() {
      _likes++;
    });
  }

  void _decrementLikes() {
    setState(() {
      if (_likes > 0) {
        _likes--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          centerTitle: true,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
                "https://investigacion.iteso.mx/image/journal/article?img_id=7699185&t=1494435594945"),
            ListTile(
              title: const Text(
                "EL ITESO ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "San Pedro Tlaquepaque Jalisco",
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
              trailing: Wrap(spacing: -5, children: <Widget>[
                TextButton.icon(
                  onPressed: _decrementLikes,
                  icon: Icon(Icons.thumb_down_alt_rounded),
                  label: const Text(""),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blueGrey,
                  ),
                ),
                TextButton.icon(
                  onPressed: _incrementLikes,
                  icon: Icon(Icons.thumb_up_alt_rounded),
                  label: Text('$_likes'),
                ),
              ]),
              contentPadding: const EdgeInsets.all(15.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(const SnackBar(
                              content:
                                  Text("Solicitando informacion por email")));
                      },
                      icon: const Icon(Icons.mail),
                      style: ButtonStyle(iconColor:
                          MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.lightBlueAccent;
                        return Colors.black87;
                      })),
                      color: Colors.black87,
                      iconSize: 50.0,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("Correo"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(const SnackBar(
                              content:
                                  Text("Solicitando información en rectoría")));
                      },
                      icon: Icon(Icons.add_call),
                      color: Colors.black87,
                      iconSize: 50.0,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("Llamada"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(const SnackBar(
                              content: Text(
                                  "Se encuentra ubicado en Periférico Sur 8585")));
                      },
                      highlightColor: Colors.indigo,
                      icon: Icon(Icons.assistant_direction_sharp),
                      color: Colors.black87,
                      iconSize: 50.0,
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 5,
                        top: 5,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("Ruta"),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Text(
                'El ITESO es la Universidad Jesuita de Guadalajara.'
                ' Fue fundado en 1957 y pertenece al conjunto de más '
                'de 228 universidades jesuitas en el mundo. Comparte '
                'con ellas la tradición educativa de 450 años, históricamente '
                'ubicada en el centro del pensamiento mundial y reconocida '
                'por la formación de líderes en todos los campos de las '
                'ciencias y las artes.',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
