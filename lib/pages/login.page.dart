import 'package:flutter/material.dart';
import 'package:shooping/enter_exit_router.dart';
import 'package:shooping/pages/home.page.dart';
import 'package:shooping/pages/signup.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 40),
        child: Column(
          children: [
            Container(
              height: 380,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                new BoxShadow(
                    color: Colors.black12,
                    offset: new Offset(1, 2),
                    blurRadius: 5,
                    spreadRadius: 2)
              ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Welcome",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500)),
                            Text(
                              "Sign in to continue",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => SignupPage()));
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.green[700],
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      // autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                    TextFormField(
                      // autofocus: true,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                          )),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: TextButton(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(EnterExitRoute(
                              exitPage: this, enterPage: HomePage()));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16, bottom: 15),
              child: Text(
                "- OR -",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    child: Image.asset(
                      "assets/facebook.png",
                      // height: 40,
                      // width: 40,
                    ),
                  ),
                  Text("Sign in with Facebook")
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    child: Image.asset(
                      "assets/google.png",
                      // height: 40,
                      // width: 40,
                    ),
                  ),
                  Text("Sign in with Google")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
