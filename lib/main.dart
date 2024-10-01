import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'seve_kang_',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 69, 125),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Seve\'s App',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        color: const Color.fromARGB(255, 246, 246, 246),
        child: ListView(
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

            SizedBox(height: 20.0),

            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 69, 125), 
                borderRadius: BorderRadius.circular(10.0), 
              ),
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  InfoSection(icon: Icons.info, title: 'Course', data: 'Bachelor of Science in Information Technology'),
                  InfoSection(icon: Icons.home, title: 'Address', data: '189, Yulgok-ro, Jongno District, Seoul, South Korea'),
                  InfoSection(icon: Icons.email, title: 'Email', data: 'augustineseve.kangbacale@wvsu.edu.ph'),
                  InfoSection(icon: Icons.phone, title: 'Phone Number', data: '0958 480 9343'),
                  InfoSection(icon: Icons.person, title: 'Hobbies', data: 'Sleeping, Eating, Surfing the internet'),
                  InfoSection(icon: Icons.favorite, title: 'Favorites', data: 'Music, Technology, Coding'),
                ],
              ),
            ),

            SizedBox(height: 20.0),

            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 69, 125),  
                borderRadius: BorderRadius.circular(10.0), 
              ),
              padding: const EdgeInsets.all(16.0),
              child: Biography(),
            )
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
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.symmetric(vertical: 4.0), 
      child: Row(
        children: [
          Icon(icon, size: 30.0, color: Colors.white,),
          SizedBox(width: 10.0),
          Text(
            '$title: ',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white), textAlign: TextAlign.justify,
          ),
          Text(data, style: TextStyle(fontSize: 14, color: Colors.white), textAlign: TextAlign.justify,),
        ],
      ),
    );
  }
}

class Biography extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Biography',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 10.0),
          Text(
            'I am passionate with exploring technology and a massive Apple fanboy. '
            'I like to spend my time infront of a screen whether it\'d be a monitor, TV, laptop, tablet, or phone, I would be using it. '
            'Aside from that, I also like to roam around and travel. ',
            style: TextStyle(fontSize: 16, color: Colors.white),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
