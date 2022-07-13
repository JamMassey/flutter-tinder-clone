import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  final String text;
  final VoidCallback callback; // Notice the variable type
  Button(this.text, this.callback);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton (
          onPressed: callback,
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )),
        ),
      ),
    );
  }
}