import 'package:first_design/main.dart';
import 'package:flutter/material.dart';

class SecScreen extends StatefulWidget {
  @override
  _SecScreenState createState() => _SecScreenState();
}

class _SecScreenState extends State<SecScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            'assets/tree.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(padding: EdgeInsets.only(left: 20, top: 50)),
              Text(
                'Enjoy the trip',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              Text(
                'With me',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
