import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DrimlyFirebaseUser {
  DrimlyFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DrimlyFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DrimlyFirebaseUser> drimlyFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<DrimlyFirebaseUser>((user) => currentUser = DrimlyFirebaseUser(user));
