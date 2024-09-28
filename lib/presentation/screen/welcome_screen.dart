import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: _body(),
          backgroundColor: Color(0xFF8E97FD),
        )
    );
  }
}

Widget _body() {
  return Stack(
    children: [
      _image(),
      _textAndButtonColumn()
    ],
  );
}

Widget _image() {
  return SizedBox.expand(
    child: Image.asset('assets/images/welcome_img.png'),
  );
}

Widget _textAndButtonColumn() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Center(child: _texts()),
      Center(child: _button()),
    ],
  );
}

Widget _texts() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 50),
      //Text('Medit'),
      _textIcons(),
      SizedBox(height: 75),
      Padding(
        padding: EdgeInsets.only(left: 72, right: 72),
        child: Text(
          'Hi There, Welcome to Medit',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF5EEDC),
          ),
        ),
      ),

      SizedBox(height: 15),
      Padding(
        padding: EdgeInsets.only(left: 48, right: 48),
        child: Text(
            'Explore the app, Find some peace of mind to prepare for meditation.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFEBEAEC),
              fontSize: 16.0,
            ),

        ),
      )

    ],
  );
}

Widget _textIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Silent',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFFFFFF),
        ),
      ),
      SizedBox(width: 10),
      SizedBox(width: 30,height: 30,child: Image.asset('assets/images/welcome_img2.png')),
      SizedBox(width: 10),
      Text(
        'Mode',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFFFFFF),
        ),
      ),
    ],
  );
}

Widget _button(){
  return Padding(
    padding: EdgeInsets.only(
      right: 20.0,
      left: 20.0,
      bottom: 80.0
    ),
    child: SizedBox(
      width: double.infinity,
      height: 63,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Text(
          'GET STARTED',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    ),
  );
}