import 'package:book_shop/pages/Login_page.dart';
import 'package:book_shop/core/colorApp.dart';
import 'package:book_shop/widget/buttom.dart';
import 'package:book_shop/widget/field.dart';
import 'package:book_shop/widget/passfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello! Register to get started",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Field(hintText: "Username"),
              SizedBox(
                height: 15,
              ),
              Field(hintText: "Email"),
              SizedBox(
                height: 15,
              ),
              Passfield(hintText: "Password"),
              SizedBox(
                height: 15,
              ),
              Passfield(hintText: "Confirm password"),
              SizedBox(
                height: 30,
              ),
              buttom(
                  textcolor: Colors.white,
                  textButtom: "Register",
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
                SizedBox(height: 74,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                TextButton(onPressed: (){
                  setState(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  });
                }, child: Text("Login Now")),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
