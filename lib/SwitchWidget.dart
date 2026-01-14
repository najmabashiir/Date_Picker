import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Switch Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(
            value: isSwitched,
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          Text(
            isSwitched ? 'Switch is ON' : 'Switch is OFF',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
