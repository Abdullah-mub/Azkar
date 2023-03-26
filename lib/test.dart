// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(const test());

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/sun.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(padding: const EdgeInsets.only(bottom: 170)),
                  Padding(padding: const EdgeInsets.only(right: 90)),
                  Image.asset(
                    "assets/sun.png",
                    width: 40,
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(left: 5),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 192, 240, 170)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      onPressed: () {},
                      child: Text(
                        'اذكار الصباح',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.only(bottom: 170)),
                  Padding(padding: const EdgeInsets.only(right: 90)),
                  Image.asset(
                    "assets/moon (1).png",
                    width: 40,
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(left: 5),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 192, 240, 196)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      onPressed: () {},
                      child: Text(
                        'اذكار المساء',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.only(bottom: 170)),
                  Padding(padding: const EdgeInsets.only(right: 36)),
                  Image.asset(
                    "assets/praying.png",
                    width: 40,
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30),
                    margin: EdgeInsets.only(left: 5),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 192, 240, 196)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      onPressed: () {},
                      child: Text(
                        'اذكار مابعد الصلاة',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}


// return MaterialApp(
//       title: title,
//       home: Scaffold(
//           backgroundColor: Color.fromARGB(255, 192, 240, 196),
//           appBar: AppBar(
//             backgroundColor: Color.fromARGB(255, 122, 178, 133),
//             title: const Text(title),
//           ),
//           body: Column(
//             children: [
//               Row(
//                 children: [
//                   Padding(padding: const EdgeInsets.only(bottom: 170)),
//                   Padding(padding: const EdgeInsets.only(right: 90)),
//                   Image.asset(
//                     "assets/sun.png",
//                     width: 40,
//                     height: 40,
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(top: 10),
//                     margin: EdgeInsets.only(left: 5),
//                     child: ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all<Color>(
//                             Color.fromARGB(255, 192, 240, 170)),
//                         foregroundColor:
//                             MaterialStateProperty.all<Color>(Colors.green),
//                       ),
//                       onPressed: () {},
//                       child: Text(
//                         'اذكار الصباح',
//                         style: TextStyle(fontSize: 40),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Padding(padding: const EdgeInsets.only(bottom: 170)),
//                   Padding(padding: const EdgeInsets.only(right: 90)),
//                   Image.asset(
//                     "assets/moon (1).png",
//                     width: 40,
//                     height: 40,
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(top: 10),
//                     margin: EdgeInsets.only(left: 5),
//                     child: ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all<Color>(
//                             Color.fromARGB(255, 192, 240, 196)),
//                         foregroundColor:
//                             MaterialStateProperty.all<Color>(Colors.green),
//                       ),
//                       onPressed: () {},
//                       child: Text(
//                         'اذكار المساء',
//                         style: TextStyle(fontSize: 40),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Padding(padding: const EdgeInsets.only(bottom: 170)),
//                   Padding(padding: const EdgeInsets.only(right: 36)),
//                   Image.asset(
//                     "assets/praying.png",
//                     width: 40,
//                     height: 40,
//                   ),
//                   Container(
//                     padding: EdgeInsets.only(right: 30),
//                     margin: EdgeInsets.only(left: 5),
//                     child: ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all<Color>(
//                             Color.fromARGB(255, 192, 240, 196)),
//                         foregroundColor:
//                             MaterialStateProperty.all<Color>(Colors.green),
//                       ),
//                       onPressed: () {},
//                       child: Text(
//                         'اذكار مابعد الصلاة',
//                         style: TextStyle(fontSize: 40),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           )),
//     );