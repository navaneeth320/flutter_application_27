import 'package:flutter/material.dart';

final _usernamecontroller = TextEditingController();
final _passwordcontroller = TextEditingController();

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                controller: _usernamecontroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "User name"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    checklogin(context);
                  },
                  icon: Icon(Icons.check),
                  label: Text(
                    "Login",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void checklogin(BuildContext ctx) {
    final _username = _usernamecontroller.text;
    final _password = _passwordcontroller.text;
    if (_username == _password) {
      //Go to Home
    } else {
      final _errorMessage = 'username Password doesnot match_';

      //Snackbar
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text("_error message")));
      //Alert Dialog
      showDialog(
          context: ctx,
          builder: (ctx) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("_errorMessage"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(ctx).pop();
                }, child: Text("close"))
              ],
            );



          });
      //Show text
    }
  }
}
