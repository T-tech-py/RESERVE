import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  CustomElevatedButton({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          primary: Color(0xFFF27909),
          elevation: 2,
        ),
        child: Text(
          text ?? '',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  CustomOutlinedButton({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: Color(0xFFF27909),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Color(0xFFF27909).withOpacity(0.15),
        ),
        child: Text(
          text ?? '',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFFF27909),
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}

class FacebookButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  FacebookButton({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: Color(0xFF1877F2),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Color(0xFF1877F2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/facebook.png",
              width: 20.w,
              height: 20.w,
            ),
            SizedBox(width: 10.w),
            Text(
              text ?? '',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
        onPressed: onTap,
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  GoogleButton({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: Color(0xFFE5E5E5),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/Google.png",
              width: 20.w,
              height: 20.w,
            ),
            SizedBox(width: 10.w),
            Text(
              text ?? '',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
        onPressed: onTap,
      ),
    );
  }
}
