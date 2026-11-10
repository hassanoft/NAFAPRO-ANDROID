import 'package:flutter/material.dart';

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Clients', style: TextStyle(fontWeight: FontWeight.w800))),
    body: const Center(child: Padding(
      padding: EdgeInsets.all(30),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(Icons.people_alt_outlined, size: 54, color: Colors.black38),
        SizedBox(height: 14),
        Text('Votre espace clients', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
        SizedBox(height: 6),
        Text('La création, la modification et l’historique des clients seront connectés à votre compte dans la phase de gestion.', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, height: 1.4)),
      ]),
    )),
    floatingActionButton: FloatingActionButton.extended(
      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Formulaire client à intégrer dans la phase 2.'))),
      icon: const Icon(Icons.add), label: const Text('Ajouter'),
    ),
  );
}
