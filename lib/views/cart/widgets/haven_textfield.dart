import 'package:flutter/material.dart';
import 'package:haven/utils/constants/colors.dart';
import 'package:haven/utils/device/device_fn.dart';

class HavenTextField extends StatelessWidget {
	final TextEditingController controller;
  final String hintText;
  final bool obscureText;
	final TextInputType keyboardType;
	final Widget? suffixIcon;
	final VoidCallback? onTap;
	final Widget? prefixIcon;
	final String? Function(String?)? validator;
	final FocusNode? focusNode;
	final String? errorMsg;
	final String? Function(String?)? onChanged;

	const HavenTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
		required this.keyboardType,
		this.suffixIcon,
		this.onTap,
		this.prefixIcon,
		this.validator,
		this.focusNode,
		this.errorMsg,
		this.onChanged
  });
	
	@override
	Widget build(BuildContext context) {
		return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obscureText,
			keyboardType: keyboardType,
			focusNode: focusNode,
			onTap: onTap,
			textInputAction: TextInputAction.next,
			onChanged: onChanged,
      cursorColor: HavenDeviceHelpers.isDarkMode(context) ? HavenColors.cardDay : HavenColors.cardNight,
      style: Theme.of(context).textTheme.labelLarge,
      decoration: InputDecoration(
        focusColor: Theme.of(context).colorScheme.onSurface,
				suffixIcon: suffixIcon,
				prefixIcon: prefixIcon,
				enabledBorder: OutlineInputBorder(
					borderRadius: BorderRadius.circular(17),
					borderSide: BorderSide(color: HavenColors.lightGrey),
				),
				focusedBorder: OutlineInputBorder(
					borderRadius: BorderRadius.circular(17),
					borderSide: BorderSide(color: HavenColors.darkGrey),
				),
				fillColor: Colors.transparent,
				filled: false,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelLarge?.copyWith(color: HavenColors.darkGrey),
				errorText: errorMsg,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
					borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
					borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
        ),
			),
    );
	}
}