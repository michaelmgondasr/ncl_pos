import 'package:flutter/material.dart';
import 'package:ncl_pos/widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const AppDrawer(selectedRoute: '/'),
      body: const Center(child: Text('Home Screen Content')),
    );
  }
}
