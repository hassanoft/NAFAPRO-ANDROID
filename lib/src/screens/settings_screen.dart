import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Compte et paramètres', style: TextStyle(fontWeight: FontWeight.w800))),
    body: ListView(padding: const EdgeInsets.all(18), children: [
      Card(child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.storefront)),
        title: const Text('Mon entreprise', style: TextStyle(fontWeight: FontWeight.w700)),
        subtitle: const Text('Configurer le nom, le logo et les coordonnées'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      )),
      Card(child: ListTile(
        leading: const Icon(Icons.workspace_premium_outlined),
        title: const Text('Passer à Premium', style: TextStyle(fontWeight: FontWeight.w700)),
        subtitle: const Text('1 500 FCFA / mois · 12 000 FCFA / an'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      )),
      Card(child: ListTile(
        leading: const Icon(Icons.lock_outline),
        title: const Text('Sécurité et confidentialité'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      )),
      const SizedBox(height: 20),
      const Center(child: Text('NAFAPRO · Version 1.0.0', style: TextStyle(color: Colors.black45, fontSize: 12))),
    ]),
  );
}
