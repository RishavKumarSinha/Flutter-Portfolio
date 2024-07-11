import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/projects.dart';
import 'package:timeline_tile/timeline_tile.dart';
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
    final List<Map<String, dynamic>> events = [
      {
        'description1': 'Maa Bharti Public School, Kota',
        'description2': 'CBSE (Class XII) | 2017-18 | Aggregate: 83%',
        'image': 'assets/images/graduation-diploma.png',
      },
      {
        'description1': 'National Institute of Technology, Silchar',
        'description2': 'BTech | Mechanical | 2023-27 Engineering | CGPA - 7.95',
        'image': 'assets/images/certficate.png',
      },
      {
        'description1': 'Delhi Public School, Nerul, Navi Mumbai',
        'description2': 'CBSE (Class X) | 2019-20 | Aggregate: 93.6%',
        'image': 'assets/images/stack-of-books.png',
      },
    ];

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
                  height: screenHeight * 0.65,
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
                          width: 328,
                          height: screenHeight * 0.4,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: _buildTimeline(events)
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Projects',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 25,
                            fontFamily: GoogleFonts.rowdies().fontFamily,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        const WeatherApplicationCard(
                          image1: "assets/images/folder.png",
                          image2: "assets/images/program.png",
                          title: "OpSo",
                          description: "As part of the GSSoC, I have been contributing to OpSo.\n\n> UI page : Added UI pages for three programs, that utilizes JSON files to render the project data for the Program.\n> Additional Features : I have also added additional features like notification alerts for deadline, Timeline, FAQs Page & more.\n\nTechnologies : Flutter | Git | GitHub | VS Code",
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        const WeatherApplicationCard(
                          image1: "assets/images/folder.png",
                          image2: "assets/images/program.png",
                          title: "My Notes",
                          description: "An Android Application for taking Notes, that I created as part of my GDSC Android Study Jams Project.\n\n> User Authentication: Secure user login and registration using Firebase Authentication.\n> Real-time Note Management: Create, edit, and delete notes, with changes reflected in real time.\n\nTechnologies : Firebase | Android Studio ",
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        const WeatherApplicationCard(
                          image1: "assets/images/folder.png",
                          image2: "assets/images/program.png",
                          title: "Soriak.github.io",
                          description: "A Weather Application, created as part of my GDSC event 'Web Blitz 4.0' Project.\n\n> Intuitive UI: A clean and user-friendly interface for seamless note management.\n> In-depth Analysis: Highly detailed data was provided regarding different weather parameters.\n\nTechnologies : HTML | CSS for front-end",
                        ),
                      ],
                    ),
                  ),
                )
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

  Widget _buildTimeline(List<Map<String, dynamic>> events) {
    return Column(
      children: events.asMap().entries.map((entry) {
        int index = entry.key;
        Map<String, dynamic> event = entry.value;
        final bool isFirst = index == 0;
        final bool isLast = index == events.length - 1;
        final bool isLeft = index % 2 == 0;

        return TimelineTile(
          axis: TimelineAxis.vertical,
          alignment: TimelineAlign.center,
          isFirst: isFirst,
          isLast: isLast,
          beforeLineStyle: const LineStyle(
            color: Color.fromARGB(255, 247, 182, 85),
            thickness: 6,
            //borderStyle: BorderStyle.solid,
          ),
          afterLineStyle: const LineStyle(
            color: Color(0xFFFFCC80),
            thickness: 6,
          ),
          indicatorStyle: IndicatorStyle(
            indicator: Container(
              decoration:  BoxDecoration(
                color:Color(0xFFFFCC80),
                shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 1.4,
                  ),
              ),
            ),
          ),
          startChild: isLeft ? _buildEventChild(event) : null,
          endChild: isLeft ? null : _buildEventChild(event),
        );
      }).toList(),
    );
  }

  Widget _buildEventChild(Map<String, dynamic> event) {
    return Container(
      width: 140.8,
      height: 90,
      margin: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: const Color(0x6DFFCC80),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1.5),
          borderRadius: BorderRadius.circular(5.28),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 42,
            decoration: ShapeDecoration(
              color: const Color(0xFFFFCC80), 
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(3.96),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 5.35, vertical: 3.28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    event['description1'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9,
                      fontFamily: GoogleFonts.lexend().fontFamily,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  width: 35,
                  height: 38,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(event['image']),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 42,
            padding: const EdgeInsets.all(7.35),
            child: Text(
              event['description2'],
              style: TextStyle(
                color: Colors.black,
                fontSize: 9,
                fontFamily: GoogleFonts.lexend().fontFamily,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}