import 'package:flutter/material.dart';
import 'package:navigation/contato.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page'),),
      body: Center(
        child: ElevatedButton(
          child: const Text('Navegar'),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {return SecondPage(contato: Contato('Vinícius', 'vinicius@fiap.com'),);})
            );
          },
        ),
      ),
    );
  }
}