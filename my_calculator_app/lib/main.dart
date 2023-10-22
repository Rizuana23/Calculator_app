import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCalculatorApp(),
    );
  }
}

class MyCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // Customize the background color
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/profile_image.png'), // Add your profile image
                radius: 20, // Customize the size of the profile image
              ),
              SizedBox(
                  width: 10), // Add spacing between the profile image and text
              Text(
                'Calculator',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Calculator', // Display the entered text
                style: TextStyle(fontSize: 18.0),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Text',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 6.0), // Add spacing
              // Plus Icon Button
              IconButton(
                icon: Icon(Icons.add, size: 48.0, color: Colors.blue),
                onPressed: () {
                  // Handle plus button press
                },
              ),

              // Minus Icon Button
              IconButton(
                icon: Icon(Icons.remove, size: 48.0, color: Colors.blue),
                onPressed: () {
                  // Handle minus button press
                },
              ),

              // Multiply Icon Button
              IconButton(
                icon: Icon(Icons.clear, size: 48.0, color: Colors.blue),
                onPressed: () {
                  // Handle multiply button press
                },
              ),

              // Divide Icon Button
              IconButton(
                icon: Icon(Icons.linear_scale, size: 48.0, color: Colors.blue),
                onPressed: () {
                  // Handle divide button press
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 48.0,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.search,
                    size: 48.0,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.favorite,
                    size: 48.0,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
