import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  final String hintText;
  final bool pass;
  final TextInputType textInputType;
  const Textfield({
    super.key,
    required this.hintText,
    this.pass = false,
    this.textInputType = TextInputType.text,
  });

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextField(
            keyboardType: widget.textInputType,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
              suffixIcon: widget.pass
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      icon: _isPasswordVisible
                          ? const Icon(
                              Icons.visibility,
                            )
                          : const Icon(
                              Icons.visibility_off,
                            ),
                    )
                  : null,
            ),
            obscureText: widget.pass ? !_isPasswordVisible : false,
          ),
        ),
      ),
    );
  }
}
