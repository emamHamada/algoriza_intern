import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../components/button.dart';
import '../../components/constats.dart';

class LogIn extends StatelessWidget {

  final GlobalKey _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();

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
                          'Sign In ',style: TextStyle(fontSize: 35),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Get.to(() => SignUp());
                        },
                        child:  Text(
                          'help ! ',style: TextStyle(color: Colors.blue.shade700),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: IntlPhoneField(

                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.grey.shade600),
                      ),
                    ),
                    initialCountryCode: 'EG',
                    onChanged: (phone) {
                      // print(phone.completeNumber);
                    },
                  ),
                ),
                MyButton(
                  label: 'SIGN IN',
                  backColor: Colors.lightBlue.shade300,
                  onTap: () {
                    // _formKey.currentState?.save();
                    // if (_formKey.currentState!.validate()) {
                    //   controller.signInWithEmailAndPass();
                    // }
                  },
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                MyButton(
                  label: 'SIGN IN with Google ',
                  backColor: Colors.white,
                  onTap: () {
                    // _formKey.currentState?.save();
                    // if (_formKey.currentState!.validate()) {
                    //   controller.signInWithEmailAndPass();
                    // }
                  },
                ),
                buildregesterwords(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
