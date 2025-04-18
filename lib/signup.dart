import 'package:flutter/material.dart';
import 'package:navigate/navi.dart';
import 'package:navigate/navigat.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController phonenoController = TextEditingController();
  TextEditingController cnicController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 93, 60, 60),
        appBar: AppBar(
          // leading: Icon(
          //   Icons.,
          //   size: 40,
          //   color: Colors.white,
          // ),
          backgroundColor: const Color.fromARGB(255, 95, 18, 3),
          title: Text(
            'SignUp Screen',
            style: TextStyle(
                color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            // Center(child: FloatingActionButton(
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => navigation()));
            //   },
            // )),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: firstController,
                    style:
                        TextStyle(color: const Color.fromARGB(255, 96, 84, 84)),
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: "Enter First_Name:",
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 21, 21, 21)),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: lastController,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 105, 94, 94)),
                    decoration: InputDecoration(
                      icon: Icon(Icons.person_3_outlined),
                      hintText: "Enter Last_Name:",
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 18, 17, 17)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: phonenoController,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 105, 94, 94)),
                    decoration: InputDecoration(
                      icon: Icon(Icons.phone_in_talk_outlined),
                      hintText: "Enter Phone_No:",
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 18, 17, 17)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: cnicController,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 105, 94, 94)),
                    decoration: InputDecoration(
                      icon: Icon(Icons.message),
                      hintText: "Enter CNIC:",
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 18, 17, 17)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: emailController,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 105, 94, 94)),
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: "Enter Email:",
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 18, 17, 17)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 88, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: passwordController,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 105, 94, 94)),
                    decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: "Password:",
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 18, 17, 17)),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Navigat()));
                },
                child: Text(
                  'SignUp',
                ),
              ),
            )
          ]),
        ));
  }
}
