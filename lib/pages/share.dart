import 'package:flutter/material.dart';

class SharePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Share'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Share the App!',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {
                    // Handle sharing using a share plugin
                    // (e.g., url_launcher or share)
                    print('Sharing the app...');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.copy),
                  onPressed: () {
                    // Copy a shareable link to clipboard
                    // (e.g., using the clipboard package)
                    print('Copied share link to clipboard');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
