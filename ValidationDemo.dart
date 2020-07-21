import 'package:flutter/material.dart';

class ValidatorDemo extends StatefulWidget {
  @override
  _ValidatorDemoState createState() => _ValidatorDemoState();
}

class _ValidatorDemoState extends State<ValidatorDemo> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[
            // accept name
            TextFormField(
              decoration: InputDecoration(hintText: 'Data'),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Name is required';
                }

                // check fo digits
                // String pattern = r'[0-9]';
                // RegExp regExp = RegExp(pattern);

                // if(regExp.hasMatch(value)){
                //   return 'Name cannot have digit(s)';
                // }

                

                return null;
              },
            ),
            SizedBox(height: 16),

            RaisedButton(
              child: Text('Send Data'),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  //logic
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
