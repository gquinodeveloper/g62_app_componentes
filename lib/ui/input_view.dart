import 'package:flutter/material.dart';

class InputView extends StatelessWidget {
  const InputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Inputs"),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 20.0,
          left: 15.0,
          right: 15.0,
        ),
        child: ListView(
          children: [
            _inputText(),
            SizedBox(height: 20.0),
            _inputTextPassword(),
            SizedBox(height: 20.0),
            _inputTextPhone(),
            SizedBox(height: 20.0),
            _inputTextEmail(),
            SizedBox(height: 20.0),
            _inputTextPhone(),
            SizedBox(height: 20.0),
            _inputTextEmail(),
          ],
        ),
      ),
    );
  }

  Widget _inputText() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Please enter your name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
      onChanged: (value) {
        print("value: $value");
      },
    );
  }

  Widget _inputTextPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Please enter your password",
        suffixIcon: const Icon(Icons.remove_red_eye),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    );
  }

  Widget _inputTextPhone() {
    return TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: "Phone",
        hintText: "Please enter your phone",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    );
  }

  Widget _inputTextEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Please enter your Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    );
  }
}
