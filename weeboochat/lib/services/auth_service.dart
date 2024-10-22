import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Sign user in
  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      
      // Notify listeners if you are using this in a provider context
      notifyListeners();

      // Return the User object
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      // Handle specific FirebaseAuth exceptions
      String message;
      switch (e.code) {
        case 'user-not-found':
          message = 'No user found for that email.';
          break;
        case 'wrong-password':
          message = 'Wrong password provided for that user.';
          break;
        case 'invalid-email':
          message = 'The email address is not valid.';
          break;
        default:
          message = 'An error occurred: ${e.message}';
      }
      throw Exception(message);
    } catch (e) {
      // Handle other exceptions
      throw Exception('An error occurred: $e');
    }
  }

  // Sign user out
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    notifyListeners();
  }
}
