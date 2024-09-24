import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seve\'s App',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('seve_kang_'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: const Color.fromARGB(255, 253, 253, 253),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/images/seve.PNG'),
                ),
                SizedBox(width: 16.0),
                Text(
                  'Augustine Seve F. Kang Bacale', 
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20.0,),

            InfoSection(icon: Icons.home, title: 'Address', data: '189, Yulgok-ro, Jongno District, Seoul, South Korea'),
            InfoSection(icon: Icons.email, title: 'Email', data: 'augustineseve.kangbacale@wvsu.edu.ph'),
            InfoSection(icon: Icons.info, title: 'Course', data: 'Bachelor of Science in Information Technology'),
            InfoSection(icon: Icons.person, title: 'Hobbies', data: 'Sleeping, Eating, Surfing the internet'),
            InfoSection(icon: Icons.favorite, title: 'Favorites', data: 'Reading, Coding'),

            Biography(),
          ],
        ),
      ),
    );
  }
}

class InfoSection extends StatelessWidget {
  final IconData icon;
  final String title;
  final String data;

  InfoSection({required this.icon, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
   return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 4.0), 
      color: const Color.fromARGB(255, 192, 226, 255),
      child: Row(
        children: [
          Icon(icon, size: 30.0),
          SizedBox(width: 10.0),
          Text(
            '$title: ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(data),
        ],
      ),
    );
  }
}

class Biography extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 4.0), 
      color: const Color.fromARGB(255, 192, 226, 255),
      child: Column(
        
        children: [
          Text(
            'My Biography',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          Text(
            'I am a passionate developer with a love for technology and continuous learning. '
            'In my spare time, I enjoy reading, exploring new hobbies, and spending time with family and friends.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}