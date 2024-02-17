import 'package:flutter/material.dart';

class NumberButtons extends StatefulWidget {
  final int number;
  final Function(int) onTap;
  const NumberButtons({Key? key, required this.number, required this.onTap}) : super(key: key);

  @override
  State<NumberButtons> createState() => _NumberButtonsState();
}

class _NumberButtonsState extends State<NumberButtons> {
  final Color defaultColor = const Color(0xff272E38);
  final Color alternateColor = Colors.orange; // Change this to your desired alternate color
  // Initially, the button color is set to the default color.
  Color buttonColor = const Color(0xff272E38);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          buttonColor = (buttonColor == defaultColor) ? alternateColor : defaultColor;
        });
        widget.onTap(widget.number); // Call the callback with the number when tapped
      },
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 50,
        width: 50,
        child: Transform.scale(
          scale: 0.8,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "${widget.number}",
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
