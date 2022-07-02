import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  final void Function(
      {required String email,
      required String pass,
      required bool isLogedin,
      required String userName,
      required BuildContext ctx}) submit;
  bool isLoading;

  AuthForm({Key? key, required this.submit, required this.isLoading})
      : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _email = "";

  String _pass = "";

  String _userName = "";

  bool _isLogedin = true;

  void _submit() {
    final bool isValidat = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValidat == true) {
      _formKey.currentState!.save();
      widget.submit(
        email: _email.trim(),
        ctx: context,
        isLogedin: _isLogedin,
        pass: _pass.trim(),
        userName: _userName.trim(),
      );

      debugPrint(_email);
      debugPrint(_userName);
      debugPrint(_pass);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Form(
                  key: _formKey,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                              key: const ValueKey("email"),
                              validator: (value) {
                                if (value == null || !value.contains('@')) {
                                  return 'Invalid email!';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  labelText: 'EMail_Address'),
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (value) => _email = value!),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Password'),
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.length < 5) {
                                return 'invalid Password';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _pass = value!;
                            },
                          ),
                          if (!_isLogedin)
                            TextFormField(
                              key: const ValueKey("user"),
                              validator: (value) {
                                if (value == null || value.length < 4) {
                                  return 'invalid userName ';
                                }
                                return null;
                              },
                              onSaved: (value) => _userName = value!,
                              decoration:
                                  const InputDecoration(labelText: 'User_Name'),
                            ),
                          ElevatedButton(
                            child: Text(_isLogedin ? 'LOGIN' : 'SIGN UP'),
                            onPressed: _submit,
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).primaryColor),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                textStyle: MaterialStateProperty.all(TextStyle(
                                  color: Theme.of(context)
                                      .primaryTextTheme
                                      .button
                                      ?.color,
                                ))),
                          ),
                          TextButton(
                            child: Text(!_isLogedin
                                ? 'Not have An Account LogIn'
                                : 'Already have An Account Sign Up'),
                            onPressed: () {
                              setState(() {
                                _isLogedin = !_isLogedin;
                              });
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                textStyle: MaterialStateProperty.all(
                                    TextStyle(color: Colors.green.shade900))),
                          ),
                        ],
                      )),
                ),


    );
  }
}
