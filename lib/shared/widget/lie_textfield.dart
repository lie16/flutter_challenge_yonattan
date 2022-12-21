import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LieTextField extends StatefulWidget {
  final String label;
  final String? value;
  final String? hint;
  final String? Function(String?)? validator;
  final bool obscure;
  final Function(String) onChanged;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool? expands;
  final TextStyle? labelStyle;

  const LieTextField({
    Key? key,
    required this.label,
    this.value,
    this.validator,
    this.hint,
    required this.onChanged,
    this.obscure = false,
    this.suffixIcon = Icons.text_format,
    this.keyboardType,
    this.minLines,
    this.maxLines,
    this.inputFormatters,
    this.maxLength,
    this.expands = false,
    this.labelStyle,
  }) : super(key: key);

  @override
  State<LieTextField> createState() => _LieTextFieldState();
}

class _LieTextFieldState extends State<LieTextField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.value,
      validator: widget.validator,
      maxLength: widget.maxLength,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      obscureText: widget.obscure,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      // expands: widget.expands!,
      decoration: InputDecoration(
        labelText: widget.label,
        // labelStyle: const TextStyle(
        //   color: Colors.blueGrey,
        // ),
        labelStyle: widget.labelStyle,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueGrey,
          ),
        ),
        helperText: widget.hint,
      ),
      onChanged: widget.onChanged,
    );
  }
}
