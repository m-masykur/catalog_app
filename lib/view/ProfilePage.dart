import 'package:flutter/material.dart';

import 'package:catalog_app/controller/UserService.dart';
import 'package:catalog_app/model/User.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = UserController.getUser();
    final String profileAsset = user.imageUrl;
    return Scaffold(
      appBar: AppBar(title: Text('${user.name}\'s Profile')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Image.asset(
              profileAsset,
              height: 150
            ),
            SizedBox(height: 16),
            Text('My Profile', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Icon(Icons.person, color: Colors.blue),
              ),
              title: Text('owner', style: TextStyle(fontSize: 20)),
              subtitle: Text(user.name, style: TextStyle(fontSize: 16, color: Colors.black54)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Icon(Icons.email, color: Colors.blue),
              ),
              title: Text('Email', style: TextStyle(fontSize: 20)),
              subtitle: Text(user.email, style: TextStyle(fontSize: 16, color: Colors.black54)),
            ),

            SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Icon(Icons.arrow_back),
              label: Text('Back to Home'),
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}