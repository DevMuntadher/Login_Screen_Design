import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool passwordVisible = true;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff2B124C),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("home");
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          backgroundColor: const Color(0xff2B124C),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Welcome",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                "LOGIN!",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
            Container(
              height: 50,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                width: screenWidth,
                height: screenHeight,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Your Email",
                            labelText: "Email",
                            labelStyle: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 64, 62, 102))),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: TextFormField(
                        obscureText: passwordVisible,
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.visibility),
                            hintText: "Enter Your Password",
                            labelText: "Password",
                            labelStyle: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 64, 62, 102))),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 20, right: 10),
                        alignment: Alignment.centerRight,
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot password ?",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 64, 62, 102),
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                      height: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: const Color.fromARGB(255, 64, 62, 102),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        minWidth: 320,
                        height: 60,
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      height: 250,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: const Text(
                        "Dont Have Account ?",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("signup");
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
