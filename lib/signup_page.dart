import 'package:flutter/material.dart';

Column Textfield_Signup(String text, {int n = 1, bool choice = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 7.0, bottom: 6.0),
        child: Text(text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            )),
      ),
      TextField(
          minLines: 1,
          maxLines: n,
          obscureText: choice,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
          ))
    ],
  );
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  int value_toggle = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
                child: Image.asset('Images/2020_NHHS-cfgnh-Lockup.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10),
            child: Textfield_Signup("First Name"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Textfield_Signup("Last Name"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Textfield_Signup("Email Address"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Textfield_Signup("Gender"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Text("Are you Pregnant?",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Radio(
                        value: 0,
                        groupValue: value_toggle,
                        onChanged: (groupValue) {
                          setState(() {
                            value_toggle = 0;
                          });
                        }),
                    Text(
                      'Yes',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Radio(
                        value: 1,
                        groupValue: value_toggle,
                        onChanged: (groupValue) {
                          setState(() {
                            value_toggle = 1;
                          });
                        }),
                    Text(
                      'No',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Textfield_Signup("City of Residence", n: 3),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Textfield_Signup("Create Your Password", choice: true),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
            child: TextButton(onPressed: null, child: Text("Sign Up"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.yellow,
              elevation: 2,
              minimumSize: Size(30,30),
              textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30
              )
              
            ),),
          )
        ]),
      ),
    ));
  }
}
