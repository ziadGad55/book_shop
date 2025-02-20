import 'package:book_shop/pages/Login_page.dart';
import 'package:book_shop/core/colorApp.dart';
import 'package:book_shop/widget/buttom.dart';
import 'package:book_shop/widget/field.dart';
import 'package:flutter/material.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

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
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Don't worry! It occurs. Please enter the email address linked with your account.",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff8391A1),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Field(hintText: "Enter your email"),
              SizedBox(
                height: 35,
              ),
              buttom(
                  textcolor: Colors.white,
                  textButtom: "Send Code",
                  backgroundcolor1: AppColor.primecolor,
                  onPressed: () {}),
                  SizedBox(height: 420,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Remember Password?",style: TextStyle(fontSize: 15),),
                    TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      
                    }, child: Text("Login",style: TextStyle(
                      color: AppColor.primecolor,
                    ),)),
                  ],),
            ],
          ),
        ),
      ),
    );
  }
}
