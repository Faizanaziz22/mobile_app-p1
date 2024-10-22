import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // For animation state
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent.shade100,  // Background color
        child: Center(  // Centering all content
          child: Column(
            mainAxisSize: MainAxisSize.min,  // Center content vertically
            children: <Widget>[
              // Profile name
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/photo.jpeg'),

              ),
              SizedBox(height: 30),
              Text(
                'Faizan aziz',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),

              // Profile title
              Text(
                'Mobile Developer',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 30),

              // Animated Container
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: _isExpanded ? 300 : 200,
                  height: _isExpanded ? 200 : 100,
                  decoration: BoxDecoration(
                    color: _isExpanded ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        spreadRadius: 5,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    _isExpanded ? 'Tap to Collapse' : 'Tap to Expand',
                    style: TextStyle(
                      fontSize: 18,
                      color: _isExpanded ? Colors.white : Colors.blueAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
