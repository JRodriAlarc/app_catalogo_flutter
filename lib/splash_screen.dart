import 'package:flutter/material.dart';
import 'page_login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(milliseconds: 1500),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const PageLogin())));
    super.initState();
  }

  //TODO: Crear la Conexion a Firebase Aquí y eliminar el archivo de conexion

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F6FA),
      body: SafeArea(
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
      ),
    );
  }
}
