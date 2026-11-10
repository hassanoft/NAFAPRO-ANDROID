import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  String money(int value) => '${NumberFormat('#,##0', 'fr_FR').format(value)} FCFA';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 28),
      children: [
        Row(
          children: [
            Container(
              width: 44, height: 44,
              decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(14)),
              child: const Icon(Icons.storefront_rounded, color: Colors.white),
            ),
            const SizedBox(width: 12),
            const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('NAFAPRO', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900, letterSpacing: 1)),
              Text('Gestion de votre activité', style: TextStyle(color: Colors.black54, fontSize: 12)),
            ])),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none_rounded)),
          ],
        ),
        const SizedBox(height: 26),
        Text('Bonjour 👋', style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w800)),
        const SizedBox(height: 5),
        const Text('Voici le résumé de votre activité.', style: TextStyle(color: Colors.black54)),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [Color(0xFF087F5B), Color(0xFF075B43)]),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('CHIFFRE D’AFFAIRES · CE MOIS', style: TextStyle(color: Colors.white70, fontSize: 11, fontWeight: FontWeight.w700, letterSpacing: .7)),
            const SizedBox(height: 9),
            Text(money(0), style: const TextStyle(color: Colors.white, fontSize: 29, fontWeight: FontWeight.w900)),
            const SizedBox(height: 14),
            const Row(children: [
              Icon(Icons.trending_up, color: Colors.white, size: 17),
              SizedBox(width: 5),
              Text('Vos résultats apparaîtront ici', style: TextStyle(color: Colors.white, fontSize: 12)),
            ]),
          ]),
        ),
        const SizedBox(height: 18),
        const Text('Vue d’ensemble', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
        const SizedBox(height: 12),
        GridView.count(
          crossAxisCount: 2, shrinkWrap: true, physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 10, crossAxisSpacing: 10, childAspectRatio: 1.55,
          children: const [
            _MetricCard(title: 'Factures', value: '0', icon: Icons.receipt_long_outlined),
            _MetricCard(title: 'Clients', value: '0', icon: Icons.people_outline),
            _MetricCard(title: 'Produits', value: '0', icon: Icons.inventory_2_outlined),
            _MetricCard(title: 'Dépenses', value: '0 FCFA', icon: Icons.payments_outlined),
          ],
        ),
        const SizedBox(height: 22),
        const Text('Actions rapides', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
        const SizedBox(height: 12),
        Row(children: const [
          Expanded(child: _QuickAction(icon: Icons.add_circle_outline, label: 'Nouvelle facture')),
          SizedBox(width: 10),
          Expanded(child: _QuickAction(icon: Icons.person_add_alt, label: 'Ajouter client')),
        ]),
        const SizedBox(height: 22),
        const Text('Activité récente', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800)),
        const SizedBox(height: 10),
        Card(child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(children: const [
            Icon(Icons.inbox_outlined, color: Colors.black38, size: 28),
            SizedBox(width: 12),
            Expanded(child: Text('Aucune activité pour le moment. Créez votre première facture ou ajoutez un client.', style: TextStyle(color: Colors.black54, height: 1.4))),
          ]),
        )),
      ],
    );
  }
}

class _MetricCard extends StatelessWidget {
  const _MetricCard({required this.title, required this.value, required this.icon});
  final String title, value;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Card(
    child: Padding(padding: const EdgeInsets.all(14), child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.primary),
        Text(value, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
        Text(title, style: const TextStyle(color: Colors.black54, fontSize: 12)),
      ],
    )),
  );
}

class _QuickAction extends StatelessWidget {
  const _QuickAction({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) => Card(
    child: InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () => ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Cette fonction sera activée dans la prochaine phase.')),
      ),
      child: Padding(padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10), child: Column(children: [
        Icon(icon, color: Theme.of(context).colorScheme.primary, size: 25),
        const SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
      ])),
    ),
  );
}
