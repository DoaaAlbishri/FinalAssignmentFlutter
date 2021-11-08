import 'package:final_aasignment/HomePage.dart';
import 'package:final_aasignment/Login.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Final Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUp(title: 'Final Assignment'),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Route route = MaterialPageRoute(builder: (context) => HomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 28.0
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email"
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password"
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return Login();
                            }
                            ));
                      },
                      child: Text("Login"),
                    )
                  ],
                ),
                const Text(
                  'Name',
                  style: TextStyle(
                      fontSize: 18.0
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "First Name"
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Last Name"
                  ),
                ),
                SizedBox(height: 20,),
                const Text(
                  'Address',
                  style: TextStyle(
                      fontSize: 18.0
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Street"
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Apt #"
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "State and Zip Code"
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, route);

                  },
                  child: Text("Sign Up"),
                )
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}