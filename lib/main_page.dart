// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code
//ctrl+s
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intro_flutter/menu.dart';

//void main() => runApp(const MainPage());

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  static const String _title = 'آذَڪآر';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(235, 255, 255, 255),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(235, 189, 183, 162),
            title: const Text(_title),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.all(70),
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "اللهم صّلِ وسلم على مُحَمد ﷺ ",
                          style: TextStyle(fontSize: 30),
                        )),
                    Container(
                        padding: EdgeInsets.all(100),
                        margin: EdgeInsets.only(left: 15),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(235, 189, 183, 162)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 255, 255, 255)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Menu()),
                            );
                          },
                          child: Text('ابدا', style: TextStyle(fontSize: 30)),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}


//  return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(235, 255, 255, 255),
//         appBar: AppBar(
//           title: const Text(_title),
//           backgroundColor: Color.fromARGB(236, 117, 131, 214),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//                 margin: EdgeInsets.only(left: 50),
//                 child: Text(
//                   "اللهم صّلِ وسلم على مُحَمد ﷺ ",
//                   style: TextStyle(fontSize: 30),
//                 )),
//             Container(
//                 padding: EdgeInsets.all(100),
//                 margin: EdgeInsets.only(left: 50),
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all<Color>(
//                         Color.fromARGB(255, 211, 220, 223)),
//                     foregroundColor: MaterialStateProperty.all<Color>(
//                         Color.fromARGB(255, 0, 0, 0)),
//                   ),
//                   onPressed: () {},
//                   child: Text('ابدا', style: TextStyle(fontSize: 30)),
//                 ))
//           ],
//         ),
//       ),
//     );