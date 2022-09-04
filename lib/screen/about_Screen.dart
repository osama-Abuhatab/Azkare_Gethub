import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
            )),
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'About Secreen',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
