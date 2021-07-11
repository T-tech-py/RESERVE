import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/custom_widgets/custom_buttons.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 64.h, left: 18.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 16.h,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 36.h),
            Text(
              "Phone Number Verification",
              style: TextStyle(
                color: Color(0xFF2F4858),
                fontSize: 20,
              ),
            ),
            SizedBox(height: 7.h),
            Row(
              children: [
                Text(
                  "Enter OTP sent to",
                  style: TextStyle(
                    color: Color(0xFF818181),
                    fontSize: 12,
                  ),
                ),
                Text(
                  "(406) 555-0130",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            PinPut(
              fieldsCount: 6,
              eachFieldHeight: 56.h,
              eachFieldWidth: 48.w,
              followingFieldDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFE0E0E0),
              ),
            ),
            SizedBox(height: 7.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Didn't recieve OTP? ",
                  style: TextStyle(
                    color: Color(0xFF818181),
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Resend",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 100.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomElevatedButton(
                  text: "Verify",
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
