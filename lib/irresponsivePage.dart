import 'package:flutter/material.dart';

class IrresponsivePortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16), // Removed `.w`
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50, // Removed `.r`
                backgroundImage: AssetImage('assets/profile.png'), // Add your image in assets
              ),
              SizedBox(height: 16), // Removed `.h`
              Text(
                'Your Name',
                style: TextStyle(
                  fontSize: 32, // Removed `.sp`
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8), // Removed `.h`
              Text(
                'Flutter Developer | Farmer | Tech Enthusiast',
                style: TextStyle(
                  fontSize: 18, // Removed `.sp`
                  color: Colors.grey[400],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24), // Removed `.h`
              Text(
                'About Me',
                style: TextStyle(
                  fontSize: 24, // Removed `.sp`
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8), // Removed `.h`
              Text(
                'I am passionate about building responsive and user-friendly mobile and web applications. '
                    'I specialize in Flutter, Firebase, and integrating cutting-edge features like live streaming, '
                    'machine learning, and multilingual support.',
                style: TextStyle(
                  fontSize: 16, // Removed `.sp`
                  color: Colors.grey[400],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24), // Removed `.h`
              Text(
                'My Projects',
                style: TextStyle(
                  fontSize: 24, // Removed `.sp`
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8), // Removed `.h`
              _projectLink('Project1 - Astrology App', 'https://play.google.com/store/apps/details?id=com.project1'),
              _projectLink('Project2 - Multi-User App', 'https://play.google.com/store/apps/details?id=com.project2'),
              _projectLink('Project3 - Tailoring App', 'https://play.google.com/store/apps/details?id=com.project3'),
              _projectLink('Project4 - Diagnostic Tool', 'https://play.google.com/store/apps/details?id=com.project4'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _projectLink(String projectName, String url) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8), // Removed `.h`
      child: GestureDetector(
        onTap: () {
          // Use `launchUrl` from `url_launcher` package to open the link
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(8), // Removed `.r`
          ),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Removed `.h` and `.w`
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  projectName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16, // Removed `.sp`
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(Icons.open_in_new, color: Colors.white, size: 20), // Removed `.sp`
            ],
          ),
        ),
      ),
    );
  }
}
