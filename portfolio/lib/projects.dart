import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectApplicationCard extends StatelessWidget {
  final String image1;
  final String image2;
  final String title;
  final String description;

  const ProjectApplicationCard({
    super.key,
    required this.image1,
    required this.image2,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 306,
      height: 240,
      decoration: BoxDecoration(
        color: const Color(0xFFFFE9C8),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(width: 1, color: Colors.black),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 38.40,
                height: 38.40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image1),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 200),
              Container(
                alignment: Alignment.bottomRight,
                width: 28.16,
                height: 28.16,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image2),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '$title :\n',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: GoogleFonts.rowdies().fontFamily,
              fontWeight: FontWeight.w400,
              height: 0.8,
            ),
          ), 
          Flexible(
            child: Text(
              description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 10.69,
                fontFamily: GoogleFonts.lexend().fontFamily,
                fontWeight: FontWeight.w400,
                height: 1.1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
