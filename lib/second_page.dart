import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interactive_rating_component/widgets/constants.dart';

class SecondPage extends StatefulWidget {
  final int number;
  const SecondPage({Key? key, required this.number}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int selectedNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141519),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 380,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xff212832),
              ),
              child: Column(
                children: [
                 const SizedBox(height: 38),
                 SvgPicture.asset(imagePathThankYou),
                 const SizedBox(height: 27),
                 Container(
                   height: 33,
                   width: 200,
                   decoration: BoxDecoration(
                     color: const Color(0xff272E38),
                     borderRadius: BorderRadius.circular(20)
                   ),
                   child: Align(
                     alignment: Alignment.center,
                     child: Text("You have selected ${widget.number} out of 5", style: const TextStyle(color: Colors.orange)),
                 )
                 ),
                  const SizedBox(height: 20),
                  Text(thankYou, style: const TextStyle(fontSize: 27, color: Colors.white, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Text(secondPagePara, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16, color: Colors.white))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
