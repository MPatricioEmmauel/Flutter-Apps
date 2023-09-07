import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key, required String title});

  @override
  State<Home_page> createState() => HomePageState();
}

class HomePageState extends State<Home_page> {
  final List<Color> _colorIcon = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

  void _switchColor(int index) {
    setState(() {
      _colorIcon[index] =
          _colorIcon[index] == Colors.indigo ? Colors.black : Colors.indigo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Mc Flutter"),
      ),
      body: Container(
        width: 400,
        height: 150,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(
          width: 2,
          color: Colors.grey,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(left: 35),
                child: Icon(
                  Icons.account_circle,
                  size: 50,
                ),
              ),
              title: Text("Flutter McFLutter"),
              subtitle: Text("Experienced App Developer"),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("123 Main Street")),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text("(420) 555-0198"),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: const Icon(Icons.accessibility_new_rounded),
                  color: _colorIcon[0],
                  onPressed: () {
                    setState(() {
                      _switchColor(0);
                      const snackBarA = SnackBar(
                        content: Text('Acceso'),
                        backgroundColor: (Colors.blueGrey),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBarA);
                    });
                  },
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _switchColor(1);
                      const snackBarAA = SnackBar(
                        content: Text('Agregar Alarma'),
                        backgroundColor: (Colors.blueGrey),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBarAA);
                    });
                  },
                  icon: const Icon(Icons.alarm_add_rounded),
                  color: _colorIcon[1],
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _switchColor(2);
                      const snackBarL = SnackBar(
                        content: Text('Llamada'),
                        backgroundColor: (Colors.blueGrey),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBarL);
                    });
                  },
                  icon: const Icon(
                    Icons.phone_android,
                  ),
                  color: _colorIcon[2],
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _switchColor(3);
                      const snackBarN = SnackBar(
                        content: Text('Notificaciones Activadas'),
                        backgroundColor: (Colors.blueGrey),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBarN);
                    });
                  },
                  icon: const Icon(Icons.add_alert_rounded),
                  color: _colorIcon[3],
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
