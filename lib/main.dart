import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DarkLightTheme();
  }
}

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({
    Key key,
  }) : super(key: key);

  @override
  _DarkLightThemeState createState() => _DarkLightThemeState();
}

ThemeData _lightTheme = ThemeData(
  accentColor: Colors.pink,
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary
  )
);

bool _light = true;

class _DarkLightThemeState extends State<DarkLightTheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _light ? _lightTheme : ThemeData(
      accentColor: Colors.red,
      brightness: Brightness.dark,
      primaryColor: const Color(0xff3a3a3a),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.amber,
        textTheme: ButtonTextTheme.accent,
        colorScheme: 
          Theme.of(context).colorScheme.copyWith(secondary: const Color(0xff464698))
      )
    ),
      // darkTheme: _darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Name",
                ),
              ),
              RaisedButton(
                child: Text("YOUNG PEOPLE HELP ME"),
                onPressed: (){
                  
                },
              ),
              Switch(value: _light, onChanged: (bool state){
                setState(() {
                  _light = state;
                });
              }),
            ],
          )
        ),
      ),
    );
  }
}
