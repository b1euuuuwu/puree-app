import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:puree_app/login/merchant_login.dart';

import 'package:flutter_svg/flutter_svg.dart';
// import 'assets/images/logo.svg';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget svg = SvgPicture.asset('assets/images/logo.svg');
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Align(
        alignment: Alignment.center,
        child: Column(children: [
          Stack(
            children: <Widget>[
              Container(
                  alignment: Alignment.topLeft,
                  child: const Image(
                      image: AssetImage('assets/images/cloud.png'))),
              Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                child:
                    const Image(image: AssetImage('assets/images/cloud2.png')),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: SvgPicture.asset('assets/images/logo.svg'),
          ),
          // const FirstRoute(),
          // const SecondRoute()
          Container(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: SizedBox(
                // alignment: Alignment.center,
                width: 280,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF8096A3))),
                  child: const Text(
                    'Here to by',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {},
                )),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: SizedBox(
                // alignment: Alignment.center,
                width: 280,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0))),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFFFFFF))),
                  child: const Text(
                    'Here to sell',
                    style: TextStyle(fontSize: 15, color: Color(0xFF666666)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Merchant()));
                  },
                )),
          )
        ]),
      ),
    );
  }
}
