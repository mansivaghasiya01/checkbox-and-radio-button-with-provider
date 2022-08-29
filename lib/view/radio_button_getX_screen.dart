// ignore_for_file: file_names

import 'package:chechbox_and_radiobutton_with_provider/getX/radio_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RadioButtonWithGetX extends StatefulWidget {
  const RadioButtonWithGetX({Key? key}) : super(key: key);

  @override
  State<RadioButtonWithGetX> createState() => _RadioButtonWithGetXState();
}

class _RadioButtonWithGetXState extends State<RadioButtonWithGetX> {
  //--------------------------getX controller object---------------------------//
  GenderselectionController genderselectionController =
      Get.put(GenderselectionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //-------------------------page title-------------------------//
      appBar: AppBar(
        title: const Text("Radio button GetX"),
      ),

      //--------------------------------------view part-----------------------------//
      body: radiobuttonItems(),
    );
  }

  Widget radiobuttonItems() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Text(
            "Gender : ",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Obx(
                () => Radio(
                  value: "Male",
                  groupValue: genderselectionController.selectedGender.value,
                  onChanged: (value) {
                    genderselectionController.onChangeGender(value);
                  },
                ),
              ),
              const Text(
                "Male",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Obx(
                () => Radio(
                  value: "Female",
                  groupValue: genderselectionController.selectedGender.value,
                  onChanged: (value) {
                    genderselectionController.onChangeGender(value);
                  },
                ),
              ),
              const Text(
                "Female",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Obx(
                () => Radio(
                  value: "Other",
                  groupValue: genderselectionController.selectedGender.value,
                  onChanged: (value) {
                    genderselectionController.onChangeGender(value);
                  },
                ),
              ),
              const Text(
                "Other",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
