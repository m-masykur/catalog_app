import 'package:catalog_app/model/User.dart';

class UserController {
  static User getUser(){
    return User(name: 'fajar.dev', number: '123-456-7890', email: 'fajar@bd.feb.upgris', imageUrl: 'assets/profile.png');
  }
}