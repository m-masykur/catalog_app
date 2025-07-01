import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catalog App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/smartphone.png',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 16),
            Text('Welcome to the Catalog App!', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Icon(Icons.shopping_bag),
              label: Text('Go to Catalog'),
              onPressed: () {
                Navigator.pushNamed(context, '/catalog');
              }
            ),
            SizedBox(height: 12),
            ElevatedButton.icon(
              icon: Icon(Icons.person),
              label: Text('Go to Profile'),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              }
            ),
          ],
        ),
      ),
    );
  }
}