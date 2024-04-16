import 'package:flutter/material.dart';
import 'package:food_ushur/Home.dart';
import 'package:food_ushur/model.dart';



void main() {
  // runApp(const MainApp());
    runApp(LoginApp());
}


class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ushur Food Order App'),
      ),
      body:
       Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'EmpId',
              ),
              obscureText: true,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Implement login functionality here
                String username = _usernameController.text;
                String password = _passwordController.text;
                // Here you can add validation and authentication logic
                print('Username: $username');
                print('Password: $password');
                 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomeView()),
  );

              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}



