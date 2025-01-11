import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroll_project/Themes/colors.dart';
import 'package:stroll_project/custom_widgets/radio_button.dart';

class TestScreen1 extends StatefulWidget {
  const TestScreen1({super.key});

  @override
  State<TestScreen1> createState() => _TestScreen1State();
}

class _TestScreen1State extends State<TestScreen1> {
  String? selectedOption;
  void _onOptionChanged(String? value) {
    setState(() {
      selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.transparent, Coolors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 0.65])),
          child: Image.asset(
            "assets/background_video.png",
            fit: BoxFit.fill,
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 10),
                child: Row(
                  children: [
                    Text(
                      "Stroll Bonfire",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Coolors.main,
                              fontWeight: FontWeight.w700,
                              fontSize: 34,
                              shadows: <Shadow>[
                            Shadow(
                                offset: Offset(0, 0),
                                blurRadius: 7.9,
                                color: Coolors.black),
                            Shadow(
                                offset: Offset(0, 0),
                                blurRadius: 2,
                                color: Color(0xFFBEBEBE)),
                            Shadow(
                                offset: Offset(0, 1),
                                blurRadius: 2,
                                color: Color(0xFF24232F))
                          ])),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Coolors.main,
                      size: 50,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 130),
                child: Row(
                  children: [
                    Icon(
                      Icons.timelapse,
                      color: Coolors.white,
                    ),
                    Text(
                      "22h 00m",
                      style: TextStyle(
                        color: Coolors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.person_2,
                      color: Coolors.white,
                    ),
                    Text(
                      "103",
                      style: TextStyle(
                        color: Coolors.white,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 410,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage("assets/Joey_2.png"),
                              radius: 35,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 40, left: 20),
                              child: Text(
                                "Angelina, 28",
                                style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: Coolors.white)),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90, top: 40),
                          child: SizedBox(
                            height: 100,
                            width: 350,
                            child:
                                Text("What is your favorite time of the day?",
                                    style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Coolors.white,
                                    ))),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "“Mine is definitely the peace in the morning.”",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Coolors.questioncolor,
                              wordSpacing: -2)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomRadioButton(
                                text: "The peace in the\nearly mornings",
                                value: "A",
                                selectedOption: selectedOption,
                                onChanged: _onOptionChanged,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CustomRadioButton(
                                text: "The Magical\ngolden hour",
                                value: "B",
                                selectedOption: selectedOption,
                                onChanged: _onOptionChanged,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              CustomRadioButton(
                                text: "Wind-down times\nafter dinner",
                                value: "C",
                                selectedOption: selectedOption,
                                onChanged: _onOptionChanged,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CustomRadioButton(
                                text: "The serenity past\nmidnight",
                                value: "D",
                                selectedOption: selectedOption,
                                onChanged: _onOptionChanged,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
