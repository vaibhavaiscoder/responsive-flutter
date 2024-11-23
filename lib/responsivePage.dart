import 'package:firstflutter/responsive/responsive_view.dart';
import 'package:firstflutter/responsive/size_extensions.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatefulWidget {
  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: ResponsiveView(
            mobileView: buildMobileView(),
            webView: buildWebView(),
          ),
        ),
      ),
    );
  }

  /// Builds the layout for mobile view.
  Column buildMobileView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 50.r,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            SizedBox(height: 16.h),
            Text(
              'Your Name',
              style: TextStyle(
                fontSize: 32.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Flutter Developer | Tech Enthusiast',
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.grey[400],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: TextStyle(
                fontSize: 24.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            Text(aboutMeText,
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Projects',
              style: TextStyle(
                fontSize: 24.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (context, index) {
                return _projectLink("Project ${index + 1}", 'https://example.com/project${index + 1}');
              },
            ),
          ],
        ),
      ],
    );
  }

  /// Builds the layout for web view.
  Row buildWebView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Sidebar
        Expanded(
          flex: 1,
          child: Column(
            children: [
              CircleAvatar(
                radius: 40.r,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
              SizedBox(height: 16.h),
              Text(
                'Your Name',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Flutter Developer | Tech Enthusiast',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey[400],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              Text(
                'About Me',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                aboutMeText,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[400],
                ),
                textAlign: TextAlign.center,
              ),

            ],
          ),
        ),
        SizedBox(width: 24.w), // Space between columns
        // Right Content Area
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Projects',
                style: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.h),
              GridView.builder(
                shrinkWrap: true, // Ensures GridView doesn't expand infinitely
                physics: NeverScrollableScrollPhysics(), // Disable scroll inside GridView
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 items per row
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 16.h,
                  childAspectRatio: 3 / 1, // Adjust the aspect ratio as needed
                ),
                itemCount: 12, // Total number of items
                itemBuilder: (context, index) {
                  return _projectLink(
                    'Project ${index + 1}',
                    'https://example.com/project${index + 1}',
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _projectLink(String projectName, String url) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      // Use `h` for responsive padding
      child: GestureDetector(
        onTap: () {
          // Use `launchUrl` from `url_launcher` package to open the link
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius:
                BorderRadius.circular(8.r), // Use `r` for responsive radius
          ),
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
          // Use `h` and `w` for responsive padding
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  projectName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp, // Use `sp` for responsive font size
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(Icons.open_in_new, color: Colors.white, size: 20.sp),
              // Use `sp` for icon size
            ],
          ),
        ),
      ),
    );
  }
  String aboutMeText =
      'I am passionate about building responsive and user-friendly mobile and web applications. '
      'I specialize in Flutter, Firebase, and integrating cutting-edge features like live streaming, '
      'machine learning, and multilingual support. Over the years, I have developed diverse applications, '
      'ranging from astrology apps and diagnostic tools to e-commerce platforms and social media solutions. '
      'I enjoy solving complex problems, optimizing application performance, and designing intuitive user interfaces. '
      'When I am not coding, you’ll find me exploring agricultural innovations, connecting with nature, and brainstorming ideas '
      'to integrate technology into farming to create sustainable solutions. My mission is to bridge technology and simplicity '
      'to improve lives and empower communities.';
}
