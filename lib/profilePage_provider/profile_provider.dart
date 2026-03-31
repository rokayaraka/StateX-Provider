import 'package:flutter/foundation.dart';

String Name = 'Rokaya Sultana Raka';
String Email = 'raka@gmail.com';
String Mobile = "0171713636";

class ProfileProvider with ChangeNotifier {
  String _name = 'Rokaya Sultana Raka';
  String _email = 'raka@gmail.com';
  String _mobile = "0171713636";

  String get name => _name;
  String get email => _email;
  String get mobile => _mobile;

  void setInfo() {
    if (Name != _name) {
      _name = Name;
    } else {
      _name='Rifat Nur';
    }
    if (Email != _email) {
      _email = Email;
    } else {
      _email = "Rifat@gmail.com";
    }
    if (Mobile != _mobile) {
      _mobile = Mobile;
    } else {
      _mobile = "12345678";
    }

    notifyListeners();
  }
}
