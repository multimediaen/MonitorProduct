// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetForm extends StatelessWidget {
  const WidgetForm({
    Key? key,
    this.hint,
    this.suffixWidget,
    this.textEditingController,
  }) : super(key: key);

  final String? hint;
  final Widget? suffixWidget;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        hintText: hint,
        suffixIcon: suffixWidget,
      ),
    );
  }
}
