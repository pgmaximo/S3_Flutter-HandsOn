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
      appBar: AppBar(
          title: const Text("List page",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          leading: const Icon(Icons.menu, color: Colors.white, size: 40,)),
      body: Center(
        child: Column(
          children: [
            // LISTA DE ITEMS COM A ATUALIZAÇÃO
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                padding: const EdgeInsets.only(top: 100.0),
                itemBuilder: (context, index) {
                  return items[index];
                },
              ),
            ),

            // BOTÃO DE ADICIONAR ITEM
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
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: const EdgeInsets.all(30.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
              child: const Text('Adicionar novo item', style: TextStyle(color: Colors. white, fontSize: 18, fontWeight: FontWeight.bold)),
            ),

            const SizedBox(height: 25),

            //BOTÃO DE VOLTAR PARA A HOME
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: const EdgeInsets.all(30.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Volte para o Home', style: TextStyle(color: Colors. white, fontSize: 18, fontWeight: FontWeight.bold)),
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
