// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
//  تطبيق ارسال البيانات من صفحه للتانيه
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map time = {"name": "", "time": "", "app_developer": ""};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 58, 100),
        title: Text(
          "page1",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                dynamic receivedDateFromPage2 =
                    await Navigator.pushNamed(context, '/Page2');
                setState(() {
                  if (receivedDateFromPage2 == null) {
                    time = {
                      "name":
                          "حدثت مشكلة أثناء استرجاع البيانات. الرجاء المحاولة مرة أخرى",
                      "time": "للأسف، حدثت مشكلة",
                      "app_developer": "",
                    };
                  } else {
                    time = receivedDateFromPage2;
                    // طريقه اخري
                    // time = {
                    //   "time": receivedDateFromPage2['time'],
                    //   "name": receivedDateFromPage2['name'],
                    // };
                  }
                });
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 20, 58, 100)),
                padding: MaterialStateProperty.all(EdgeInsets.all(19)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11))),
              ),
              child: Text(
                "Go to page2",
                style: TextStyle(fontSize: 19),
              ),
            ),
            SizedBox(height: 99),
            Text(
              time["time"],
              style: TextStyle(fontSize: 44),
            ),
            Text(
              time["name"],
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 22),
            Text(
              time["app_developer"],
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
