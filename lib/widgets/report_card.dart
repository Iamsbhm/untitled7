import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const ReportCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF00B894),
              ),
            ),
            Image.asset(imagePath, height: 40),
          ],
        ),

      ),
    );
  }
}