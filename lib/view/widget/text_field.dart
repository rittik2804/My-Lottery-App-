// ignore_for_file: empty_catches, body_might_complete_normally_nullable

import 'package:fatafat_lottery/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class text_field extends StatefulWidget {
  @override
  State<text_field> createState() => _text_fieldState();
}

class _text_fieldState extends State<text_field> {
  var enteredAmount = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: TextFormField(
          scrollPadding: EdgeInsets.only(bottom: 0),
          obscureText: false,
          decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                // borderRadius: BorderRadius.circular(25.0)
              ),
              labelText: "Enter Amount",
              border: OutlineInputBorder()),
          keyboardType: TextInputType.number,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: textcolor),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          textInputAction: TextInputAction.done,
          validator: (value) {
            try {
              if (int.parse(value!) < 20) {
                return 'Enter Amount of greater than 20';
              } else {
                return null;
              }
            } catch (e) {}
          },
          onSaved: (value) => setState(() => enteredAmount = value!)),
    );
  }
}

class bet_button extends StatelessWidget {
  const bet_button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    bet_function() {
     
    }

    return Container();
  }
}


// Widget enterAmount_field() => TextFormField(
  
//       keyboardType: TextInputType.number,
//       textInputAction: TextInputAction.done,
//       decoration: const InputDecoration(
//         labelText: 'Enter Amount',
//         border: OutlineInputBorder(),
//       ),
//     );
