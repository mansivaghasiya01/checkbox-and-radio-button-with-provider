import 'package:chechbox_and_radiobutton_with_provider/provider/checkbox_provider.dart';
import 'package:chechbox_and_radiobutton_with_provider/provider/radio_button_provider.dart';
import 'package:chechbox_and_radiobutton_with_provider/view/radio_button_with_provider_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CheckboxProvider>(
          create: (_) => CheckboxProvider(),
        ),
        ChangeNotifierProvider<RadioButtonProvider>(
          create: (_) => RadioButtonProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const RadioButtonWithProvider(),
      ),
    );
  }
}
