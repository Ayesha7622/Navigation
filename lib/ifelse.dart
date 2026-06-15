import 'package:flutter/material.dart';
import 'package:navigate/ifnavi.dart';
import 'package:navigate/navi.dart';

class IfLogin extends StatefulWidget {
  const IfLogin({super.key});

  @override
  State<IfLogin> createState() => _IfLoginState();
}

class _IfLoginState extends State<IfLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // relational operators----

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 62, 89),
      appBar: AppBar(
        leading: Icon(
          Icons.login,
          size: 30,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 71, 105, 135),
        title: Text(
          'Login Screen',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(children: [
        // Center(
        //   child: FloatingActionButton(
        //     onPressed: () {
        //       Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => Login()));
        //     },
        //   ),
        // ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 30),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: emailController,
                style: TextStyle(color: const Color.fromARGB(255, 96, 84, 84)),
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: "Enter Email:",
                  hintStyle:
                      TextStyle(color: const Color.fromARGB(255, 21, 21, 21)),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 30),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordController,
                style: TextStyle(color: const Color.fromARGB(255, 105, 94, 94)),
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: "Enter Password:",
                  hintStyle:
                      TextStyle(color: const Color.fromARGB(255, 18, 17, 17)),
                ),
              ),
            ),
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            String email = emailController.text;
            String password = passwordController.text;
            if (email == "aishh@gmail.com") // outer if--true
            {
              if (password == "75663") // inner if--true
              {
                // welcome
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Navig()));
              } else {
                print('Wrong password');
              }
            } else {
              print('wrong email');
            }
            // if, if else, if else if, nested if else, switch
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => navigation()));

            Text(
              'Login',
            );
          },
          child: Text('Login'),
        )
      ]),
    );
  }
}
