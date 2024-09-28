import 'package:flutter/material.dart';

class StudentHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: StudentProfile(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}

class StudentProfile extends StatelessWidget {
  final List<String> enrolledCourses = [
    'Introduction to Data Science',
    'Advanced Flutter Development',
    'UI/UX Design Principles',
  ];

  // Placeholder for user details
  final String userName = "User Name";
  final String userRole = "Learner"; // Can be 'Learner' or 'Provider'
  final String userEmail = "user@example.com"; // Placeholder for user email
  final String profileImagePath =
      'assets/doctor_image.png'; // Replace with the correct path

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First container: User information (Profile details)
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Align items in a row with space between
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(profileImagePath),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                userName,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                userRole, // Learner or Provider
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            userEmail, // Display user email
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.account_circle,
                        size: 50), // Larger account settings icon
                    onPressed: () {
                      // Handle account settings button press
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Second container: Buttons and Enrolled Courses
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Action button for messaging only with "Chat" label
                  Column(
                    children: [
                      Text('Chat'), // Label above the message icon
                      SizedBox(height: 1), // Reduced spacing
                      IconButton(
                        icon: Icon(Icons.message,
                            size: 35), // Larger message icon
                        onPressed: () {
                          // Handle message button press
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  // Enroll Course and Generate Course buttons stacked vertically
                  SizedBox(
                    width: double
                        .infinity, // Makes the button fill the available width
                    child: ElevatedButton(
                      onPressed: () {
                        // Logic for enrolling in a course goes here
                      },
                      child: Text('Enroll Course'),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double
                        .infinity, // Makes the button fill the available width
                    child: ElevatedButton(
                      onPressed: () {
                        // Logic for generating a course goes here
                      },
                      child: Text('Generate Course'),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Enrolled Courses Section
                  Text(
                    'Enrolled Courses',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true, // To allow scrolling inside the column
                    physics:
                        NeverScrollableScrollPhysics(), // Prevent nested scrolling
                    itemCount: enrolledCourses.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          leading: Icon(Icons.book, color: Colors.blueAccent),
                          title: Text(enrolledCourses[index]),
                          onTap: () {
                            // Logic for viewing course details goes here
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
