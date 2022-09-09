import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final IconData icon;
  final String placeHolder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomInput({
    required this.icon,
    required this.placeHolder,
    required this.textController,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      padding: EdgeInsets.only(
        top: 5,
        left: 5,
        bottom: 5,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: Offset(0, 5),
              blurRadius: 5)
        ],
        color: Colors.white,
      ),
      child: TextField(
        obscureText: this.isPassword,
        controller: this.textController,
        autocorrect: false,
        keyboardType: this.keyboardType,
        // obscureText: true,
        decoration: InputDecoration(
          prefixIcon: Icon(this.icon),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: 'Email',
        ),
      ),
    );
  }
}
