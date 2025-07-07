import 'package:catalog_app/controller/UserController.dart';
import 'package:catalog_app/model/User.dart';
import 'package:flutter/material.dart';

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
            Image.asset(profileAsset, height: 150),
            SizedBox(height: 16),
            Text(
              'My Profile',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Icon(Icons.person, color: Colors.blue),
              ),
              title: Text('Fullname', style: TextStyle(fontSize: 20)),
              subtitle: Text(
                user.name,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Icon(Icons.numbers, color: Colors.blue),
              ),
              title: Text('Student Number', style: TextStyle(fontSize: 20)),
              subtitle: Text(
                user.nim,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Icon(Icons.class_rounded, color: Colors.blue),
              ),
              title: Text('Class', style: TextStyle(fontSize: 20)),
              subtitle: Text(
                user.classId,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Icon(Icons.phone, color: Colors.blue),
              ),
              title: Text('Contact', style: TextStyle(fontSize: 20)),
              subtitle: Text(
                user.contact,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
