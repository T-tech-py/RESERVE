import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/core/navigate.dart';
import 'package:resturant_app/custom_widgets/custom_buttons.dart';
import 'package:resturant_app/custom_widgets/custom_switch.dart';
import 'package:resturant_app/custom_widgets/custom_textfield.dart';
import 'package:resturant_app/screen/login_screen.dart';
import 'package:resturant_app/screen/otp_screen.dart';

class SingUp_Screen extends StatefulWidget {
  @override
  _SingUp_ScreenState createState() => _SingUp_ScreenState();
}

class _SingUp_ScreenState extends State<SingUp_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 32.h, right: 20.w, left: 20),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "images/Vector.png",
                width: 34.w,
                height: 31.h,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 40.h),
            Text(
              "Create your Account",
              style: TextStyle(fontSize: 20, color: Color(0XFF2F4858)),
            ),
            SizedBox(height: 4.h),
            Text(
                "Create an account to have access to reserve table in various restuarants "
                "wherever you are ",
                style: TextStyle(fontSize: 12, color: Color(0XFF818181))),
            SizedBox(height: 31.h),
            CustomTextField(
              text: "Full Name",
              subText: 'Stella Waston',
            ),
            SizedBox(height: 24.h),
            CustomTextField(
                text: "E-mail", subText: "Ex:stellawaston@gmail.com"),
            SizedBox(height: 24.h),
            CustomTextField(text: "Phone Number", subText: "0810 000 0000"),
            SizedBox(height: 24.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Country",
                    style: TextStyle(fontSize: 12, color: Color(0xFF2F4858))),
                SizedBox(height: 4.h),
                SizedBox(
                  height: 48.h,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Choose your country",
                      hintStyle:
                          TextStyle(fontSize: 14, color: Color(0xFFE0E0E0)),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.arrow_drop_down),
                        color: Colors.grey,
                        onPressed: () {
                          setState(() {});
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            CustomTextFieldWithIcon(
              text: 'Password',
              icon: Icons.arrow_drop_down,
              changeIcon: true,
              onClick: () {},
              subText: '*********',
            ),
            SizedBox(height: 24.h),
            CustomTextFieldWithIcon(
              text: 'Confirm Password',
              icon: Icons.arrow_drop_down,
              changeIcon: true,
              onClick: () {},
              subText: '*********',
            ),
            SizedBox(height: 11.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SwitchControl(
                      onChanged: (bool value) {},
                    ),
                    SizedBox(width: 10),
                    Text("I agree with the terms of use and privacy policy",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF333333))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40.h),
            CustomElevatedButton(
              text: "Sign Up",
              onTap: () {
                Navigate.push(context, OtpScreen());
              },
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
            SizedBox(height: 23.h),
            FacebookButton(
              text: "Facebook",
              onTap: () {},
            ),
            SizedBox(height: 24.h),
            GoogleButton(
              text: "Google",
              onTap: () {},
            ),
            SizedBox(height: 112.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 14),
                ),
                InkWell(
                  onTap: () {
                    Navigate.push(context, LoginScreen());
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 14, color: Colors.orange),
                  ),
                )
              ],
            ),
            SizedBox(height: 39.h),
          ],
        ),
      ),
    );
  }
}
