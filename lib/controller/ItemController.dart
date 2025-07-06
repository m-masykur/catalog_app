import 'package:catalog_app/model/Item.dart';

class ItemController {
  List<Item> productData = [
    Item(
      name: 'Coffee Glass',
      description:
          'Elegant and heat-resistant glass perfect for enjoying hot or iced coffee in style.',
      imageUrl:
          'https://fastly.picsum.photos/id/30/1280/901.jpg?hmac=A_hpFyEavMBB7Dsmmp53kPXKmatwM05MUDatlWSgATE',
    ),
    Item(
      name: 'Old Book',
      description:
          'A vintage hardcover book with a weathered look, perfect for collectors and lovers of classic literature.',
      imageUrl:
          'https://fastly.picsum.photos/id/24/4855/1803.jpg?hmac=ICVhP1pUXDLXaTkgwDJinSUS59UWalMxf4SOIWb9Ui4',
    ),
    Item(
      name: 'Vintage Camera',
      description:
          'A classic film camera that adds charm to your photography collection, perfect for retro-style shoots.',
      imageUrl:
          'https://fastly.picsum.photos/id/91/3504/2336.jpg?hmac=tK6z7RReLgUlCuf4flDKeg57o6CUAbgklgLsGL0UowU',
    ),
    Item(
      name: 'Rustic Chair',
      description:
          'Handcrafted wooden chair with a rustic finish, ideal for cozy corners or reading nooks.',
      imageUrl:
          'https://fastly.picsum.photos/id/311/1000/563.jpg?hmac=M6WX06qTw-1eQj4z12Zh-NPeJnll-6a_yx9CbNnRPHs',
    ),
    Item(
      name: 'Ceramic Vase',
      description:
          'A minimalist ceramic vase, perfect for displaying fresh or dried flowers with elegance.',
      imageUrl:
          'https://fastly.picsum.photos/id/82/1500/997.jpg?hmac=VcdCqu9YiLpbCtr8YowUCSUD3-245TGekiXmtiMXotw',
    ),
  ];

  List<Item> getAllItem() {
    return productData;
  }
}
