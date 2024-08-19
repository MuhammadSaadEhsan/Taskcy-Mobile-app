import 'package:flutter/material.dart';
import 'package:taskmgr/Constants/colors.dart';

class DesignCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<String> avatarImages; // Paths for avatar images
  final int currentProgress;
  final int totalProgress;

  // Constructor to receive dynamic data
  DesignCard({
    required this.title,
    required this.subtitle,
    required this.avatarImages,
    required this.currentProgress,
    required this.totalProgress,
  });

  @override
  Widget build(BuildContext context) {
    // Calculate progress as a fraction
    double progressFraction = currentProgress / totalProgress;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 5,
      // color: Color(0xFF8664FB), // Purple background color
      color: MyColors.primaryColor, // Purple background color
      child: Container(
        width: 300,
        height: 160,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title, // Dynamic title
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle, // Dynamic subtitle
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                // Constrain the Stack with a SizedBox
                SizedBox(
                  width: 150, 
                  height: 40, // Add a fixed height to the Stack
                  child: Stack(
                    children: List.generate(avatarImages.length, (index) {
                      return Positioned(
                        left: 27.0 * index, // Space avatars with a slight overlap
                        child: CircleAvatar(
                          backgroundImage: AssetImage(avatarImages[index]),
                          radius: 20,
                        ),
                      );
                    }),
                  ),
                ),
                const Spacer(),
                const Text(
                  'Progress',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '$currentProgress/$totalProgress', // Dynamic progress
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: progressFraction, // Dynamic progress value
                backgroundColor: Colors.white24,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                minHeight: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
