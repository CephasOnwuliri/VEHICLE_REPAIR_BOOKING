import 'dart:async';
import '../models/user.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();
  
  factory AuthService() => _instance;
  
  AuthService._internal();
  
  User? _currentUser;
  
  User? get currentUser => _currentUser;
  
  Future<bool> login(String email, String password) async {
    // Hardcoded credentials as per requirements
    if (email == 'intern@balancee.com' && password == 'Intern123#') {
      // Simulate network delay
      await Future.delayed(Duration(seconds: 2));
      
      // Create dummy token
      _currentUser = User(
        email: email,
        token: 'dummy_token_${DateTime.now().millisecondsSinceEpoch}',
      );
      
      return true;
    }
    return false;
  }
  
  void logout() {
    _currentUser = null;
  }
  
  bool isLoggedIn() {
    return _currentUser != null;
  }
}