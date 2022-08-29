import 'package:flutter/cupertino.dart';

class CheckboxProvider extends ChangeNotifier {
  bool value = false;
  List<CityModel> cityList = [
    CityModel('Surat'),
    CityModel('Ahemdabad'),
    CityModel('Anand'),
    CityModel('Vadodara'),
    CityModel('Nadiyad'),
  ];

  void addTCity(CityModel newCityModel) {
    cityList.add(newCityModel);
    notifyListeners();
  }

  void deltaValue(bool b, int index) {
    cityList[index].value = !cityList[index].value; // Individual CityModel value
    notifyListeners();
  }
}

class CityModel {
  String name;
  bool value = false;
  CityModel(this.name);
}
