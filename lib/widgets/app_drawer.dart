import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AppDrawer extends StatelessWidget {
  final String selectedRoute;

  const AppDrawer({super.key, required this.selectedRoute});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://blog.sebastiano.dev/content/images/2019/07/1_l3wujEgEKOecwVzf_dqVrQ.jpeg')),
            ),
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
          _buildDrawerItem(
            context,
            icon: IconlyBold.home,
            title: 'Home',
            routeName: '/',
            isSelected: selectedRoute == '/',
          ),
          _buildDrawerItem(
            context,
            icon: IconlyBold.paper,
            title: 'Records',
            routeName: '/records',
            isSelected: selectedRoute == '/records',
          ),
          _buildDrawerItem(
            context,
            icon: IconlyBold.profile,
            title: 'Profile',
            routeName: '/profile',
            isSelected: selectedRoute == '/profile',
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String routeName,
    required bool isSelected,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      selected: isSelected,
      selectedTileColor: Colors.grey[200], // Background color for selected item
      onTap: () {
        Navigator.pop(context); // Close the drawer
        if (!isSelected) {
          Navigator.pushReplacementNamed(context, routeName);
        }
      },
    );
  }
}
