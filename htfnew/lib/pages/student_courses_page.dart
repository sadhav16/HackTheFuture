import 'package:flutter/material.dart';

class StudentCoursesPage extends StatefulWidget {
  @override
  _StudentCoursesPageState createState() => _StudentCoursesPageState();
}

class _StudentCoursesPageState extends State<StudentCoursesPage> {
  // State variable to track which tab is active
  bool isCompleteTab = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Courses'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          _buildTabs(),
          Expanded(
            child: ListView(
              children: isCompleteTab
                  ? _buildCompleteCourses() // Show "Complete" courses
                  : _buildUpcomingCourses(), // Show "Upcoming" courses
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildTabs() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTabButton('Complete', isCompleteTab, () {
            setState(() {
              isCompleteTab = true;
            });
          }),
          _buildTabButton('Upcoming', !isCompleteTab, () {
            setState(() {
              isCompleteTab = false;
            });
          }),
        ],
      ),
    );
  }

  // Function to build a tab button
  Widget _buildTabButton(String title, bool isActive, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: isActive ? Colors.white : Colors.black,
        backgroundColor: isActive ? Colors.blue : Colors.grey[300],
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }

  // Complete courses list
  List<Widget> _buildCompleteCourses() {
    return [
      _buildCourseCard(
        courseName: 'Coursera',
        courseDetail: 'Data Science',
        rating: 4,
        imagePath: 'assets/images/coursera.png',
        showAddReviewButton: true, // Show "Add Review" for complete courses
      ),
      _buildCourseCard(
        courseName: 'NPTEL',
        courseDetail: 'Introduction to Robotics',
        rating: 4,
        imagePath: 'assets/images/nptel.jpeg',
        showAddReviewButton: true,
      ),
      _buildCourseCard(
        courseName: 'Udemy',
        courseDetail: 'Artificial Intelligence',
        rating: 5,
        imagePath: 'assets/images/udemy.png',
        showAddReviewButton: true,
      ),
      _buildCourseCard(
        courseName: 'Google',
        courseDetail: 'Data Visualisation Tools',
        rating: 5,
        imagePath: 'assets/images/google.png',
        showAddReviewButton: true,
      ),
    ];
  }

  // Upcoming courses list
  List<Widget> _buildUpcomingCourses() {
    return [
      _buildCourseCard(
        courseName: 'NPTEL',
        courseDetail: 'Machine Learning',
        rating: 4,
        imagePath: 'assets/images/nptel.jpeg',
        showAddReviewButton: false, // No "Add Review" for upcoming courses
      ),
      _buildCourseCard(
        courseName: 'Google',
        courseDetail: 'Threat and Security',
        rating: 5,
        imagePath: 'assets/images/google.png',
        showAddReviewButton: false,
      ),
      _buildCourseCard(
        courseName: 'Udemy',
        courseDetail: 'AI/ML.',
        rating: 5,
        imagePath: 'assets/images/udemy.png',
        showAddReviewButton: false,
      ),
    ];
  }

  // Course card widget
  Widget _buildCourseCard({
    required String courseName,
    required String courseDetail,
    required int rating,
    required String imagePath,
    required bool
        showAddReviewButton, // New parameter to control "Add Review" visibility
  }) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              radius: 30,
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    courseName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(courseDetail),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      const SizedBox(width: 4.0),
                      Text('$rating'),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.bookmark_border),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle view details action
                  },
                  child: const Text('View Details'),
                ),
                const SizedBox(height: 8.0),
                if (showAddReviewButton) // Conditionally show "Add Review" button
                  ElevatedButton(
                    onPressed: () {
                      // Handle add review action
                    },
                    child: const Text('Add Review'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Bottom Navigation Bar
  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Courses',
        ),
      ],
      currentIndex: 2, // Default to appointments tab
      selectedItemColor: Colors.blue,
      onTap: (index) {
        // Handle tab switch
      },
    );
  }
}
