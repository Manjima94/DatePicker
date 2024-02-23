import 'package:flutter/material.dart';

class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body : 
      Row(
            children: [
              Container(
                width: 50,
                height: 60,
                child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: CircleAvatar()),
          
              )
            ]
              )
              
    );
  }
}