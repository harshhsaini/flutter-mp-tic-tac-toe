import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CustomButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25) ,boxShadow: [
        BoxShadow(
          color: Colors.indigo.shade800,
          blurRadius: 5,
          spreadRadius: 0
        )
      ]),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width, 50),
          backgroundColor: Colors.indigo,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
