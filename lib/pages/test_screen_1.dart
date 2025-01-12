import 'package:flutter/cupertino.dart';
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
  int _selectedIndex = 0;
  void _onOptionChanged(String? value) {
    setState(() {
      selectedOption = value;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coolors.black,
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
                    stops: [0.5, 0.6])),
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
                  height: 350,
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
                                backgroundImage:
                                    AssetImage("assets/Joey_2.png"),
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
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText:
                                      "pick your option\nsee who has a similar mind",
                                  hintStyle: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                      color: Coolors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: Coolors.black.withOpacity(0.5),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                ),
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Coolors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Add functionality for mic icon
                              },
                              icon: const Icon(
                                Icons.mic,
                                size: 30,
                                color: Coolors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Add functionality for send icon
                              },
                              icon: const Icon(
                                Icons.send,
                                size: 30,
                                color: Coolors.white,
                              ),
                            ),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Coolors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_on_square),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Coolors.main, // Use your theme color
        unselectedItemColor: Colors.grey, // Use your theme color
        onTap: _onItemTapped,
      ),
    );
  }
}
