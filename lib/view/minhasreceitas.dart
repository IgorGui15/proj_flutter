import 'package:flutter/material.dart';

class MyRecipesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Simulação de lista de receitas do usuário
    List<Map<String, String>> myRecipes = [
      {'name': 'Bolo de Chocolate', 'icon': 'cake'},
      {'name': 'Lasanha de Frango', 'icon': 'fastfood'},
      {'name': 'Salada Caesar', 'icon': 'local_dining'},
      {'name': 'Torta de Maçã', 'icon': 'pie_chart'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Receitas'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: myRecipes.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4, 
              margin: EdgeInsets.only(bottom: 16),
              child: ListTile(
                leading: Icon(getRecipeIcon(myRecipes[index]['icon']!), size: 40),
                title: Text(myRecipes[index]['name']!),
                onTap: () {
                },
              ),
            );
          },
        ),
      ),
    );
  }

   // Função para obter o ícone com base no nome
  IconData getRecipeIcon(String iconName) {
    switch (iconName) {
      case 'cake':
        return Icons.cake;
      case 'fastfood':
        return Icons.fastfood;
      case 'local_dining':
        return Icons.local_dining;
      case 'pie_chart':
        return Icons.pie_chart;
      default:
        return Icons.restaurant;
    }
  }
}
