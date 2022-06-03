
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/init/view/base/base_stateless.dart';

class GeneralTextField extends BaseStateless {
  void Function(String)? onChanged;

  GeneralTextField({
    required this.onChanged,
    required this.controller,
  }) : super();

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final double h = dynamicHeight(context: context, val: 1);
    return SizedBox(
      height: h * 0.05,
      child: TextField(
        // textAlign: TextAlign.center,
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          hintText: "Search",
          filled: true,
          fillColor: const Color(0xff767680).withOpacity(0.12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: Colors.black,
            size: 16,
          ),
        ),
      ),
    );
  }
}


class GeneralTextField1 extends StatefulWidget {
  final String? initialValue;
  final TextInputType? inputType;
  final double? height;
  final TextEditingController controller;
  final bool isObscure;

  const GeneralTextField1({
    Key? key,
    this.initialValue,
    this.inputType,
    this.height,
    required this.controller,
    this.isObscure = false,
  }) : super(key: key);

  @override
  State<GeneralTextField1> createState() => _GeneralTextFieldState();
}

class _GeneralTextFieldState extends State<GeneralTextField1> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: TextFormField(
        initialValue: widget.initialValue,
        controller: widget.controller,
        style: const TextStyle(color: Colors.black, fontSize: 14),
        maxLines: 1,
        textAlign: TextAlign.start,
        obscureText: _passwordVisible,
        keyboardType: widget.inputType,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.black),
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            icon: NewWidget(widget: widget, passwordVisible: _passwordVisible),
            onPressed: () {
              if (widget.isObscure == true) {
                setState(() => _passwordVisible = !_passwordVisible);
              }
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

//
//

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.widget,
    required bool passwordVisible,
  })  : _passwordVisible = passwordVisible,
        super(key: key);

  final GeneralTextField1 widget;
  final bool _passwordVisible;

  @override
  Widget build(BuildContext context) {
    return Icon(
      widget.isObscure
          ? _passwordVisible
              ? Icons.visibility_off
              : Icons.visibility
          : null,
      color: Theme.of(context).primaryColorDark,
    );
  }
}
