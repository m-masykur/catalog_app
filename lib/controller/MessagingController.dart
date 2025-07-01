import 'package:catalog_app/model/Item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MessagingController {
  static void chatToShop(BuildContext context, Item item) async {
    final message = Uri.encodeComponent("Hi, I'm interested in: ${item.name}");
    final phone = "628123456789"; // Replace with your shop's WhatsApp number
    final url = "https://wa.me/$phone?text=$message";

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Could not open WhatsApp')));
    }
  }
}
