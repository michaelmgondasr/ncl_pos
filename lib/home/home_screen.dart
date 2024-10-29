import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:ncl_pos/screens/profile_screen.dart';
import 'package:ncl_pos/screens/transaction_records_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary),
              accountName: const Text(
                'qualchriss',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: const Text(
                'qualchrisspina@gmail.com',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: const FlutterLogo(),
            ),
            ListTile(
              leading: const Icon(
                IconlyBold.home,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) =>  const HomeScreen())
                  );
              },
            ),
            ListTile(
              leading: const Icon(
                IconlyBold.paper,
              ),
              title: const Text('records'),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const TransactionRecords())
                  );
              },
            ),
            ListTile(
              leading: const Icon(
                IconlyBold.profile,
              ),
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const ProfileScreen())
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}
