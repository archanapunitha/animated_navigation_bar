import 'package:flutter/material.dart';

class FoodyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Foody Cart Page",
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),),
        padding: EdgeInsets.all(10.0),
      ),
    );
  }
}
