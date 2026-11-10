import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'clients_screen.dart';
import 'inventory_screen.dart';
import 'settings_screen.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _index = 0;

  static const _pages = [
    DashboardScreen(),
    ClientsScreen(),
    InventoryScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: IndexedStack(index: _index, children: _pages)),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (value) => setState(() => _index = value),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.grid_view_rounded), label: 'Accueil'),
          NavigationDestination(icon: Icon(Icons.people_alt_outlined), label: 'Clients'),
          NavigationDestination(icon: Icon(Icons.inventory_2_outlined), label: 'Stocks'),
          NavigationDestination(icon: Icon(Icons.settings_outlined), label: 'Compte'),
        ],
      ),
    );
  }
}
