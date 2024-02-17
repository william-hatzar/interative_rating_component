import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff272E38),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      height: 50,
                      width: 50,
                      child: Transform.scale(
                        scale: 0.3, // Adjust this value as needed
                        child: SvgPicture.asset("images/icon-star.svg"),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text("How did we do?", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: "Sans-Serif")),
                    const SizedBox(height: 20),
                    const Text("Please let us know how we did with your support request. All feedback is appreciated to help us improve our offering!", style: TextStyle(fontSize: 15, color: Colors.white)),
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
