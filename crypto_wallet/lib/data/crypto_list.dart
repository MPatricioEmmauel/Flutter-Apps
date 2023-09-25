import 'package:flutter/material.dart';

class crypto_list extends StatelessWidget {
  const crypto_list({
    super.key,
    required this.criptos,
  });

  final List criptos;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: criptos.length,
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.network("${criptos[index]["image"]}"),
          title: Text("${criptos[index]["name"]}"),
          subtitle: Text("${criptos[index]["country"]}\n${criptos[index]["year_established"]}"),
          trailing: CircleAvatar(
            backgroundColor: Colors.black12,
            child: Text("${criptos[index]["trust_score"]}"),
          ),
        );
      },
    );
  }
}
