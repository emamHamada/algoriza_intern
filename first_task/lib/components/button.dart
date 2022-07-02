import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.label, required this.onTap, this.backColor});

  final String label;
  final Function() onTap;
  Color? backColor = Colors.lightBlue[300];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: const EdgeInsets.all(10),

        width: MediaQuery.of(context).size.width * .9,
        margin: const EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.lightBlue.shade300),
            borderRadius: BorderRadius.circular(15),
            color: backColor),
        height: 47,
        child: Text(
          label,
          // style: subHeadingStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class CustomButtonSocial extends StatelessWidget {
  CustomButtonSocial(
      {Key? key,
      required this.assetsName,
      this.w,
      required this.onPressed,
      this.h})
      : super(key: key);
  void Function()? onPressed;
  String assetsName;
  double? w;
  double? h;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey.shade200,
        ),
        height: h,
        width: w,
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: onPressed,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Image.asset(
              assetsName,
              width: 50,
              height: 60,
              filterQuality: FilterQuality.high,
            ),
            const Text(
              'Sign in with facebook',
              style: TextStyle(fontSize: 16),
            )
          ]),
        ));
  }
}
