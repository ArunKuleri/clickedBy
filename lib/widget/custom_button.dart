import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPresseed;
  const CustomButton({super.key, required this.text, required this.onPresseed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPresseed,
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)))),
        child: Text(
          text,
          style: TextStyle(fontSize: 22),
        ));
  }
}
