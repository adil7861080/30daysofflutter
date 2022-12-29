import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0, child: Text("Welcome $name")),
            SizedBox(height: 20.0, child: Text("to")),
            Text(
              "Adil's App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Username",
                      labelText: "Username or Email or Phone Number",
                    ),
                    onChanged: (((value) {
                      name = value;
                      setState(() {});
                    })),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: changeButton ? 50 : 150,
                      width: 50,
                      color: Colors.deepPurple,
                      child: changeButton
                          ? Icon(
                              icon.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        shape:
                            changeButton ? BoxShape.circle : BoxShape.rectangle,
                        // borderRadius: BorderRadius.circular( changeButton?20 : 10),
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   child: Text("login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, 'MyRoutes.homeRoute');
                  //   },
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
