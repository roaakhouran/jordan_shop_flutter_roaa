import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blueAccent,
              backgroundImage: AssetImage('assets/images/profile_icon.png'),
            ),
            const SizedBox(height: 24),
            Text(
              'Roaa',
              style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Intelligent Systems Engineering Student',
              style: GoogleFonts.roboto(fontSize: 16, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 32),
            Card(
              child: ListTile(
                leading: const Icon(Icons.email, color: Colors.blueAccent),
                title: Text(
                  'Contact Email',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  '202110463@stu.meu.edu.jo',
                  style: GoogleFonts.roboto(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}