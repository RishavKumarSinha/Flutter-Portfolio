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
    return Scaffold(
      body: Stack(
        children: [
          // Add your main content here
          Positioned(
            top: 20,
            left: 15,
            right: 15,
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 600),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE9C8),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: GNav(
                    tabBackgroundColor: const Color(0xFFFFCC80),
                    tabActiveBorder: Border.all(color: Colors.black, width: 1),
                    gap: 8,
                    activeColor: Colors.black,
                    tabs: [
                      GButton(
                        icon: Icons.person,
                        text: 'About',
                        textStyle: GoogleFonts.lilitaOne(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                          shadows: [
                            const Shadow( // bottomLeft
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black
                            ),
                            const Shadow( // bottomRight
                              offset: Offset(1.5, -1.5),
                              color: Colors.black
                            ),
                            const Shadow( // topRight
                              offset: Offset(1.5, 1.5),
                              color: Colors.black
                            ),
                            const Shadow( // topLeft
                              offset: Offset(-1.5, 1.5),
                              color: Colors.black
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      ),
                      GButton(
                        icon: Icons.folder,
                        text: 'Projects',
                        textStyle: GoogleFonts.lilitaOne(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            const Shadow( // bottomLeft
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black
                            ),
                            const Shadow( // bottomRight
                              offset: Offset(1.5, -1.5),
                              color: Colors.black
                            ),
                            const Shadow( // topRight
                              offset: Offset(1.5, 1.5),
                              color: Colors.black
                            ),
                            const Shadow( // topLeft
                              offset: Offset(-1.5, 1.5),
                              color: Colors.black
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      ),
                      GButton(
                        icon: Icons.emoji_events,
                        text: 'Certifications',
                        textStyle: GoogleFonts.lilitaOne(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            const Shadow( // bottomLeft
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black
                            ),
                            const Shadow( // bottomRight
                              offset: Offset(1.5, -1.5),
                              color: Colors.black
                            ),
                            const Shadow( // topRight
                              offset: Offset(1.5, 1.5),
                              color: Colors.black
                            ),
                            const Shadow( // topLeft
                              offset: Offset(-1.5, 1.5),
                              color: Colors.black
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      ),
                      GButton(
                        icon: Icons.contact_page,
                        text: 'Contact',
                        textStyle: GoogleFonts.lilitaOne(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            const Shadow( // bottomLeft
                              offset: Offset(-1.5, -1.5),
                              color: Colors.black
                            ),
                            const Shadow( // bottomRight
                              offset: Offset(1.5, -1.5),
                              color: Colors.black
                            ),
                            const Shadow( // topRight
                              offset: Offset(1.5, 1.5),
                              color: Colors.black
                            ),
                            const Shadow( // topLeft
                              offset: Offset(-1.5, 1.5),
                              color: Colors.black
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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