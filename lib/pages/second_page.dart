import 'package:flutter/material.dart';
import 'package:handson2/widgets/itens_listas.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<int> contador = [];
  List<ItemLista> items = []; // Use 'ItemLista' instead of 'Widget'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  final newItem = ItemLista(
                    contador: contador.length,
                  );
                  items.add(newItem);
                  contador.add(contador.length);
                });
              },
              child: const Text('Adicionar novo item'),
            ),

            // Dynamically render 'ItemLista' widgets
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return items[index];
                },
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              }, 
              child: const Text('Volte para o Home'),
            )
          ],
        ),
      ),
    );
  }
}
