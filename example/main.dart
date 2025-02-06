import 'package:flutter/material.dart';

class JoltaxFramework extends StatelessWidget {
  const JoltaxFramework({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 30,
          height: 200,
          decoration: BoxDecoration(color: Color(0xFF0067FF)),
          child: Text('Joltax Framework'),
        ),
      ),
    );
  }
}
