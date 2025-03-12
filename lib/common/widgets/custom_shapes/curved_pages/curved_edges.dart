import 'package:flutter/material.dart';

class  TCustomCurvedEdges extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    /// TODO: implements get clip
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondFirstCurve = Offset(0, size.height - 20);
    final secondLastCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    final finalFirstCurve = Offset(size.width, size.height - 20);
    final finalLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(finalFirstCurve.dx, finalFirstCurve.dy, finalLastCurve.dx, finalLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    /// implements should re-clip
    return true;
  }
}
