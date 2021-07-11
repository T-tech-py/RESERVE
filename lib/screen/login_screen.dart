import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant_app/core/navigate.dart';
import 'package:resturant_app/custom_widgets/custom_buttons.dart';
import 'package:resturant_app/screen/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/custom_widgets/custom_switch.dart';
import 'package:resturant_app/screen/sign_up.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(builder: (context, constraints) {
        return Padding(
          padding: EdgeInsets.only(left: 20.w, top: 63.h, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  "images/Vector.png",
                  color: Colors.orange,
                  width: 35.w,
                  height: 31.h,
                ),
              ),
              SizedBox(height: 40.h),
              Text(
                "Welcome Back Stella,",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                "Reserve a Table with restuarants of your choice with no stress.",
                style: TextStyle(
                    // fontSize: 10,
                    ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("E-mail"),
                  SizedBox(height: 4.h),
                  SizedBox(
                    height: 48.h,
                    child: TextField(
                      controller: TextEditingController(
                          text: "Ex: stellawatson@gmail.com"),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Password"),
                  SizedBox(height: 4.h),
                  SizedBox(
                    height: 48.h,
                    child: TextField(
                      obscureText: showPassword,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(showPassword
                              ? Icons.visibility_off_rounded
                              : Icons.visibility_rounded),
                          color: Colors.grey,
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 11.5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SwitchControl(
                            onChanged: (bool value) {},
                          ),
                          SizedBox(width: 10),
                          Text("Remember me")
                        ],
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 39.h),
              SizedBox(
                //width: constraints.maxWidth > 400 ? 300 : null,
                child: CustomElevatedButton(
                  text: 'Login',
                  onTap: () {
                    Navigate.push(context, HomeScreen());
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Container(color: Colors.black, height: 1.h, width: 140.w),
                  SizedBox(width: 19.w),
                  Text(
                    "OR",
                    style: TextStyle(
                      //backgroundColor: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 19.w),
                  Container(color: Colors.black, height: 1.h, width: 140.w),
                ],
              ),
              SizedBox(height: 24),
              FacebookButton(
                text: "Facebook",
                onTap: () {},
              ),
              SizedBox(height: 20.h),
              GoogleButton(text: "Google", onTap: () {}),
              SizedBox(height: 55.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Are you a new user?",
                  ),
                  InkWell(
                    onTap: () {},
                    child: GestureDetector(
                      onTap: () {
                        Navigate.pushReplacement(context, SingUp_Screen());
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
