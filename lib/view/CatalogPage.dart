import 'package:catalog_app/controller/ItemController.dart';
import 'package:catalog_app/model/Item.dart';
import 'package:catalog_app/view/ProductDetailPage.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  final ItemController itemController = ItemController();

  CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = itemController.getAllItem();

    return Scaffold(
      appBar: AppBar(title: Text('Catalog')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image.asset('assets/catalog.png', height: 100, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Icon(Icons.storefront, size: 48, color: Colors.green),
                SizedBox(height: 8),
                Text(
                  'Our Products Catalog',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Explore and discover our top picks!.',
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemBuilder: (context, index) {
                final item = items[index];
                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: ClipOval(
                      child: Image.network(
                        item.imageUrl,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(item.name, style: TextStyle(fontSize: 18)),
                    subtitle: Text("Rp ${item.price.toStringAsFixed(0)}"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProductDetailPage(item: item),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
