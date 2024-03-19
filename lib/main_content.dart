import 'package:flutter/material.dart';
import 'package:interactive_rating_component/widgets/IconStarWidget.dart';
import 'package:interactive_rating_component/widgets/constants.dart';
import 'package:interactive_rating_component/widgets/number_buttons.dart';
import 'package:interactive_rating_component/widgets/submit_button.dart';

class MainContent extends StatefulWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
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
                color: const Color(0xff212832)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const IconStar(),
                    const SizedBox(height: 20),
                    Text(title, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: "Sans-Serif")),
                    const SizedBox(height: 20),
                    Text(paragraph, style: const TextStyle(fontSize: 15, color: Colors.white)),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 1; i <= 5; i++)
                          NumberButtons(
                            number: i,
                            onTap: (number) {
                              setState(() {
                                selectedNumber = number;
                              });
                            },
                          ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Align(alignment: Alignment.center, child : SubmitButton(number: selectedNumber))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
