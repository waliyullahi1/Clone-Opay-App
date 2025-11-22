import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AccountInputField extends StatefulWidget {
  const AccountInputField({Key? key}) : super(key: key);

  @override
  _AccountInputFieldState createState() => _AccountInputFieldState();
}

class _AccountInputFieldState extends State<AccountInputField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    // refresh UI when focus changes
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isFocused = _focusNode.hasFocus;

    return TextField(
      focusNode: _focusNode,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
      ],
      decoration: InputDecoration(
        labelText: "Account Number",     // floating label
        floatingLabelStyle: TextStyle(
          color: isFocused ? Colors.blue : Colors.grey,
          fontSize: isFocused ? 16 : 14,
        ),

        hintText: 'Enter 10-digit account number',

        filled: true,
        fillColor: isFocused ? Colors.blue.withOpacity(0.08) : Colors.grey[100],

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey[300]!,
            width: 1,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 1.5,
          ),
        ),

        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 14),
      ),
    );
  }
}
