import 'package:catalog_app/controller/MessagingController.dart';
import 'package:catalog_app/model/Item.dart'; // Add to pubspec.yaml
import 'package:flutter/material.dart';

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
            Image.network(
              item.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text("Rp ${item.price.toStringAsFixed(0)}",
                      style: const TextStyle(fontSize: 18, color: Colors.green)),
                  SizedBox(height: 12),
                  Text(item.description, style: TextStyle(fontSize: 16)),
                  SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () =>
                          MessagingController.chatToShop(context, item),
                      icon: Icon(Icons.chat),
                      label: Text("Whatsapp"),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        textStyle: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
