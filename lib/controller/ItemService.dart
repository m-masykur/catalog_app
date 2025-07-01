import 'package:catalog_app/model/Item.dart';

class ItemService{
  static List<Item> getAllItem(){
    return [
      Item(
        name: 'Coffee Glass',
        description: 'Elegant and heat-resistant glass perfect for enjoying hot or iced coffee in style.',
        imageUrl: 'https://fastly.picsum.photos/id/30/1280/901.jpg?hmac=A_hpFyEavMBB7Dsmmp53kPXKmatwM05MUDatlWSgATE',
      ),
      Item(
        name: 'Old Book',
        description: 'A vintage hardcover book with a weathered look, perfect for collectors and lovers of classic literature.',
        imageUrl: 'https://fastly.picsum.photos/id/24/4855/1803.jpg?hmac=ICVhP1pUXDLXaTkgwDJinSUS59UWalMxf4SOIWb9Ui4',
      ),
    ];
  }
}