import 'package:book_shop/pasges/Register_page.dart';
import 'package:book_shop/core/colorApp.dart';
import 'package:book_shop/pasges/forgot%20password.dart';
import 'package:book_shop/widget/buttom.dart';
import 'package:book_shop/widget/field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ishide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Expanded(
        child: Container(
          padding: EdgeInsets.all(22),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Text(
                    "Welcome back! Glad to see you, Again!",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 37,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Field(
                  hintText: 'Enter your email',
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: ishide,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                          fillColor: Color(0xffF7F8F9),
                          filled: true,
                      hintText: "Enter your password",
                      hintStyle: TextStyle(
                        color: Color(0xff8391A1)
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              ishide = !ishide;
                            });
                          },
                          icon: Icon(
                              ishide ? Icons.visibility_off : Icons.visibility))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Forgotpassword()));
                        },
                        child: Text("Forgot Password?")),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                buttom(
                    textcolor: Colors.white,
                    textButtom: ("Login"),
                    backgroundcolor1: AppColor.primecolor,
                    onPressed: () {}),
                SizedBox(
                  height: 40,
                ),
                Stack(
                  children: [
                    Divider(),
                    Center(
                      child: Container(
                        width: 90,
                        height: 19,
                        color: Colors.white,
                        child: Text(
                          "Or Login with",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.1,
                            )),
                        child: Icon(
                          Icons.facebook_outlined,
                          color: Colors.blueAccent,
                          size: 40,
                        ),
                        width: 105,
                        height: 56,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.1,
                            )),
                        child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDxbrNkQzjgAoHsmPFZ4kfpdxrZZsChy2I1A&s")),
                        width: 105,
                        height: 56,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.1,
                            )),
                        child: Icon(
                          Icons.apple,
                          size: 40,
                        ),
                        width: 105,
                        height: 56,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          "Don’t have an account? ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        child: Text("Register Now"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
