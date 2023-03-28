import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:way/style/colors.dart';

class InputField extends StatelessWidget {
  final String? initialValue;
  final String labelText;
  final String hintText;
  final bool isEnabled;
  final int minLines;
  final int maxLines;
  final bool isBgTransperant;
  final bool obscureText;
  final double? inputfontSize;
  final double hintfontSize;
  final double labelfontSize;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final MaskTextInputFormatter? formatter;
  final String? Function(String?)? validator;
  const InputField(
      {super.key,
      this.minLines = 1,
      this.isBgTransperant = false,
      this.inputfontSize,
      this.hintfontSize = 16,
      this.labelfontSize = 16,
      this.obscureText = false,
      this.maxLines = 1,
      this.initialValue,
      this.keyboardType = TextInputType.text,
      required this.labelText,
      this.hintText = "",
      this.isEnabled = true,
      this.validator,
      this.controller,
      this.formatter});

  @override
  Widget build(BuildContext context) {
    bool isFormatterProvided = formatter != null;

    return TextFormField(
      obscureText: obscureText,
      minLines: minLines,
      maxLines: maxLines,
      controller: controller,
      inputFormatters: isFormatterProvided ? [formatter!] : [],
      initialValue: initialValue,
      enabled: isEnabled,
      style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: isEnabled ? CustomColors.textBlack : CustomColors.textGrey,
          fontSize: inputfontSize),
      cursorHeight: 24,
      keyboardType: keyboardType,
      cursorColor: CustomColors.labelGrey,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor:
            isBgTransperant ? Colors.transparent : CustomColors.shadowGrey,
        // fillColor: CustomColors.shadowGrey,
        hintText: hintText,
        hintStyle:
            TextStyle(color: CustomColors.labelGrey, fontSize: hintfontSize),
        labelText: labelText,
        labelStyle:
            TextStyle(color: CustomColors.labelGrey, fontSize: labelfontSize),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: CustomColors.borderGrey,
            )),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: CustomColors.borderGrey,
            )),
        disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: CustomColors.disableGrey,
            )),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: CustomColors.borderGrey,
            )),
      ),
    );
  }
}
