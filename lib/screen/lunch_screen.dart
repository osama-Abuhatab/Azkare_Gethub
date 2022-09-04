import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/azkar_Screen');
      /*
        pushNamedاستخدمنا ال pushReplacementNamed بدل ال
          لكي  اسجعل الشاشة تظهر لمرة واحدة ومن ثم الاختفاء اي ان
           خاصية ال automaticallyImplyLeading:عندما  تخاطب ال back stack
           فان ال  back stack = 0
      */
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
           // colors: [Colors.teal.shade900, Colors.teal.shade300],
            colors:  [Color(0xff396e7f),Color(0xff20989a)]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
             Text(
              'مسبحة الأذكار',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
              ),
            ),
            /*Image.asset(
              'images/azkar.png',
            ),*/
          ],
        ),
      ),
    );
  }
}
