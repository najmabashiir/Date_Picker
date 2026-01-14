import 'package:flutter/material.dart';

class TimePickerScreen extends StatefulWidget {
  @override
  State<TimePickerScreen> createState() => _TimePickerScreenState();
}
class _TimePickerScreenState extends State<TimePickerScreen> {
  TimeOfDay? selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Time Picker Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              _selectTime(context);
            },
            child: Text('Select Time'),
          ),
          SizedBox(height: 20),
          Text(
            selectedTime == null
                ? 'No time selected'
                : 'Selected Time: ${selectedTime!.hour}:${selectedTime!.minute}',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
