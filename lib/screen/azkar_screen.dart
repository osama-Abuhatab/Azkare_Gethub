import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter = 0;
  String _zeker = 'سبحان الله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 80,
        // leadingWidth:0,
        titleSpacing: 0,

        leading: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: PopupMenuButton<String>(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            iconSize: 50,
            offset: const Offset(5, 60),
            onSelected: (value) {
              if (_zeker != value) {
                setState(
                  () {
                    _zeker = value;
                    _counter = 0;
                  },
                );
              }
            },
            tooltip: 'نوع التسبيح',
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  child: Text('سبحان الله'),
                  value: 'سبحان الله',
                ),
                PopupMenuItem(
                  child: Text('الحمد لله'),
                  value: 'الحمد لله',
                ),
                PopupMenuItem(
                  child: Text('الله أكبر'),
                  value: 'الله أكبر',
                ),
                PopupMenuItem(
                  child: Text('لا إله الا الله'),
                  value: 'لا إله الا الله',
                ),
                PopupMenuItem(
                  child: Text('لا حول ولا قوة الا  بالله'),
                  value: 'لا حول ولا قوة الا  بالله',
                ),
                PopupMenuItem(
                  child: Text('سبحان الله وبحمده'),
                  value: 'سبحان الله وبحمده',
                ),
                PopupMenuItem(
                  child: Text('أستغفر الله'),
                  value: 'أستغفر الله',
                ),

              ];
            },
          ),
        ),

        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff396e7f),
          ),
          child: const Text(
            '\t مسبحة الأذكار\t ',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 25,
              //color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        // automaticallyImplyLeading: false, // الخاصية التي تخص زر الرجوع
        /*
        بشكل تلقائي بيئة flutter تقوم بانشاء زر back للرجوع ل launch screen
         بسبب ال push Named ضلت خلفية ال launch screen في الخلفية(back Stack)
         خاصية ال automaticallyImplyLeading: تخاطب ال back stack
          اذا ما كانت اكبر من صفر يتم انشاء زر رجوع تلقائي
          لكي  اسجعل الشاشة تظهر لمرة واحدة ومن ثم الاختفاء اي ان
           خاصية ال automaticallyImplyLeading:عندما  تخاطب ال back stack
           فان ال  back stack = 0
           وبالتالي لا يتم انشاء زر back وايضا شاشة ال launch screen تحذف من ال Stack
        */
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about_Screen');
              },
              constraints: BoxConstraints(maxWidth: 70, minWidth: 40),
              icon: const Icon(
                Icons.info_outline,
              ),
              padding: EdgeInsets.zero,
            ),
          )
        ],
      ),

      //extendBodyBehindAppBar: true,

      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/app2.jpg',
              ),
              fit: BoxFit.cover),
          /*gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [Colors.teal.shade900, Colors.teal.shade300],
          ),*/
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/masbaha.jpg'),
              backgroundColor: Colors.transparent,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 20),
              height: 60,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                //color: Colors.white,
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xff187181),
                      offset: Offset(0, 5),
                      blurRadius: 7),
                  BoxShadow(
                      color: Color(0xff187181),
                      offset: Offset(0, 5),
                      blurRadius: 7),
                  BoxShadow(
                      color: Color(0xff187181),
                      offset: Offset(0, 5),
                      blurRadius: 7),
                  BoxShadow(
                      color: Color(0xff187181),
                      offset: Offset(0, 5),
                      blurRadius: 7),
                ],
              ),
              child: Row(mainAxisSize: MainAxisSize.max, children: [
                Expanded(
                    child: Text(
                  _zeker,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
                DecoratedBox(
                  decoration: const BoxDecoration(color: Color(0xffefdf9b)),
                  child: SizedBox(
                    width: 50,
                    height: double.infinity,
                    child: Center(
                      child: Text(
                        _counter.toString(),
                        style: const TextStyle(
                          color: Color(0xff187181),
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ++_counter;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffe8c169),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'تسبيح ',
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _counter = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade800,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'إعادة ',
                      style: TextStyle(fontFamily: 'Cairo'),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
