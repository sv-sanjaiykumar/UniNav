import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Help & Support",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Frequently Asked Questions",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // FAQ 1
          ExpansionTile(
            leading: const Icon(Icons.help_outline, color: Colors.blueAccent),
            title: const Text("How to use the app?"),
            children: const [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Navigate through the dashboard to access campus map, cafeteria, library, and more.",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),

          // FAQ 2
          ExpansionTile(
            leading: const Icon(Icons.map, color: Colors.green),
            title: const Text("How to find campus locations?"),
            children: const [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Use the search bar on the dashboard to find campus locations quickly.",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),

          // FAQ 3
          ExpansionTile(
            leading: const Icon(Icons.person, color: Colors.orange),
            title: const Text("How to update my profile?"),
            children: const [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Go to the profile section from the top-right icon in the dashboard and edit your details.",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),

          const SizedBox(height: 30),

          // Contact Section
          const Text(
            "Need more help?",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              leading: const Icon(Icons.email, color: Colors.redAccent),
              title: const Text("Contact Support"),
              subtitle: const Text("campus.support@email.com"),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // later you can add functionality like email launcher
              },
            ),
          ),
        ],
      ),
    );
  }
}
