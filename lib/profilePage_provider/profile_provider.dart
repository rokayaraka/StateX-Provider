import 'package:flutter/foundation.dart';

class ProfileProvider with ChangeNotifier{
  String _name ='Rokaya Sultana Raka';
  String _email = 'raka@gmail.com';
  String _mobile="0171713636";

  String get name=>_name;
  String get email=>_email;
  String get mobile=>_mobile;

  void setInfo(){
    _name="Rifat Nur Shafin";
    _email="Rifat@gmail.com";
        _mobile="12345678";
    notifyListeners();

  }


  }
