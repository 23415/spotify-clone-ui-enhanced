import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 0.8),
      body: Center(
        child: Text('Uh ho Something is Wrong',style: TextStyle(fontSize: 12),),
      ),
    );
  }
}
