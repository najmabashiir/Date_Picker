import 'package:flutter/material.dart';

class myDatepicker extends StatefulWidget {
  const myDatepicker({super.key});

  @override
  State<myDatepicker> createState() => _myDatepickerState();
}

class _myDatepickerState extends State<myDatepicker> {
  DateTime? selectedDate;
  Future<void>selectdate(BuildContext context)async{
    final DateTime? picked= await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
    );
    if (picked!=null){
      setState(() {
        selectedDate=picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
        title: Text('Date Picker Example '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed:(){
                selectdate(context);
                },
          child: Text('select date' ),
          ),
          SizedBox(height: 20),
          Text(
              selectedDate==null
                  ?'no date selected'
                  : 'selected Date :${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
            style: TextStyle(fontSize: 16),

          )
        ],
      ),
    );
  }
}
