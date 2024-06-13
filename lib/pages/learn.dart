import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Words'),
      ),
      body: const Center(
        child: Text('This is the learn words page.'),
      ),
    );
  }
}
