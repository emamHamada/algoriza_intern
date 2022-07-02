import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../components/button.dart';
import '../components/constats.dart';
import '../components/textField.dart';
import 'login/login.dart';
class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  bool flag = true;
  bool flag_forget_pass = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phonController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.blue.shade900,
                        Colors.blue.shade900,
                        Colors.blue.shade800,
                        Colors.blue.shade700,
                        Colors.blue.shade600,
                        Colors.blue.shade500,
                        Colors.blue.shade400,
                        Colors.blue.shade300,
                        Colors.blue.shade200,
                        Colors.blue.shade100,
                      ],
                    ),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(65),
                        bottomLeft: Radius.circular(65))),
                // margin: const EdgeInsets.only(bottom: 30),
                child: Column(children: [
                  AnimatedContainer(
                    width: double.infinity,
                    height: flag ? MediaQuery.of(context).size.height * .7 : 0,
                    duration: const Duration(seconds: 1),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          flag_forget_pass
                              ? Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Form(
                                    key: _formKey,
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 30),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  // Get.to(() => SignUp());
                                                },
                                                child: const Text(
                                                  'Sign In ',
                                                  style: TextStyle(fontSize: 30),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  // Get.to(() => SignUp());
                                                },
                                                child: TextButton.icon(
                                                  icon: Icon(
                                                    Icons.help,
                                                    color: Colors.indigo.shade800,
                                                  ),
                                                  label: Text(
                                                    'help  ',
                                                    style: TextStyle(
                                                      color: Colors.indigo.shade800,
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 30),
                                        Container(
                                          padding: const EdgeInsets.all(5),
                                          child: IntlPhoneField(
                                            controller: phoneController,
                                            decoration: InputDecoration(
                                              labelText: 'Phone Number',
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: BorderSide(
                                                    color: Colors.grey.shade600),
                                              ),
                                            ),
                                            initialCountryCode: 'EG',
                                            onChanged: (phone) {
                                              // print(phone.completeNumber);
                                            },
                                            validator: (value) {
                                              if (value == null) {
                                                return 'pass  must not be empty';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                        MyButton(
                                          label: 'SIGN IN',
                                          backColor: Colors.lightBlue.shade300,
                                          onTap: () {
                                            _formKey.currentState?.save();
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
                                          label: 'SIGN IN with Google ',
                                          backColor: Colors.white,
                                          onTap: () {
                                            // _formKey.currentState?.save();
                                            if (_formKey.currentState!.validate()) {
                                              // controller.signInWithEmailAndPass();
                                            }
                                          },
                                        ),
                                        // buildregesterwords(context),
                                      ],
                                    ),
                                  ),
                                )
                              : Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 50,bottom: 30),
                                  child: Form(
                                    key: _formKey,
                                    child: Column(
                                      children: [
                                         Padding(
                                          padding: const EdgeInsets.only(bottom: 40.0,left: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:  [
                                              const Text(
                                                "Forget Password?",
                                                style: TextStyle(
                                                    color: Colors.white, fontSize: 30,),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  // Get.to(() => SignUp());
                                                },
                                                child: TextButton.icon(
                                                  icon: Icon(
                                                    Icons.help,
                                                    color: Colors.indigo.shade800,
                                                  ),
                                                  label: Text(
                                                    'help  ',
                                                    style: TextStyle(
                                                      color: Colors.indigo.shade800,
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              )

                                            ],
                                          ),
                                        ),
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
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        MyButton(
                                          label: 'Resset Password ',
                                          backColor: Colors.lightBlue.shade300,
                                          onTap: () {
                                            // _formKey.currentState?.save();
                                            if (_formKey.currentState!.validate()) {
                                              // controller.signInWithEmailAndPass();
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                          MyButton(
                            backColor: Colors.blue.shade50,
                            label: flag_forget_pass ? "Forget password" : "Back",
                            onTap: () {
                              setState(() {
                                flag_forget_pass = !flag_forget_pass;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        flag = !flag;
                      });
                    },
                    child: Container(
                        alignment: AlignmentDirectional.center,
                        height: flag ? 0 : MediaQuery.of(context).size.height * .2,
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.blue.shade900,
                          ),
                        )),
                  )
                ]),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(65),
                        topRight: Radius.circular(65))),
                // margin: const EdgeInsets.only(bottom: 30),
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            flag = !flag;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 15),
                          alignment: AlignmentDirectional.center,
                          color: Colors.transparent,
                          height:
                              flag ? MediaQuery.of(context).size.height * .2 : 0,
                          child: const Text(
                            "SIGN UP",
                            style: TextStyle(fontSize: 35),
                          ),
                        )),
                    AnimatedContainer(
                      width: double.infinity,
                      height: flag ? 0 : MediaQuery.of(context).size.height * .75,
                      duration: const Duration(seconds: 1),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Form(
                            key: _formKey1,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Get.to(() => SignUp());
                                        },
                                        child: const Text(
                                          'Sign Up ',
                                          style: TextStyle(fontSize: 30),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Get.to(() => SignUp());
                                        },
                                        child: TextButton.icon(
                                          icon: Icon(
                                            Icons.help,
                                            color: Colors.indigo.shade800,
                                          ),
                                          label: Text(
                                            'help  ',
                                            style: TextStyle(
                                              color: Colors.indigo.shade800,
                                            ),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                CustomTextFormField(
                                  label: 'Email',
                                  hint: 'example@gmail.com',
                                  controller: emailController,
                                  onSaved: (value) {
                                    // controller.pass = value;
                                  },
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'not correct Email !';
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
                                  padding: const EdgeInsets.all(5),
                                  child: IntlPhoneField(
                                    controller: phonController,
                                    decoration: InputDecoration(
                                      labelText: 'Phone Number',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                        borderSide:
                                            BorderSide(color: Colors.grey.shade600),
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
                                    if (_formKey1.currentState!.validate()) {
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
                                    if (_formKey1.currentState!.validate()) {
                                      // controller.signInWithEmailAndPass();
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
