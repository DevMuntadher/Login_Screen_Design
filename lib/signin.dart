import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool passwordVisible = true;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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
              "Create Your",
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Account!",
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
                            hintText: "Enter Your First Name",
                            labelText: "First Name",
                            labelStyle: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 64, 62, 102))),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Your Last Name",
                            labelText: "Last Name",
                            labelStyle: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 64, 62, 102))),
                        keyboardType: TextInputType.name,
                      ),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: TextFormField(
                        obscureText: passwordVisible,
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.visibility),
                            hintText: "Confirm Your Password",
                            labelText: "Confirm Password",
                            labelStyle: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 64, 62, 102))),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ),
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
                      height: 115,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: const Text(
                        " Have Account ?",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("login");
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Spacer()
            
        ],
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
