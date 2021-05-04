import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(128)),
      height: 60,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Icon(
              Icons.search,
              size: 32,
              color: Colors.grey[700],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8, right: 32),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Search...",
                    labelStyle: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w300,
                        fontSize: 16)),
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
