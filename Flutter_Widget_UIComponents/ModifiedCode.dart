import 'package:flutter/material.dart';

// Main function to run the app
void main() => runApp(const ModifiedCode());

// ModifiedCode is a stateless widget
class ModifiedCode extends StatelessWidget {
  const ModifiedCode({Key? key}) : super(key: key);

  // Build method to create the widget tree
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Disable debug banner
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.white, // Icon color
          ),
          backgroundColor: Colors.green, // AppBar background color
          title: const Text(
            "GeeksforGeeks",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            // MODIFIED: Added bold text style
          ),
          centerTitle: true, // MODIFIED: Centered the AppBar title
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(Icons.search, color: Colors.white),
              // MODIFIED: Added search icon on the right side
            )
          ],
        ), // AppBar
        body: Container(
          width: double.infinity,
          color: Colors.grey[200], // MODIFIED: Added light background color
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Stateless Widget Example",
                // MODIFIED: Changed text from "Stateless Widget" to "Stateless Widget Example"
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28, // MODIFIED: Increased font size
                  fontWeight: FontWeight.w600, // MODIFIED: Made text semi-bold
                ),
              ),
              const SizedBox(height: 20), // MODIFIED: Added spacing
              ElevatedButton(
                onPressed: () {
                  // Since it's stateless, this won't update UI
                  // Normally you'd use StatefulWidget or state management
                  debugPrint("Button pressed!"); // MODIFIED: Added button action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // MODIFIED: Custom button color
                  padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  // MODIFIED: Added rounded corners
                ),
                child: const Text(
                  "Click Me", // MODIFIED: Added a button with label
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              )
            ],
          ),
        ), // Body
      ), // Scaffold
    ); // MaterialApp
  }
}
