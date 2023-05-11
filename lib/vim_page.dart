import 'package:flutter/material.dart';

class VimPage extends StatelessWidget {
  const VimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vim Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a Vim page',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Button 1'),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Button 2'),
            ),
          ],
        ),
      ),
    );
  }
}

