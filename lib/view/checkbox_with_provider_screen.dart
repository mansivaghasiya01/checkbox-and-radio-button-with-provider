import 'package:chechbox_and_radiobutton_with_provider/provider/checkbox_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckboxWithProviderScreen extends StatefulWidget {
  const CheckboxWithProviderScreen({Key? key}) : super(key: key);

  @override
  State<CheckboxWithProviderScreen> createState() =>
      _CheckboxWithProviderScreenState();
}

class _CheckboxWithProviderScreenState
    extends State<CheckboxWithProviderScreen> {
  @override
  Widget build(BuildContext context) {
    final tasks = Provider.of<CheckboxProvider>(context);
    final cityList = tasks
        .cityList; //ListView helps you iterate over all the elements on the list
    return Scaffold(
//------------------------------------page  title---------------------------------//

      appBar: AppBar(title: const Text("Check box - Provider")),

//-----------------------------------UI-----------------------------------------//
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cityList.length,
                itemBuilder: (context, index) {
                  final task = cityList[index];
                  return Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: task.value,
                            onChanged: (newValue) {
                              Provider.of<CheckboxProvider>(context,
                                      listen: false)
                                  .deltaValue(newValue!, index);
                            },
                          ),
                          Text(tasks.cityList[index].name),
                        ],
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
