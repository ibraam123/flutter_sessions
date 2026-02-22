import 'package:flutter/material.dart';

// TextField Widget Example
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.icon, required this.labelText, this.onChanged});
  final Icon icon;
  final String labelText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: icon,
        labelText: labelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),

      ),
      obscureText: false // Set to true for password fields to hide the input text
      ,
      onChanged: onChanged
      ,
      onSubmitted: (value) {
        // Handle text submission here
        print('Text submitted: $value');
      },
    );
  }
}

class CustomPasswordField extends CustomTextField {
  const CustomPasswordField({super.key, required super.icon, required super.labelText});
  final Icon eyeIcon = const Icon(Icons.visibility);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: icon,
          labelText: labelText,
          suffixIcon: eyeIcon,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),

        ),
        obscureText: true, // Set to true for password fields to hide the input text
        onChanged: (value) {
          // Handle text changes here
          print('Text changed: $value');
        }
        ,
        onSubmitted: (value) {
          // Handle text submission here
          print('Text submitted: $value');
        },
      ),
    );
  }
}

