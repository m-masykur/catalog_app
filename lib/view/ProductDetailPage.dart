import 'package:flutter/material.dart';

import 'package:catalog_app/controller/MessagingService.dart';
import 'package:catalog_app/model/Item.dart'; // Add to pubspec.yaml

class ProductDetailPage extends StatelessWidget {
  final Item item;

  const ProductDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(item.imageUrl, height: 250, width: double.infinity, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 12),
                  Text(item.description, style: TextStyle(fontSize: 16)),
                  SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () => MessagingService.chatToShop(context, item),
                      icon: Icon(Icons.chat),
                      label: Text("Chat to Shop"),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        textStyle: TextStyle(fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
