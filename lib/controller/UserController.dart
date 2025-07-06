import 'package:catalog_app/model/User.dart';

class UserController {
  static User getUser() {
    return User(
      name: 'Hidayatul Fajar',
      nim: '23820063',
      classId: '4A',
      imageUrl: 'assets/profile.png',
      contact: '+62 858 6613 0231'
    );
  }
}
