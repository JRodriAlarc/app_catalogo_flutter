import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';
import '../page_login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _firebaseConnected = false;

  @override
  void initState() {
    super.initState();
    conectarFirebase().then((_) {
      setState(() {
        _firebaseConnected = true;
      });
      Future.delayed(
          const Duration(milliseconds: 1500),
          () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const PageLogin())));
    });
  }

  Future<FirebaseApp> conectarFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    try {
      await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: 'AIzaSyBbxooKz6P4OJM46RL4GgDoKNDW7oZS_tj',
              appId: '1:751405322678:ios:1025f3c9a66d6b7906b457',
              messagingSenderId: '751405322879',
              projectId: 'catalogo-ropa-ppp'));

      print("OK: Servicio de Firebase Inicializado Correctamente");
    } catch (e) {
      print("ER: Error al Intentar usar el Servicio de Firebase: $e");
    }
    return Firebase.app();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE8F6FA),
        body: _firebaseConnected
            ? SafeArea(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Spacer(),
                          Center(
                            child: FractionallySizedBox(
                              widthFactor: .65,
                              child: SizedBox(
                                width: 300,
                                child: Image.asset("assets/img/logo-app.png"),
                              ),
                            ),
                          ),
                          const Spacer(),
                          const CircularProgressIndicator(),
                          const Spacer()
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }
}