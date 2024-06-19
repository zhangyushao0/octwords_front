import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'src/generated/word.pbgrpc.dart';
import 'src/generated/login.pbgrpc.dart';

class AuthProvider with ChangeNotifier {
  String? _token;
  late ClientChannel _channel;
  late WordClient _wordClient;

  String? get token => _token;

  AuthProvider() {
    _channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    _wordClient = WordClient(_channel);
  }

  Future<void> login(String username, String password) async {
    final stub = LoginClient(_channel);
    final response = await stub.login(LoginRequest()
      ..username = username
      ..password = password);

    if (response.success) {
      _token = response.token;
      notifyListeners();
    } else {
      throw Exception('Login failed');
    }
  }

  WordClient get wordClient => _wordClient;

  @override
  void dispose() {
    _channel.shutdown();
    super.dispose();
  }
}
