import 'package:flutter/material.dart';
import 'package:proyect_catalogo/_homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        Duration(milliseconds: 1500),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Homepage())));
    super.initState();
  }

  //TODO: Crear la Conexion a Firebase Aquí y eliminar el archivo de conexion

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE8F6FA),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Center(
              child: FractionallySizedBox(
                  widthFactor: .65,
                  child: Container(
                    width: 500,
                    child: Image.asset("assets/img/logo-app.png"),
                  )),
            ),
            Spacer(),
            CircularProgressIndicator(),
            Spacer(),
          ],
        )));
  }
}
