import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAwoZi-2-ocDqmyWiRDaFpfA-m95ZVuypo",
            authDomain: "island-root.firebaseapp.com",
            projectId: "island-root",
            storageBucket: "island-root.appspot.com",
            messagingSenderId: "685289609073",
            appId: "1:685289609073:web:3d0b3a9dfdaf387c0508d0",
            measurementId: "G-4FCS6QDTEF"));
  } else {
    await Firebase.initializeApp();
  }
}
