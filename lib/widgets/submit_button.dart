import 'package:flutter/material.dart';
import 'package:interactive_rating_component/second_page.dart';

class SubmitButton extends StatefulWidget {
  final int number;
  const SubmitButton({Key? key, required this.number}) : super(key: key);

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    int selectedNumber = 0;
    return GestureDetector(
      onTap: () async {
        // Navigate to the second page and wait for result
        final result = await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SecondPage(number: widget.number)),
        );

        // Update the state with the result if available
        if (result != null) {
          setState(() {
            selectedNumber = result;
          });
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange ,
          borderRadius: BorderRadius.circular(30.0),
        ),
        height: 50,
        width: 1000,
        child: Transform.scale(
          scale: 0.8, // Adjust this value as needed
          child: const Align(alignment: Alignment.center, child: Text("SUBMIT", style: TextStyle( fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold))),
        ),
      ),
    );
  }
}

