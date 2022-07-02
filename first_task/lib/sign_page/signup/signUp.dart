import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../components/button.dart';
import '../../components/textField.dart';

import '../login/login.dart';

class SignUp extends StatelessWidget {


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController phonController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Get.to(() => SignUp());
                        },
                        child: const Text(
                          'Sign Up ',
                          style: TextStyle(fontSize: 35),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Get.to(() => SignUp());
                        },
                        child: GestureDetector(
                          child: const Text(
                            'help ! ',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                CustomTextFormField(
                  label: 'Email',
                  hint: 'example@gmail.com',
                  controller: emailController,
                  onSaved: (value) {
                    // controller.pass = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'pass  must not be empty';
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  controller: passwordController,
                  hint: '**************',
                  label: 'Password',
                  onSaved: (value) {
                    // controller.pass = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'pass  must not be empty';
                    }
                    return null;
                  },
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: IntlPhoneField(

                    controller: phonController,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.grey.shade600),
                      ),
                    ),
                    initialCountryCode: 'EG',
                    onChanged: (phone) {},
                  ),
                ),
                MyButton(
                  label: 'SIGN up',
                  backColor: Colors.lightBlue.shade300,
                  onTap: () {
                    // _formKey.currentState?.save();
                    if (_formKey.currentState!.validate()) {
                      // controller.signInWithEmailAndPass();
                    }
                  },
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                MyButton(
                  label: 'SIGN Up with Google ',
                  backColor: Colors.white,
                  onTap: () {
                    // _formKey.currentState?.save();
                    if (_formKey.currentState!.validate()) {
                      // controller.signInWithEmailAndPass();
                    }
                  },
                ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(" have an account ?"),
                  GestureDetector(
                    onTap: () {
                      Navigator
                          .of(context)
                          .push(MaterialPageRoute(builder: (context) => LogIn()));
                    },
                    child: const Padding(

                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "LogIn",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  )
                ],
              ),
            )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

