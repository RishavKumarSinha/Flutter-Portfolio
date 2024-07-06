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
                  height: screenHeight * 0.1,
                  color: Colors.transparent,
                ),
                SizedBox(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.12,
                  child: Stack(
                    children: [
                      Positioned(
                        left: screenWidth * 0.03,
                        top: screenHeight * 0.0,
                        child: SizedBox(
                          width: screenWidth * 0.66,
                          height: screenHeight * 0.05,
                          child: Text(
                            'Hi, my name is',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.05,
                              fontFamily: GoogleFonts.lexend().fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.04,
                        top: screenHeight * 0.026,
                        child: SizedBox(
                          width: screenWidth * 0.77,
                          height: screenHeight * 0.05,
                          child: Text(
                            'Rishav Kumar Sinha.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: const Color(0xFF1E1E1E),
                              fontSize: screenWidth * 0.06,
                              fontFamily: GoogleFonts.rowdies().fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.06,
                        top: screenHeight * 0.06,
                        child: SizedBox(
                          width: screenWidth * 0.8,
                          height: screenHeight * 0.07,
                          child: Text(
                            'I am a Flutter-Developer & Open-\nSource Enthusiast.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.045,
                              fontFamily: GoogleFonts.lexend().fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.06,
                        top: screenHeight * 0.01,
                        child: Container(
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.05,
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
                  width: screenWidth * 0.95,
                  height: screenHeight * 0.8,
                  child: Stack(
                    children: [
                      Positioned(
                        left: screenWidth * 0.08,
                        top: screenHeight * 0.0,
                        child: Text(
                          'About me',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: screenWidth * 0.06,
                            fontFamily: GoogleFonts.rowdies().fontFamily,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.0,
                        top: screenHeight * 0.04,
                        child: Container(
                          width: screenWidth * 0.55,
                          height: screenHeight * 0.19,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/lazy.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.48,
                        top: screenHeight * 0.06,
                        child: SizedBox(
                          width: screenWidth * 0.42,
                          height: screenHeight * 0.22,
                          child: Text(
                            'I am a 2nd-year Undergraduate at Nit Silchar who is passionate about App Development and loves Open-Source.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.037,
                              fontFamily: GoogleFonts.lexend().fontFamily,
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.05,
                        top: screenHeight * 0.24,
                        child: SizedBox(
                          width: screenWidth * 0.85,
                          height: screenHeight * 0.6,
                          child: Text(
                            'My interest in coding and software development started during the start of 2nd Semester when the GDSC workshops were underway, turns out submission deadlines are much closer than you think they are.\n\nFast forward to now, I am learning App Development, both Android Native and Flutter alongside active contributions to the Open-Source project ‘OpSo’, a flutter application that provides comprehensive information about various open-source programs, under the ongoing GSSoC 2024 program.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: screenWidth * 0.04,
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
                constraints: const BoxConstraints(maxWidth: 600),
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
                          fontSize: screenWidth * 0.04,
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
                          fontSize: screenWidth * 0.04,
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
                          fontSize: screenWidth * 0.04,
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
                          fontSize: screenWidth * 0.04,
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
