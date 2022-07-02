import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField(
      {Key? key,
      required this.label,
        required this.controller,
      required this.hint,
      this.onSaved,
      this.validator,
      this.prefix})
      : super(key: key);

  final String label;
  Widget? prefix;
  final String hint;
   TextEditingController controller;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefix: prefix,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.grey.shade600),
          ),
          label: Text(label),
          hintText: hint,
        ),
        onSaved: onSaved,
        validator: validator,
      ),
    );
  }
}
