import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Words'),
      ),
      body: const Center(
        child: Text('This is the review words page.'),
      ),
    );
  }
}
