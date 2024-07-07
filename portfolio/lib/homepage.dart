import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: screenHeight * 0.13,
                  color: Colors.transparent,
                ),
                SizedBox(
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.15,
                  child: Stack(
                    children: [
                      Positioned(
                        left: screenWidth * 0.5-174,
                        top: screenHeight * 0.0,
                        child: SizedBox(
                          width: 200,
                          height: screenHeight * 0.05,
                          child: Text(
                            'Hi, my name is',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontFamily: GoogleFonts.lexend().fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.5-194,
                        top: screenHeight * 0.033,
                        child: SizedBox(
                          width: 300,
                          height: screenHeight * 0.05,
                          child: Text(
                            'Rishav Kumar Sinha.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: const Color(0xFF1E1E1E),
                              fontSize: 25,
                              fontFamily: GoogleFonts.rowdies().fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.5-190,
                        top: screenHeight * 0.075,
                        child: SizedBox(
                          width: 360,
                          height: screenHeight * 0.1,
                          child: Text(
                            'I am a Flutter-Developer & Open-\nSource Enthusiast.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: GoogleFonts.lexend().fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.5-190,
                        top: screenHeight * 0.016,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/resume.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: screenHeight * 0.02,
                  color: Colors.transparent,
                ),
                SizedBox(
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.8,
                  child: Stack(
                    children: [
                      Positioned(
                        left: screenWidth * 0.5-190,
                        top: screenHeight * 0.0,
                        child: Text(
                          'About me',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 25,
                            fontFamily: GoogleFonts.rowdies().fontFamily,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.5-210,
                        top: screenHeight * 0.04,
                        child: Container(
                          width: 175,
                          height: 130,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/lazy.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.5-50,
                        top: screenHeight * 0.07,
                        child: SizedBox(
                          width: 185,
                          height: screenHeight * 0.22,
                          child: Text(
                            'I am a 2nd-year Undergraduate at Nit Silchar who is passionate about App Development and loves Open-Source.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.5,
                              fontFamily: GoogleFonts.lexend().fontFamily,
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.5-190,
                        top: screenHeight * 0.23,
                        child: SizedBox(
                          width: 330,
                          height: screenHeight * 0.6,
                          child: Text(
                            'My interest in coding and software development started during the start of 2nd Semester when the GDSC workshops were underway, turns out submission deadlines are much closer than you think they are.\n\nFast forward to now, I am learning App Development, both Android Native and Flutter alongside active contributions to the Open-Source project ‘OpSo’, a flutter application that provides comprehensive information about various open-source programs, under the ongoing GSSoC 2024 program.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: GoogleFonts.lexend().fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: screenHeight * 0.02,
            left: screenWidth * 0.04,
            right: screenWidth * 0.04,
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 800),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE9C8),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.01, vertical: screenHeight * 0.01),
                  child: GNav(
                    tabBackgroundColor: const Color(0xFFFFCC80),
                    tabActiveBorder: Border.all(color: Colors.black, width: 1),
                    gap: screenWidth * 0.02,
                    activeColor: Colors.black,
                    tabs: [
                      GButton(
                        icon: Icons.person,
                        text: 'About',
                        textStyle: GoogleFonts.lilitaOne(
                          color: Colors.white,
                          fontSize: 18,
                          shadows: const [
                            Shadow(
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(1.5, -1.5),
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(-1.5, 1.5),
                              color: Colors.black,
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04, vertical: screenHeight * 0.01),
                      ),
                      GButton(
                        icon: Icons.folder,
                        text: 'Projects',
                        textStyle: GoogleFonts.lilitaOne(
                          fontSize: 16,
                          color: Colors.white,
                          shadows: const [
                            Shadow(
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(1.5, -1.5),
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(-1.5, 1.5),
                              color: Colors.black,
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04, vertical: screenHeight * 0.01),
                      ),
                      GButton(
                        icon: Icons.emoji_events,
                        text: 'Achievement',
                        textStyle: GoogleFonts.lilitaOne(
                          fontSize: 16,
                          color: Colors.white,
                          shadows: const [
                            Shadow(
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(1.5, -1.5),
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(-1.5, 1.5),
                              color: Colors.black,
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04, vertical: screenHeight * 0.01),
                      ),
                      GButton(
                        icon: Icons.contact_page,
                        text: 'Contact',
                        textStyle: GoogleFonts.lilitaOne(
                          fontSize: 16,
                          color: Colors.white,
                          shadows: const [
                            Shadow(
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(1.5, -1.5),
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(1.5, 1.5),
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(-1.5, 1.5),
                              color: Colors.black,
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04, vertical: screenHeight * 0.01),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
