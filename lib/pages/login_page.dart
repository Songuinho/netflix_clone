import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          title: const Image(
            image: AssetImage("assets/images/logo.png"),
            height: 65,
          ),
          centerTitle: true,
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Help',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        labelText: "Email address",
                        filled: true,
                        fillColor: const Color(0xFF7F7171),
                        labelStyle: const TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        )),
                    style: const TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter an email";
                      } else if (!value.contains("@")) {
                        return "Please enter a valid email";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: passwordController,
                    obscureText: isObscureText,
                    decoration: InputDecoration(
                      labelText: "Password",
                      filled: true,
                      fillColor: const Color(0xFF7F7171),
                      labelStyle: const TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        icon: Icon(isObscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                        color: Colors.white,
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // Navigator.pushNamed(context, '/home');
                        // print(emailController.text);
                        // print(passwordController.text);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    child: const Text(
                      "Sing in",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "or",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7F7171),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Sign ia protected by Google reCAPTCHA to ensure you are not a bot . Learn more ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ));
  }
}
