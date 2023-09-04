import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tips_app/checkbox_state.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.green,
                ),
                foregroundColor: MaterialStatePropertyAll<Color>(
                  Colors.white,
                ))),
      ),
      home: const MyHomePage(title: 'Tip Time'),
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
  var costController = TextEditingController();
  double _costOfService = 20;
  int _value = 0;
  bool roundTactive = false;

  void _TipAmountUpdate(cost) {
    setState(() {
      _costOfService = cost;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          foregroundColor: Colors.white,
          title: Text(widget.title),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: costController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (cost) {
                  _TipAmountUpdate(cost);
                },
                decoration: const InputDecoration(
                    labelText: 'Cost of service',
                    icon: Icon(Icons.store),
                    iconColor: Colors.green,
                    //prefixIcon: Icon(Icons.store),
                    border: OutlineInputBorder()),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Wrap(
                  children: [
                    Icon(
                      Icons.notifications_active_sharp,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("How was the service?"),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Radio(
                      value: 20,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text("Amazing 20%"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: 18,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text("Amazing 20%"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: 15,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text("Amazing 20%"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Wrap(
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Icon(
                          Icons.arrow_outward_rounded,
                          color: Colors.green,
                        )),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 10),
                      child: Text("Round Up Tip"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170),
                      child: Switch(
                          value: roundTactive,
                          onChanged: (value) {
                            setState(() {
                              roundTactive = value;
                            });
                          }),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 40),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Calculate"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Tip Amount: $_costOfService",
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
