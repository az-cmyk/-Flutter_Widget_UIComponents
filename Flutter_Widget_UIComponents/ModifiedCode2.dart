import 'package:flutter/material.dart';

void main() => runApp(const ModifiedCode2());

// ModifiedCode2 is the root widget of the application
class ModifiedCode2 extends StatelessWidget {
  const ModifiedCode2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // MODIFIED: Removed debug banner for cleaner UI
      home: HomePage(),
    );
  }
}

// HomePage is the main screen of the app
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Variable to store the counter value
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),

        backgroundColor: Colors.green,

        title: const Text(
          "GeeksforGeeks",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold, // MODIFIED: Made title bold for emphasis
          ),
        ),
        centerTitle: true, // MODIFIED: Centered the title for better alignment
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.search, color: Colors.white),
            // MODIFIED: Added search icon for extra functionality
          )
        ],
      ),

      // The main body of the scaffold
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter Value:",
              // MODIFIED: Added label before counter for clarity
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10), // MODIFIED: Added spacing for better UI separation
            Text(
              "$_counter",
              style: const TextStyle(
                fontSize: 32, // MODIFIED: Increased font size to make counter stand out
                fontWeight: FontWeight.bold,
                color: Colors.black, // MODIFIED: Explicit text color for better visibility
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            _counter++;
          });
          debugPrint("Counter updated: $_counter");
          // MODIFIED: Added console log to track counter updates
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
