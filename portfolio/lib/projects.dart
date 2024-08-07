import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectApplicationCard extends StatelessWidget {
  final String image1;
  final String image2;
  final String title;
  final String description;
  final Uri link;

  const ProjectApplicationCard({
    super.key,
    required this.image1,
    required this.image2,
    required this.title,
    required this.description,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(link); 
      },
      child: Container(
        width: 306,
        height: 240,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(width: 1, color: Theme.of(context).colorScheme.primary),
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
                color: Theme.of(context).colorScheme.primary,
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
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 10.69,
                  fontFamily: GoogleFonts.lexend().fontFamily,
                  fontWeight: FontWeight.w400,
                  height: 1.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(Uri url) async {
    await launchUrl(url);
  }
}
