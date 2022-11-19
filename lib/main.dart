import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Image_app(),
    );
  }
}


class Image_app extends StatefulWidget {
  const Image_app({Key? key}) : super(key: key);

  @override
  State<Image_app> createState() => _Image_appState();
}

class _Image_appState extends State<Image_app> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Colors.blueAccent,
        child: Scaffold(
        backgroundColor: Colors.blueAccent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          number++;
                        });
                      },
                      child: Container(
                          width: 150,
                          padding: const EdgeInsets.all(20.0),
                          child: Image(
                            image: AssetImage("images/dice$number.png"),
                          )
                      ),
                    )
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          number--;
                        });
                      },
                      child: Container(
                        width: 150,
                          padding: const EdgeInsets.all(20.0),
                          child: Image(
                            image: AssetImage("images/dice$number.png"),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
      )
    );
  }
}
