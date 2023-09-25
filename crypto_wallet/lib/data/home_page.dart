import 'dart:convert';

import 'package:crypto_wallet/data/constants.dart';
import 'package:crypto_wallet/data/crypto_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> criptos = [];

  @override
  void initState() {
    criptos = jsonDecode(CRYPTO_EXCHANGES);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypto Wallet"),
      ),
      body: crypto_list(criptos: criptos),
    );
  }
}
