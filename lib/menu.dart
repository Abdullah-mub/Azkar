import 'package:flutter/material.dart';
import 'package:intro_flutter/Morning.dart';
import 'package:intro_flutter/Night.dart';
import 'package:intro_flutter/prayers.dart';

//void main() => runApp(const Menu());

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'الأذكار';

    return Scaffold(
      backgroundColor: Color.fromARGB(235, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(235, 189, 183, 162),
        title: const Text(title),
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
                            Color.fromARGB(235, 189, 183, 162)),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 255, 255)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Morning()),
                        );
                      },
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
                            Color.fromARGB(235, 189, 183, 162)),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 255, 255)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Night()),
                        );
                      },
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
                            Color.fromARGB(235, 189, 183, 162)),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 255, 255)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const prayers()),
                        );
                      },
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
