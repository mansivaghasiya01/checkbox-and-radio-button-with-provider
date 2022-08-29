import 'package:flutter/cupertino.dart';



class RadioButtonProvider extends ChangeNotifier {
 String genderValue = "";

 onRadioChange(value){
  genderValue = value;
  notifyListeners();
  
 }
  
}