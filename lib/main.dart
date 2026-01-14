import 'package:date_picker/timePicker.dart';
import 'package:flutter/material.dart';

import 'DatePicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TimePickerScreen(),
    );
  }
}
