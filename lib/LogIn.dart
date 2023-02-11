// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:login_and_regester_page/main.dart';
import 'package:login_and_regester_page/regester.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  bool obscure = true;
  static var icon = Icons.visibility_off;

  void regester(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return const Regester_page();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: MainColor.whiteColor,
          elevation: double.infinity,
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  const [
                      Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Login Now To Brows Our Hot Offers",
                        style: TextStyle(
                            color: MainColor.blackColor.withOpacity(.6),
                            fontSize: 17,
                            fontFamily: 'ubuntu'),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 226, 223, 223)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            labelText: "Email",
                            labelStyle: const TextStyle(fontSize: 20),
                            prefixIcon: const Icon(Icons.email_outlined),
                            //label: Text("Name",style: TextStyle(fontSize: 20),),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 226, 223, 223)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: const Icon(Icons.lock_outline),
                            labelText: "Password",
                            labelStyle: const TextStyle(fontSize: 20),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscure = !obscure;
                                  icon == Icons.visibility
                                      ? icon = Icons.visibility_off
                                      : icon = Icons.visibility;
                                });
                              },
                              icon: Icon(icon),
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: obscure,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't Have Acount ? ",
                            style: TextStyle(fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () => regester(context),
                            child: const Text("Regester",
                                style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.underline)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
