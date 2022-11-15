import 'package:flutter/cupertino.dart';
//provider
class HomePageProvider with ChangeNotifier {
  bool? isEligible;
  String? Eligiblemessage = " ";

// function this cheke notifier 
  void Chekeelibilite(int age) {
    if (age >= 18) {
      isEligible = true;
      Eligiblemessage = "your are Eligible";
      notifyListeners(); 
    } else {
      isEligible = false;
      Eligiblemessage = "your ares not Eligible";
      notifyListeners();
    }
  }
}
