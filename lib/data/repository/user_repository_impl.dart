import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wellbeing_journey/domain/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  UserRepositoryImpl({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firebasestore,
  })  : _auth = firebaseAuth,
        _firestore = firebasestore;

  @override
  Future<UserCredential> login(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-credential':
          throw Exception('User not found');
        case 'wrong-password':
          throw Exception('Incorrect password');
        default:
          throw Exception('Login failed: ${e.message}');
      }
    }
  }

  @override
  Future<UserCredential> create(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          throw Exception('The email is already in use');
        case 'weak-password':
          throw Exception('Weak password');
        default:
          throw Exception('Account creation failed: ${e.message}');
      }
    }
  }

  @override
  Future<User?> userLoaded() async {
   return _auth.currentUser;
  } 

  @override
  Future<String?> getEmail() async {
    return _auth.currentUser?.email;
  } 

  @override
  Future<String> getUserName(String uid) async {
    try {
      final doc = await _firestore.collection('users').doc(uid).get();
      return doc.data()?['name'] ?? '';
    } catch (_) {
      throw Exception('Error retrieving user name');
    }
  }

  @override
  Future<void> setUserName(String uid, String name) async {
    try {
      await _firestore.collection('users').doc(uid).update({'name': name});
    } catch (_) {
      throw Exception('Error updating user name');
    }
  }

  @override
  Future<void> reauthenticateWithPassword(String currentPassword) async {
    try {
      final user = _auth.currentUser;
      if (user == null || user.email == null) throw Exception('User not found');

      final credential = EmailAuthProvider.credential(email: user.email!, password: currentPassword);
      await user.reauthenticateWithCredential(credential);
    } catch (_) {
      throw Exception('Failed to reauthenticate');
    }
  }

  @override
  Future<void> updateUserPassword(String newPassword) async {
    try {
      await _auth.currentUser?.updatePassword(newPassword);
    } catch (_) {
      throw Exception('Failed to update password');
    }
  }

  @override
  Future<void> signOut() async {
    return _auth.signOut();
  } 

  @override
  Future<void> saveUserAnswers(List<int> answers) async {
    final user = _auth.currentUser;
    if (user == null) throw Exception('No authenticated user');

    await _firestore
        .collection('users')
        .doc(user.uid)
        .collection('questionnaire_results')
        .add({
      'answers': answers,
      'timestamp': DateTime.now().toIso8601String(),
    });
  }

  @override
  Future<List<Map<String, dynamic>>> getUserAnswers() async {
    final user = _auth.currentUser;
    if (user == null) throw Exception('No authenticated user');

    try {
      final snapshot = await _firestore
          .collection('users')
          .doc(user.uid)
          .collection('questionnaire_results')
          .orderBy('timestamp')
          .get();

      return snapshot.docs.map((doc) {
        final data = doc.data();
        return {
          'answers': List<int>.from(data['answers']),
          'timestamp': data['timestamp'] is Timestamp
              ? (data['timestamp'] as Timestamp).toDate()
              : DateTime.parse(data['timestamp']),
        };
      }).toList();
    } catch (e) {
      throw Exception('Failed to fetch user answers: $e');
    }
  }
}
