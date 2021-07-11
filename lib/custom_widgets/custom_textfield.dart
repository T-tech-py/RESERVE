import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final String subText;

  const CustomTextField({@required this.text, @required this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 12, color: Color(0xFF2F4858)),
        ),
        SizedBox(height: 4.h),
        SizedBox(
          height: 48.h,
          child: TextField(
            decoration: InputDecoration(
              hintText: subText,
              hintStyle: TextStyle(fontSize: 14, color: Color(0xFFE0E0E0)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTextFieldWithIcon extends StatelessWidget {
  final String text;
  final String subText;
  final IconData icon;
  final VoidCallback onClick;
  final bool changeIcon;

  const CustomTextFieldWithIcon(
      {@required this.text,
      @required this.icon,
      @required this.onClick,
      @required this.changeIcon,
      @required this.subText});
  @override
  Widget build(BuildContext context) {
    bool showpassword = changeIcon;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(fontSize: 12, color: Color(0xFF2F4858))),
        SizedBox(height: 4.h),
        SizedBox(
          height: 48.h,
          child: TextField(
            obscureText: showpassword,
            decoration: InputDecoration(
              hintText: subText,
              hintStyle: TextStyle(fontSize: 14, color: Color(0xFFE0E0E0)),
              suffixIcon: IconButton(
                icon: Icon(
                  showpassword
                      ? Icons.visibility_off_rounded
                      : Icons.visibility,
                  color: Colors.grey,
                ),
                onPressed: () {
                  showpassword = !showpassword;
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
