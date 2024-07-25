import 'package:codes_thinkers/res/components/widgets/text.dart';
import 'package:codes_thinkers/res/const/appconst.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final IconData? icon;
  final IconData? suffixicon;
  final String title;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.icon,
    this.suffixicon,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        commonText(title: title, size: 16.0, color: primaryColors),
        const SizedBox(
          height: 07,
        ),
        TextFormField(
          // autofocus: true,
          controller: controller,
          decoration: InputDecoration(
            isDense: true,
            suffixIcon: suffixicon != null ? Icon(suffixicon) : null,
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                color: primaryColors,
              ),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColors,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
            hintText: hintText,
            prefixIcon: icon != null ? Icon(icon) : null,
            // errorText: validator != null ? validator!(controller.text) : null,
          ),
          validator: validator,
        ),
      ],
    );
  }
}
