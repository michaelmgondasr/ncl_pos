import 'package:flutter/material.dart';
import 'package:ncl_pos/widgets/app_drawer.dart';

class TransactionRecords extends StatelessWidget {
  const TransactionRecords({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction records'),
      ),
      drawer: const AppDrawer(selectedRoute: '/records'),
      body: const Center(child: Text('Transaction Records Screen Content')),
    );
  }
}
