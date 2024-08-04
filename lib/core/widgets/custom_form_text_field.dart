import 'package:fixit/core/utils/constant.dart';
import 'package:fixit/core/utils/styles.dart';
import 'package:fixit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.onChanged,
    required this.hint,
    required this.isLast,
    this.controller,
    required this.title,
    required this.obscure,
    this.readOnly,
  });

  final String hint;
  final bool obscure;
  final String title;
  final bool isLast;
  final bool? readOnly;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        TextFormField(
          cursorColor: kPrimaryColor,
          readOnly: widget.readOnly ?? false,
          controller: widget.controller,
          validator: (data) {
            if (data!.isEmpty) {
              return S.of(context).thisFieldIsRequired;
            }
            if (!widget.obscure && !_isEmail(data)) {
              return S.of(context).pleaseEnterValidEmail;
            }
            return null;
          },
          onChanged: widget.onChanged,
          obscureText: widget.obscure && showPassword,
          textInputAction:
              widget.isLast ? TextInputAction.done : TextInputAction.next,
          keyboardType:
              widget.obscure ? TextInputType.text : TextInputType.emailAddress,
          inputFormatters: widget.obscure
              ? []
              : [
                  FilteringTextInputFormatter.allow(
                    RegExp(
                      r"[a-zA-Z0-9@._-]",
                    ),
                  ),
                ],
          decoration: InputDecoration(
            hoverColor: kPrimaryColor,
            fillColor: kPrimaryColor,
            focusColor: kPrimaryColor,
            suffixIcon: widget.obscure
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    child: Icon(
                      size: 24.h,
                      color: showPassword ? Colors.grey : kPrimaryColor,
                      showPassword ? Icons.visibility : Icons.visibility_off,
                    ),
                  )
                : null,
            contentPadding: EdgeInsetsDirectional.only(
                top: 18.h, bottom: 18.h, start: 18.w),
            hintText: widget.hint,
            hintStyle: Styles.textStyle14,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: kPrimaryColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: kPrimaryColor,
                width: 2.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  bool _isEmail(String input) {
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );
    return emailRegex.hasMatch(input);
  }
}
