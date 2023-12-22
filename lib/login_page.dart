import 'homepage.dart';
import 'package:flutter/material.dart';
import 'signup.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passToggle = true;

  Future<void> login() async {
    // Proceed with signup
    final response = await http.post(
      Uri.parse('http://localhost/medina_CV/login.php'),
      body: {
        'username': _usernameController.text,
        'password': _passwordController.text,
      },
    );

    print(response.body);

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      // Display a message to the user based on the response from the server
      if (result['message'] == "Login successful") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(result['message']),
          ),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Firstpage(),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Username or password is incorrect'),
          ),
        );
      }
    } else {
      // Handle errors
      print('Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Color.fromARGB(255, 62, 10, 194),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                child: const Image(
                  image: AssetImage('images/icon.png'),
                  height: 100,
                  width: 100,
                ),
              ),
              TextFormField(
                style: const TextStyle(
                  fontFamily: 'RobotoMono',
                  color: Colors.white,
                ),
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Username';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: const TextStyle(
                  fontFamily: 'RobotoMono',
                  color: Colors.white,
                ),
                controller: _passwordController,
                obscureText: passToggle,
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'RobotoMono',
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                          passToggle ? Icons.visibility : Icons.visibility_off),
                    )),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (_passwordController.text.length < 6) {
                    return 'Password Length should be more than 6 characters';
                  } else if (!RegExp("").hasMatch(value)) {
                    return 'The password needs to be valid.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 186, 181, 205),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    login();
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 186, 181, 205),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 56, 54, 63),
    );
  }
}
