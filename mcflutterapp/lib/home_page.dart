import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mc Flutter'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
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
        child: const Column(
          children: [
            SizedBox(
              width: 80,
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 50,
              ),
              title: Center(child: Text("Flutter McFLutter")),
              subtitle: Center(
                child: Text("Experienced App Developer"),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text("123 Main Street"),
                SizedBox(
                  width: 140,
                ),
                Text("(420) 555-0198")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.accessibility_new_rounded),
                Icon(Icons.alarm),
                Icon(Icons.phone_android),
                Icon(Icons.add_alert_rounded),
                SizedBox(
                  width: 5,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
