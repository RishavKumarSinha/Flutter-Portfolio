import 'package:flutter/material.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/theme/theme.dart';
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
    final brightness = MediaQuery.of(context).platformBrightness;
    final darkModeOn = (brightness == Brightness.dark);
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
    final List<Map<String, dynamic>> projects = [
      {
        'description1': 'Introduction to Git and GitHub, Coursera',
        'description2': 'Completed a comprehensive Git & GitHub course, mastering version control fundamentals.',
        'image':(darkModeOn)? 'assets/images/graduatedn.png': 'assets/images/graduated.png',
      },
      {
        'description1': 'GitHub Foundations Certificate, GitHub',
        'description2': 'This exam highlights my understanding of the foundational topics and concepts of GitHub.',
        'image': (darkModeOn)? 'assets/images/graduatedn.png': 'assets/images/graduated.png',
      },
      {
        'description1': 'GitHub Administration Certificate, GitHub',
        'description2': 'This exam highlights my expertise in optimizing GitHub environments for repo management & workflow efficiency.',
        'image': (darkModeOn)? 'assets/images/graduatedn.png': 'assets/images/graduated.png',
      },
      {
        'description1': 'Flutter & Dart Bootcamp, Udemy',
        'description2': 'Completed rigorous Udemy Bootcamp, mastering Flutter and Dart for mobile app development expertise.',
        'image': (darkModeOn)? 'assets/images/graduatedn.png': 'assets/images/graduated.png',
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
                        left: screenWidth * 0.5 - 174,
                        top: screenHeight * 0.0,
                        child: SizedBox(
                          width: 200,
                          height: screenHeight * 0.05,
                          child: Text(
                            'Hi, my name is',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 21,
                              fontFamily: GoogleFonts.lexend().fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.5 - 194,
                        top: screenHeight * 0.033,
                        child: SizedBox(
                          width: 300,
                          height: screenHeight * 0.05,
                          child: Text(
                            'Rishav Kumar Sinha.',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 25,
                              fontFamily: GoogleFonts.rowdies().fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.5 - 190,
                        top: screenHeight * 0.075,
                        child: SizedBox(
                          width: 360,
                          height: screenHeight * 0.1,
                          child: Text(
                            'I am a Flutter-Developer & Open-\nSource Enthusiast.',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 18,
                              fontFamily: GoogleFonts.lexend().fontFamily,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.5 - 190,
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
                        left: screenWidth * 0.5 - 190,
                        top: screenHeight * 0.0,
                        child: Text(
                          'About me',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 25,
                            fontFamily: GoogleFonts.rowdies().fontFamily,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.5 - 210,
                        top: screenHeight * 0.04,
                        child: Container(
                          width: (darkModeOn)?195:175,
                          height: (darkModeOn)?165:130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage((darkModeOn)?'assets/images/notlazy.png':'assets/images/lazy.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.5 - 50,
                        top: screenHeight * 0.07,
                        child: SizedBox(
                          width: 185,
                          height: screenHeight * 0.22,
                          child: Text(
                            'I am a 2nd-year Undergraduate at Nit Silchar who is passionate about App Development and loves Open-Source.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 14.5,
                              fontFamily: GoogleFonts.lexend().fontFamily,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenWidth * 0.5 - 190,
                        top: screenHeight * 0.23,
                        child: SizedBox(
                          width: 328,
                          height: screenHeight * 0.4,
                          child: Text(
                            'My interest in coding and software development started during the start of 2nd Semester when the GDSC workshops were underway, turns out submission deadlines are much closer than you think they are.\n\nFast forward to now, I am learning App Development, both Android Native and Flutter alongside active contributions to the Open-Source project ‘OpSo’, a flutter application that provides comprehensive information about various open-source programs, under the ongoing GSSoC 2024 program.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
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
                  child: SizedBox(child: _buildTimeline(events)),
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
                            color: Theme.of(context).colorScheme.tertiary,
                            fontSize: 25,
                            fontFamily: GoogleFonts.rowdies().fontFamily,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        ProjectApplicationCard(
                          image1: (darkModeOn)?"assets/images/foldern.png":"assets/images/folder.png",
                          image2: (darkModeOn)?"assets/images/programn.png":"assets/images/program.png",
                          title: "OpSo",
                          description:
                              "As part of the GSSoC, I have been contributing to OpSo.\n\n> UI page : Added UI pages for three programs, that utilizes JSON files to render the project data for the Program.\n> Additional Features : I have also added additional features like notification alerts for deadline, Timeline, FAQs Page & more.\n\nTechnologies : Flutter | Git | GitHub | VS Code",
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        ProjectApplicationCard(
                          image1: (darkModeOn)?"assets/images/foldern.png":"assets/images/folder.png",
                          image2: (darkModeOn)?"assets/images/programn.png":"assets/images/program.png",
                          title: "My Notes",
                          description:
                              "An Android Application for taking Notes, that I created as part of my GDSC Android Study Jams Project.\n\n> User Authentication: Secure user login and registration using Firebase Authentication.\n> Real-time Note Management: Create, edit, and delete notes, with changes reflected in real time.\n\nTechnologies : Firebase | Android Studio ",
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        ProjectApplicationCard(
                          image1: (darkModeOn)?"assets/images/foldern.png":"assets/images/folder.png",
                          image2: (darkModeOn)?"assets/images/programn.png":"assets/images/program.png",
                          title: "Soriak.github.io",
                          description:
                              "A Weather Application, created as part of my GDSC event 'Web Blitz 4.0' Project.\n\n> Intuitive UI: A clean and user-friendly interface for seamless note management.\n> In-depth Analysis: Highly detailed data was provided regarding different weather parameters.\n\nTechnologies : HTML | CSS for front-end",
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  'Certifications & Courses',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 25,
                    fontFamily: GoogleFonts.rowdies().fontFamily,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                  child: SizedBox(child: _projectTimeline(projects)),
                ),
                SizedBox(
                  width: 282,
                  height: 420,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 282,
                        height: 235,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 9.0, top: 0.0),
                                  child: Text(
                                    'Get in Touch!',
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontSize: 28,
                                      fontFamily: GoogleFonts.rowdies().fontFamily,
                                      fontWeight: FontWeight.w400,
                                      height: 0.4,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 68.95,
                                  height: 68.95,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage((darkModeOn)?"assets/images/mailboxn.png":"assets/images/mailbox.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: SizedBox(
                                width: 282,
                                height: 142,
                                child: Text(
                                  'I am actively looking for opportunities to upskill myself and learn more about tech, a bit everyday. So feel free to contact me, whether you have a question or just want to say hi, I’ll try my best to get back to you!',
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    fontSize: 14,
                                    fontFamily: GoogleFonts.lexend().fontFamily,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 133,
                        height: 88.48,
                        child: Column(
                          children: [
                            Container(
                              width: 133,
                              height: 37,
                              decoration: ShapeDecoration(
                                color: Theme.of(context).colorScheme.onPrimaryContainer,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 1.20,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                  ),
                                  borderRadius: BorderRadius.circular(5.15),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Say Hello!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: GoogleFonts.lexend().fontFamily,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 21),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 20.48,
                                  height: 20.48,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/github.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 20.48,
                                  height: 20.48,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/linkedin.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 20.48,
                                  height: 20.48,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/gmail.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10), 
                      SizedBox(
                        height: 86,
                        child: Column(
                          children: [
                            Text(
                              'Designed & Built by Rishav Kumar Sinha,',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 12,
                                fontFamily: GoogleFonts.lexend().fontFamily,
                                fontWeight: FontWeight.w400,
                                height: 0.2
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '0 stars',
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontSize: 12,
                                      fontFamily: GoogleFonts.lexend().fontFamily,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 18.36,
                                  height: 18.36,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/trophy.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    'on GitHub',
                                    style: TextStyle(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontSize: 12,
                                      fontFamily: GoogleFonts.lexend().fontFamily,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 16.90,
                                  height: 16.90,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage((darkModeOn)?"assets/images/programn.png":"assets/images/program.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Feel free to add yours too!',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 12,
                                fontFamily: GoogleFonts.lexend().fontFamily,
                                fontWeight: FontWeight.w400,
                                height: 0.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
                  color: Theme.of(context).colorScheme.onPrimary,
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
                    color: Theme.of(context).colorScheme.primary,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.01,
                      vertical: screenHeight * 0.01),
                  child: GNav(
                    tabBackgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    tabActiveBorder: Border.all(color: Theme.of(context).colorScheme.tertiary, width: 1),
                    gap: screenWidth * 0.02,
                    activeColor: Theme.of(context).colorScheme.tertiary,
                    tabs: [
                      GButton(
                        icon: Icons.person,iconColor: Theme.of(context).colorScheme.tertiary,
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
                            horizontal: screenWidth * 0.04,
                            vertical: screenHeight * 0.01),
                      ),
                      GButton(
                        icon: Icons.folder,iconColor: Theme.of(context).colorScheme.tertiary,
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
                            horizontal: screenWidth * 0.04,
                            vertical: screenHeight * 0.01),
                      ),
                      GButton(
                        icon: Icons.emoji_events,iconColor: Theme.of(context).colorScheme.tertiary,
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
                            horizontal: screenWidth * 0.04,
                            vertical: screenHeight * 0.01),
                      ),
                      GButton(
                        icon: Icons.contact_page,iconColor: Theme.of(context).colorScheme.tertiary,
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
                            horizontal: screenWidth * 0.04,
                            vertical: screenHeight * 0.01),
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
          beforeLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            thickness: 6,
            //borderStyle: BorderStyle.solid,
          ),
          afterLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            thickness: 6,
          ),
          indicatorStyle: IndicatorStyle(
            indicator: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
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
        color: Theme.of(context).colorScheme.onPrimaryContainer,
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
              color: Theme.of(context).colorScheme.onPrimary,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(3.96),
              ),
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 5.35, vertical: 3.28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    event['description1'],
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
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
                color: Theme.of(context).colorScheme.primary,
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

  Widget _projectTimeline(List<Map<String, dynamic>> projects) {
    return Column(
      children: projects.asMap().entries.map((entry) {
        int index = entry.key;
        Map<String, dynamic> project = entry.value;
        final bool isFirst = index == 0;
        final bool isLast = index == projects.length - 1;

        return TimelineTile(
          isFirst: isFirst,
          isLast: isLast,
          beforeLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            thickness: 6,
          ),
          afterLineStyle: LineStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            thickness: 6,
          ),
          indicatorStyle: IndicatorStyle(
            indicator: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 1.4,
                ),
              ),
            ),
          ),
          startChild: null, 
          endChild: _buildProjectChild(project),
        );
      }).toList(),
    );
  }


  Widget _buildProjectChild(Map<String, dynamic> project) {
    return Container(
      width: 140.8,
      height: 90,
      margin: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
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
              color: Theme.of(context).colorScheme.onPrimary,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(3.96),
              ),
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 5.35, vertical: 3.28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    project['description1'],
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 12,
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
                      image: AssetImage(project['image']),
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
            padding: const EdgeInsets.all(6),
            child: Text(
              project['description2'],
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 9.8,
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
