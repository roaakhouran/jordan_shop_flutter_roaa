import 'package:flutter/material.dart';

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
              radius: 50,
              backgroundColor: Colors.blueAccent,
              child: Icon(
                Icons.engineering,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Roaa',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Intelligent Systems Engineering Student',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 32),
            const Card(
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.blueAccent),
                title: Text('Contact Email'),
                subtitle: Text('202110463@stu.meu.edu.jo'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.location_on, color: Colors.blueAccent),
                title: Text('Location'),
                subtitle: Text('Amman, Jordan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}