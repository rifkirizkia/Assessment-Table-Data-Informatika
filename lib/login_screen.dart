import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'constant/r.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    bool isVisible = false;
class _LoginScreenState extends State<LoginScreen> {
    void toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
    print("hasil : " + isVisible.toString());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              "HATOCA",
              style: TextStyle(
                  fontSize: 36,
                  color: R.colors.primary,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Email",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
  width: double.infinity,
  height: 50,
  child: TextField(
    controller: passController,
    obscureText: !isVisible, // Ini akan menyembunyikan/menampilkan teks tersembunyi
    decoration: InputDecoration(
      fillColor: Colors.white,
      hintText: "Password",
      suffixIcon: IconButton(
        onPressed:
          toggleVisibility,
        icon: Icon(
          isVisible ? Icons.visibility : Icons.visibility_off,
        ),
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    ),
  ),
),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password",
                      style: TextStyle(
                        color: R.colors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: R.colors.primary,
                      )),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      onPressed: (() {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                              (route) => false,
                        );
                      }),
                      child: const Text('Login'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(R.colors.primary),
                      ),
                    )),
                InkWell(
                  onTap: (() {}),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: R.colors.primary),
                    child: const Icon(
                      Icons.fingerprint,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an accoun?"),
                TextButton(
                    onPressed: (() {}),
                    child: Text("Sign Up",
                        style: TextStyle(
                          color: R.colors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: R.colors.primary,
                        )))
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      )),
    );
  }
}
