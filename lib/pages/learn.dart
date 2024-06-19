import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:provider/provider.dart';
import '../src/generated/word.pbgrpc.dart';
import '../auth_provider.dart';

class LearnPage extends StatefulWidget {
  @override
  _LearnPageState createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  int _currentWordId = 1;
  late Future<WordReply> _wordFuture;

  @override
  void initState() {
    super.initState();
    _wordFuture = _fetchWord(_currentWordId);
  }

  Future<WordReply> _fetchWord(int id) async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final metadata = {
      'authorization': '${authProvider.token}',
    };

    final response = await authProvider.wordClient.getWord(
      WordRequest()..id = id,
      options: grpc.CallOptions(metadata: metadata),
    );
    return response;
  }

  void _getNextWord() {
    setState(() {
      _currentWordId++;
      _wordFuture = _fetchWord(_currentWordId);
    });
  }

  void _getPreviousWord() {
    setState(() {
      if (_currentWordId > 1) {
        _currentWordId--;
        _wordFuture = _fetchWord(_currentWordId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Words'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text('ID: $_currentWordId'),
            ),
          ),
        ],
      ),
      body: FutureBuilder<WordReply>(
        future: _wordFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('No data found.'));
          } else {
            final word = snapshot.data!;
            return Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Word: ${word.word}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Definition: ${word.definition}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Translation: ${word.translation}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Tags: ${word.tag.join(", ")}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: _getPreviousWord,
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward),
                        onPressed: _getNextWord,
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
