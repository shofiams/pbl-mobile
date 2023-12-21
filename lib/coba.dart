import 'package:flutter/material.dart';

class Coba extends StatefulWidget {
  const Coba({Key? key}) : super(key: key);

  @override
  State<Coba> createState() => _CobaState();
}

class _CobaState extends State<Coba> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 119,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.50, color: Color(0xFF719EC2)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
