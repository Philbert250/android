import 'package:flutter/material.dart';
import 'package:vonline/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'mazameza app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(

        //   title: Text(widget.title),
        // ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("Assets/vector2.png"),
              fit: BoxFit.contain,
            )),
            margin: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 0.0),
              child: Column(
                children: [
                  Center(
                    child: Text('Sign up',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),

                  Container(
                    child: Image(
                      image: AssetImage('Assets/login.png'),
                    ),
                  ),

                  const SizedBox(
                    height: 15.0,
                  ),

                  Container(
                      width: 320,
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Email/username',
                          prefixIcon: Icon(
                            Icons.person,
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.purple[100],
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide:
                                BorderSide(color: Colors.green, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            borderSide:
                                BorderSide(color: Colors.green, width: 2),
                          ),
                        ),
                      )),

                  Container(
                      width: 320,
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'password',
                          prefixIcon: Icon(
                            Icons.fingerprint,
                            color: Colors.purple[200],
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            borderSide:
                                BorderSide(color: Colors.green, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            borderSide:
                                BorderSide(color: Colors.green, width: 2),
                          ),
                        ),
                      )),

                  Container(
                    height: 60,
                    width: 310,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => Home()));
                        },
                      child: Text('Sign Up'),
                      shape: StadiumBorder(),
                      color: Colors.purple[300],
                      textColor: Colors.white,
                    ),
                  ),
                  
                  Container(
                      child: Row(
                    children: <Widget>[
                      Text('Does not have account?'),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          //signup screen
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  )),
                ],
              ),
            ),
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.

       
        );
  }


  // widget to be called

  
}
