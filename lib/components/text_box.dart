import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final String text;
  final String sectionName;

  const MyTextBox({
    Key? key,
    required this.text,
    required this.sectionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[200]),
      padding: EdgeInsets.only(left: 15, bottom: 15),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Section name
              Text(sectionName),
              // Edit Button
              IconButton(
                icon: Icon(Icons.settings),
                color: Colors.grey, // Fixed color value
                onPressed: () {
                  // Add functionality for edit button
                },
              ),
            ],
          ),
          // Text
          Text(text),
        ],
      ),
    );
  }
}
