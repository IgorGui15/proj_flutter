import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre o Aplicativo'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Aplicativo de Receitas Culinárias',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'O objetivo deste aplicativo é ajudar os usuários a encontrar e criar receitas culinárias de forma fácil e intuitiva.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Desenvolvido por:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Icon(
              Icons.person,
              size: 120,
              color: Colors.green,
            ),
            SizedBox(height: 10),
            Text(
              'Igor Guilherme Da Silva',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

