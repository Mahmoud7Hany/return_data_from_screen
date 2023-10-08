// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 58, 100),
        title: Text(
          "Page2",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  "name": "Mahmoud Hany",
                  "time": "2:01 AM",
                  "app_developer": "تم تطوير هذا التطبيق بواسطة محمود هاني"
                });
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 95, 11, 81)),
                padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
              ),
              child: Text(
                "الرجوع إلى الصفحة السابقة التي تحتوي على معلومات محمود",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,
                    {"name": "Egypt", "time": "2:32 AM", "app_developer": ""});
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 95, 11, 81)),
                padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
              ),
              child: Text(
                "الرجوع إلى الصفحة السابقة التي تحتوي على معلومات مصر",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
