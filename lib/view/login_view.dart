import 'package:flutter/material.dart';

import '../theme/color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0, 1],
            colors: [
              dark ? CustomAppTheme().gbgPurpleDark : CustomAppTheme().gbgPurple,
              dark ? CustomAppTheme().gbgBlueDark : CustomAppTheme().gbgBlue,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text(
                        'Image',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                     const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                          hintText: 'username or email address',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: '*******',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: CustomAppTheme().gbgPurple,
                        ),
                        onPressed: (){},
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                  },
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                const Text('New User? Create Account'),
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}