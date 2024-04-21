import 'package:flutter/material.dart';

class ItemLista extends StatelessWidget {
  const ItemLista({super.key});

  @override
  Widget build(BuildContext context) {
    // final contador;
    // const ItemLista({super.key});

    return Container (
      child: const Row(
        children: [
          // Text('Item ${contador.toString()}'),
          Icon(Icons.delete)
        ],
      ),
    );
  }
}