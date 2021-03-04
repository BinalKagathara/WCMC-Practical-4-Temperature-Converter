import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController_c = TextEditingController();
  final myController_f = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '18IT045 : Practical 4',
          style: TextStyle(
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Fahrenheit'),
              onChanged: (f) {
                var deg_f = int.parse(f);
                var deg_c = (deg_f - 32) * (5 / 9);
                setState(() {
                  myController_c.text = deg_c.toString();
                });
              },
              controller: myController_f,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Celsius'),
              onChanged: (c) {
                var deg_c = int.parse(c);
                var deg_f = (9 / 5) * deg_c + 32;
                setState(() {
                  myController_f.text = deg_f.toString();
                });
              },
              controller: myController_c,
            ),
          ],
        ),
      ),
    );
  }
}
