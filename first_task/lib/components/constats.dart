import 'package:flutter/material.dart';

import '../sign_page/signup/signUp.dart';


Padding buildregesterwords(BuildContext context,) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account ?"),
        GestureDetector(
          onTap: () {
            Navigator
                .of(context)
                .push(MaterialPageRoute(builder: (context) => SignUp()));
            },
          child: const Padding(

            padding: EdgeInsets.all(8.0),
            child: Text(
              "SignUp",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        )
      ],
    ),
  );
}