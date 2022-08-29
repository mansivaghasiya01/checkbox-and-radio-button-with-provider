// ignore_for_file: file_names

import 'package:chechbox_and_radiobutton_with_provider/getX/multiple_checkbox_controller.dart';
import 'package:chechbox_and_radiobutton_with_provider/model/colorModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultipleSelectedCheckBox extends StatefulWidget {
  const MultipleSelectedCheckBox({Key? key}) : super(key: key);

  @override
  State<MultipleSelectedCheckBox> createState() =>
      _MultipleSelectedCheckBoxState();
}

class _MultipleSelectedCheckBoxState extends State<MultipleSelectedCheckBox> {
  MultipleCheckbox multipleCheckbox = Get.put(MultipleCheckbox());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//
      appBar: AppBar(
        title: const Text("Multiple Selected CheckBox - GetX"),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Checkbox(
                value: multipleCheckbox.AllColors.value,
                onChanged: (value) {
                  onAllSelected(multipleCheckbox.AllColors);
                },
              ),
              Text(multipleCheckbox.AllColors.name.toString()),
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          ...multipleCheckbox.colorsName.map(
            (e) => Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 15)),
                Checkbox(
                  value: e.value,
                  onChanged: (value) {
                    onSelectedItem(e);
                  },
                ),
                Text(
                  e.name.toString(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onAllSelected(ColorClass check) {
    final newCheck = !check.value;
    setState(() {
      check.value = newCheck;
      for (ColorClass element in multipleCheckbox.colorsName) {
        element.value = newCheck;
      }
    });
  }

  onSelectedItem(ColorClass check) {
    final newCheck = !check.value;
    setState(() {
      check.value = newCheck;
      if (!newCheck) {
        multipleCheckbox.AllColors.value = false;
      } else {
        final allSelected =
            multipleCheckbox.colorsName.every((element) => element.value);
        multipleCheckbox.AllColors.value = allSelected;
      }
    });
  }
}
