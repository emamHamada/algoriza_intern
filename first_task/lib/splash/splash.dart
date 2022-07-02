import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../components/button.dart';
import '../components/constats.dart';
import '../sign_page/login/login.dart';
import '../sign_page/sign_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.lightBlue.shade100,
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.only(top: 50, right: 20),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Skip",
                  style: TextStyle(fontSize: 18),
                )),
          ],
        ),
        Expanded(
          child: PageView(children: [
            Column(
              children: [
                Expanded(
                  child: Center(
                      child: Lottie.network(
                          'https://assets7.lottiefiles.com/private_files/lf30_x7SLjr.json')),
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    child: const Text(
                        "Get Your owen order to your door as you need")),
                Container(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  alignment: Alignment.center,
                  child: const Text(
                      "We Have Young and professional delivery just order your order sir "),
                )
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Center(
                      child: Lottie.network(
                          'https://assets7.lottiefiles.com/private_files/lf30_ejgmkzby.json')),
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    child: const Text(
                        "Get Your owen order to your door as you need")),
                Container(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  alignment: Alignment.center,
                  child: const Text(
                      "We Have Young and professional delivery just order your order sir "),
                )
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Center(
                      child: Lottie.network(
                          'https://assets6.lottiefiles.com/packages/lf20_8urhsyy3.json')),
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    alignment: Alignment.center,
                    child: const Text(
                        "Get Your owen order to your door as you need")),
                Container(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  alignment: Alignment.center,
                  child: const Text(
                    "We Have Young and professional delivery just order your order sir ",
                    style: TextStyle(fontFamily: "Ubuntu-Bold"),
                  ),
                )
              ],
            ),
          ]),
        ),
        MyButton(
          backColor: Colors.lightBlue.shade300,
          label: 'Get Started',
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const SignPage()));
          },
        ),
        buildregesterwords(context),
      ]),
    );
  }
}
