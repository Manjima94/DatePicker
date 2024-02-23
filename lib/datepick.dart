// ignore_for_file: avoid_print, camel_case_types

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class datepick extends StatefulWidget {
  const datepick({super.key});

  @override
  State<datepick> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<datepick> {
  var t;

  TimeOfDay? selectedtime;

  void picktime() async {
    var t =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      selectedtime = t;
    });
  }

  var d;
  DateTime? selecteddate;
  void pickdate() async {
    d = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000, 12, 31),
        lastDate: DateTime(3000, 1, 1));
    setState(() {
      selecteddate = d;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                d = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000, 12, 31),
                    lastDate: DateTime(3000, 1, 1));
                pickdate();
                if (d != null) {
                  print(d);
                }
              },
              child: const Text('date'),
            ),
            Text(
                selecteddate != null ? DateFormat('dd-MM-yyyy').format(d) : ''),
            ElevatedButton(
                onPressed: () async {
                  t = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now());
                  picktime();
                  if (t != null) {
                    print(t);
                  }
                },
                child: const Text('Time')),
            Text(selectedtime != null ? selectedtime!.format(context) : '')
          ],
        ),
      ),
    );
  }
}
