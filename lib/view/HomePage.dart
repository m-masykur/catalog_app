import 'package:catalog_app/view/CatalogPage.dart';
import 'package:catalog_app/view/FavoritePage.dart';
import 'package:catalog_app/view/ProfilePage.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    CatalogPage(),  // Halaman Beranda (katalog produk)
    FavoritePage(),        // Dummy Halaman Favorit
    ProfilePage(),         // Dummy Halaman Profil
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Catalog App')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset('assets/smartphone.png', width: 100, height: 100),
//             SizedBox(height: 16),
//             Text('Welcome to the Catalog App!', style: TextStyle(fontSize: 18)),
//             SizedBox(height: 16),
//             ElevatedButton.icon(
//               icon: Icon(Icons.shopping_bag),
//               label: Text('Go to Catalog'),
//               onPressed: () {
//                 Navigator.pushNamed(context, '/catalog');
//               },
//             ),
//             SizedBox(height: 12),
//             ElevatedButton.icon(
//               icon: Icon(Icons.person),
//               label: Text('Go to Profile'),
//               onPressed: () {
//                 Navigator.pushNamed(context, '/profile');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
