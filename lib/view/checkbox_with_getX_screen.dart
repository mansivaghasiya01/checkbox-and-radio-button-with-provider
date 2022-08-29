// ignore_for_file: file_names

import 'package:chechbox_and_radiobutton_with_provider/getX/checkbox_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckBoxGetXView extends StatefulWidget {
  const CheckBoxGetXView({Key? key}) : super(key: key);

  @override
  State<CheckBoxGetXView> createState() => _CheckBoxGetXViewState();
}

class _CheckBoxGetXViewState extends State<CheckBoxGetXView> {
  //----------getX object-------------//
  CheckBoxController checkBoxController = Get.put(
    CheckBoxController(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //---------------------page title---------------------//
      appBar: AppBar(
        title: const Text("Check Box - GetX"),
        centerTitle: true,
      ),

      //--------------------view part----------------//
      body: checkBoxItems(),
    );
  }

  Widget checkBoxItems() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Select your favorite city :"),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  value: checkBoxController.suratCheckbox.value,
                  onChanged: (value) {
                    checkBoxController.suratCheckbox.value =
                        !checkBoxController.suratCheckbox.value;
                  },
                ),
              ),
              const Text("Surat"),
            ],
          ),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  value: checkBoxController.vadodaraCheckbox.value,
                  onChanged: (value) {
                    checkBoxController.vadodaraCheckbox.value =
                        !checkBoxController.vadodaraCheckbox.value;
                  },
                ),
              ),
              const Text("Vadodara"),
            ],
          ),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  value: checkBoxController.ahemadabadCheckbox.value,
                  onChanged: (value) {
                    checkBoxController.ahemadabadCheckbox.value =
                        !checkBoxController.ahemadabadCheckbox.value;
                  },
                ),
              ),
              const Text("Ahemdabad"),
            ],
          ),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  value: checkBoxController.anandCheckbox.value,
                  onChanged: (value) {
                    checkBoxController.anandCheckbox.value =
                        !checkBoxController.anandCheckbox.value;
                  },
                ),
              ),
              const Text("Anand"),
            ],
          ),
          Row(
            children: [
              Obx(
                () => Checkbox(
                  value: checkBoxController.nadiyadCheckbox.value,
                  onChanged: (value) {
                    checkBoxController.nadiyadCheckbox.value =
                        !checkBoxController.nadiyadCheckbox.value;
                  },
                ),
              ),
              const Text("Nadiyad"),
            ],
          ),
        ],
      ),
    );
  }
}
