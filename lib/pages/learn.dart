import 'dart:math';

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
  late Future<NewLearnReply> _learnFuture;
  List<WordInner> _words = [];
  int _currentIndex = 0;
  bool _showDetails = false;
  String? _eventId;
  Map<int, int> _wrongCountMap = {};

  @override
  void initState() {
    super.initState();
    _learnFuture = _startNewLearn();
  }

  Future<NewLearnReply> _startNewLearn() async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final metadata = {
      'authorization': '${authProvider.token}',
    };

    final response = await authProvider.wordClient.startNewLearn(
      NewLearnRequest()..number = 3,
      options: grpc.CallOptions(metadata: metadata),
    );

    setState(() {
      _words = response.words;
      _eventId = response.eventId;
    });

    return response;
  }

  void _onKnow() {
    setState(() {
      _showDetails = true;
      if (!_wrongCountMap.containsKey(_words[_currentIndex].id)) {
        _wrongCountMap[_words[_currentIndex].id] = 0;
      }
    });
  }

  void _onDoNotKnow() {
    setState(() {
      _showDetails = true;
      _wrongCountMap[_words[_currentIndex].id] =
          (_wrongCountMap[_words[_currentIndex].id] ?? 0) + 1;
      _words.add(_words.removeAt(_currentIndex));
    });
  }

  void _nextWord() {
    setState(() {
      _showDetails = false;

      _currentIndex++;

      if (_currentIndex >= _words.length) {
        _finishLearn();
      }
    });
  }

  Future<void> _finishLearn() async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final metadata = {
      'authorization': '${authProvider.token}',
    };

    final wordLearnList = _wrongCountMap.entries
        .map((e) => WordLearnInner()
          ..id = e.key
          ..wrongCount = e.value)
        .toList();

    await authProvider.wordClient.finishLearn(
      FinishLearnRequest()
        ..eventId = _eventId!
        ..words.addAll(wordLearnList),
      options: grpc.CallOptions(metadata: metadata),
    );

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('学习完成'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('学习单词'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text('已学习: $_currentIndex/${_words.length}'),
            ),
          ),
        ],
      ),
      body: FutureBuilder<NewLearnReply>(
        future: _learnFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('错误: ${snapshot.error}'));
          } else if (!snapshot.hasData || _words.isEmpty) {
            return Center(child: Text('未找到数据。'));
          } else if (_currentIndex < _words.length) {
            final word = _words[_currentIndex];
            return Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${word.word}',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  if (_showDetails) ...[
                    Text(
                      '定义: ',
                      style: TextStyle(fontSize: 18),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          '${word.definition}',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      '翻译: ',
                      style: TextStyle(fontSize: 18),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          '${word.translation}',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      '标签:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Wrap(
                      spacing: 8.0,
                      children: word.tag
                          .map((tag) => Card(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    tag,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                    SizedBox(height: 32),
                  ],
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (!_showDetails)
                        ElevatedButton(
                          onPressed: _onDoNotKnow,
                          child: Text('不认识'),
                        ),
                      if (!_showDetails)
                        ElevatedButton(
                          onPressed: _onKnow,
                          child: Text('认识'),
                        ),
                      if (_showDetails)
                        ElevatedButton(
                          onPressed: _nextWord,
                          child: Text('下一个'),
                        ),
                    ],
                  ),
                ],
              ),
            );
          } else {
            return Center(child: Text('学习完成'));
          }
        },
      ),
    );
  }
}
