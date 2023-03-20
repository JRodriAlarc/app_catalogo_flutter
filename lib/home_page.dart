import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8F6FA),
      body: SafeArea(
          child: ClipPath(
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xFF617ed8),
              Color(0xFF3333d8),
            ])),
            height: 300.0,
            child: Container(
              child: Column(children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 50)),
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 12, right: 12)),
                    Text("Bienvenido,",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        )),
                    Spacer()
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 12, right: 12)),
                    Text('Inicia Sesión',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 55,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ]),
            )),
        clipper: MyCustomClipper(),
      )),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 2);
    path.cubicTo(size.width / 4, 3 * (size.height / 2), 3 * (size.width / 4),
        size.height / 2, size.width, size.height * 0.9);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
