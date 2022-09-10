import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final Function onPressed;

  const BotonAzul({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      )),
      onPressed: () {
        onPressed;
      },
      child: Container(
        height: 55,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
