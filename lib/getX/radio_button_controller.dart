import 'package:get/get.dart';

class GenderselectionController extends GetxController {
  //--------------------------variable declaration----------------//
  RxString selectedGender = "".obs;

//---------------------------helper function-------------------//
  onChangeGender(var gender) {
    selectedGender.value = gender;
  }
}
