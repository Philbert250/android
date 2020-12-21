import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import 'package:vonline/views/home_view.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                  width: 100,
                  padding: EdgeInsets.fromLTRB(20, 70, 20, 30),
                  child: Image(
                    image: AssetImage('./asset/one.png'),
                  )),
            ),
            Row(
              children: [
                CountryCodePicker(
                  onChanged: print,
                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  initialSelection: 'IT',
                  favorite: ['+39', 'FR'],
                  showFlagDialog: true,
                  comparator: (a, b) => b.name.compareTo(a.name),
                  onInit: (code) =>
                      print("on init ${(code.name)} ${code.dialCode}"),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                  ),
                )),
                RaisedButton(onPressed: () {
                  Get.to(HomeView());
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
