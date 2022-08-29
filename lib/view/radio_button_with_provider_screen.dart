// ignore_for_file: file_names

import 'package:chechbox_and_radiobutton_with_provider/provider/radio_button_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class RadioButtonWithProvider extends StatefulWidget {
  const RadioButtonWithProvider({Key? key}) : super(key: key);

  @override
  State<RadioButtonWithProvider> createState() =>
      _RadioButtonWithProviderState();
}

class _RadioButtonWithProviderState extends State<RadioButtonWithProvider> {
  @override
  Widget build(BuildContext context) {
    final checkProvider =
        Provider.of<RadioButtonProvider>(context); //provider object
    return Scaffold(
        //-------------------------page title-------------------------//
        appBar: AppBar(
          title: const Text("Radio button - Provider"),
        ),

        //--------------------------------------view part-----------------------------//
        body: radioItems(checkProvider));
  }

  Widget radioItems(checkProvider) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              Radio(
                value: "Male",
                groupValue: checkProvider.genderValue,
                onChanged: checkProvider.onRadioChange,
              ),
              const Text(
                "Male",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Radio(
                value: "Female",
                groupValue: checkProvider.genderValue,
                onChanged: checkProvider.onRadioChange,
              ),
              const Text(
                "Female",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Radio(
                value: "Other",
                groupValue: checkProvider.genderValue,
                onChanged: checkProvider.onRadioChange,
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
