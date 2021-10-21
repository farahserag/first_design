import 'package:first_design/secScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/tree.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 100,
              left: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enjoy the trip',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    'With me',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(height: 280),
                  Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 2, color: Colors.grey)),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      splashColor: Colors.white38,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecScreen()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Container(
                    //   height: 60,
                    //   width: 350,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(40),
                    //     color: Colors.deepOrange[600],
                    //   ),
                    //   child: OutlinedButton(
                    //       onPressed: () {
                    //         Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => SecScreen()));
                    //       },
                    //       child: Text(
                    //         'Sign Up',
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.bold,
                    //             color: Colors.white,
                    //             fontSize: 25),
                    //       )),
                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 2, color: Colors.grey)),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      splashColor: Colors.white38,
                      onPressed: () {},
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      // )
                    ),
                  ),
                  // Container(
                  //   height: 60,
                  //   width: 350,
                  //   decoration: BoxDecoration(
                  //     // borderRadius: BorderRadius.circular(200),
                  //     color: Colors.white,
                  //   ),
                  //   child: OutlinedButton(
                  //       onPressed: () {},
                  //       child: Text(
                  //         'Sign in',
                  //         style: TextStyle(
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.deepOrange[400],
                  //             fontSize: 25),
                  //       )),
                  // ),
                ],
              ))
        ],
      ),
    );
  }
}
