import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
        backgroundColor: Colors.green, // Cor da barra de título (verde)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Configurações do Aplicativo',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Cor de fundo (verde)
                onPrimary: Colors.white, // Cor do texto (branco)
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Espaçamento interno
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
              ),
              child: Text(
                'Ativar Notificações',
                style: TextStyle(fontSize: 20), // Tamanho do texto
              ),
              onPressed: () {
                // Adicione a ação para ativar notificações
              },
            ),
            SizedBox(height: 20), // Espaço entre os botões
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Cor de fundo (verde)
                onPrimary: Colors.white, // Cor do texto (branco)
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Espaçamento interno
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
              ),
              child: Text(
                'Idioma do Aplicativo',
                style: TextStyle(fontSize: 20), // Tamanho do texto
              ),
              onPressed: () {
                // Adicione a ação para selecionar o idioma
              },
            ),
          ],
        ),
      ),
    );
  }
}
