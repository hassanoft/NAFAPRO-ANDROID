import 'package:flutter/material.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Gestion des stocks', style: TextStyle(fontWeight: FontWeight.w800))),
    body: const Center(child: Padding(
      padding: EdgeInsets.all(30),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(Icons.inventory_2_outlined, size: 54, color: Colors.black38),
        SizedBox(height: 14),
        Text('Votre inventaire', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
        SizedBox(height: 6),
        Text('Les produits, quantités, prix et alertes de stock seront disponibles après la connexion à la base de données.', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, height: 1.4)),
      ]),
    )),
    floatingActionButton: FloatingActionButton.extended(
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Formulaire produit à intégrer dans la phase de gestion.'))),
      icon: const Icon(Icons.add), label: const Text('Ajouter un produit'),
    ),
  );
}
