// ignore_for_file: unnecessary_overrides, annotate_overrides, non_constant_identifier_names

import 'package:chechbox_and_radiobutton_with_provider/model/colorModel.dart';
import 'package:get/get.dart';

class MultipleCheckbox extends GetxController {
  List<ColorClass> colorsName = [
    ColorClass(name: "Red"),
    ColorClass(name: "Pink"),
    ColorClass(name: "Black"),
    ColorClass(name: "Blue"),
    ColorClass(name: "White"),
    ColorClass(name: "Wine"),
    ColorClass(name: "Green"),
  ];

  final AllColors = ColorClass(name: "All Colors");
}
