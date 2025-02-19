import 'package:book_shop/Login_page.dart';
import 'package:book_shop/Register_page.dart';
import 'package:book_shop/core/colorApp.dart';
import 'package:book_shop/widget/buttom.dart';
import 'package:flutter/material.dart';

class Welcom extends StatefulWidget {
  const Welcom({super.key});

  @override
  State<Welcom> createState() => _WelcomState();
}

class _WelcomState extends State<Welcom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1543497415-75c0a27177c0?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 230,
                  ),
                  Text(
                    "Order Your Book Now!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 380,
                  ),
                  buttom(
                    textcolor: Colors.white,
                    textButtom: ("Login"),
                    backgroundcolor1: AppColor.primecolor,
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buttom(
                    textcolor: Colors.black,
                    textButtom: ("Register"),
                    backgroundcolor1: Colors.white,
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => RegisterPage()));
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
