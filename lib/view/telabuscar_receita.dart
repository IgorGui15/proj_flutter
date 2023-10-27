import 'package:flutter/material.dart';

class RecipeSearchPage extends StatefulWidget {
  @override
  _RecipeSearchPageState createState() => _RecipeSearchPageState();
}

class _RecipeSearchPageState extends State<RecipeSearchPage> {
  String searchQuery = '';
  List<String> searchResults = []; // Lista simulada de resultados da busca

  void searchRecipes() {
    // Lógica para realizar a busca das receitas
    // Você pode usar uma API ou banco de dados para obter os resultados correspondentes à consulta
    // Neste exemplo, vamos usar uma lista simulada de resultados
    List<String> dummyResults = [
      'Bolo de Chocolate',
      'Lasanha de Frango',
      'Salada Caesar',
      'Torta de Maçã',
    ];

    setState(() {
      searchResults = dummyResults
          .where((recipe) =>
              recipe.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar Receitas'),
        backgroundColor: Colors.green, // Cor da barra de título (verde)
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Digite o nome da receita',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: searchRecipes,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Resultados da busca:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Cor de fundo (verde)
                      onPrimary: Colors.white, // Cor do texto (branco)
                      padding: EdgeInsets.all(20), // Espaçamento interno
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Borda arredondada
                      ),
                    ),
                    child: Text(
                      searchResults[index],
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      // Navegar para a tela de detalhes da receita selecionada
                      // Implemente essa lógica de acordo com sua estrutura de navegação
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
