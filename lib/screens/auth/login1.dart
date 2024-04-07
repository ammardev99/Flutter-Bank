import 'package:flutter/material.dart';

class Login1 extends StatelessWidget {
  const Login1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              // main content column
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                title("WELLCOM!"),
                sizebox(10),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: grey,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.black.withOpacity(0.15),
                        ),
                      ]),
                  // iner box column
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                          onChanged: (value) {},
                          decoration: _inputDecoration("Email", Icons.mail)),
                      sizebox(20),
                      TextField(
                          onChanged: (value) {},
                          decoration: _inputDecoration("Password", Icons.lock)),
                      sizebox(5),
                      InkWell(
                        onTap: () {},
                        hoverColor: primary,
                        focusColor: primary,
                        child: info("\t\t Forgot Password?"),
                      ),
                      sizebox(20),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: heading("Sign in", Colors.white))),
                      ),
                      sizebox(10),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: primary,
                                )),
                            child: Center(child: heading("Register", primary))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

Color primary = const Color(0xFF7269A2);
Color grey = const Color(0xFFF6F6F6);
Color secondary = const Color(0xFF9C9C9C);

Widget heading(String text, Color color) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.bold),
  );
}

Widget info(String text) {
  return Text(
    text,
    style: TextStyle(color: secondary, fontWeight: FontWeight.w500),
  );
}

Widget title(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: primary),
  );
}

Widget sizebox(double w, [double? h]) {
  return SizedBox(
    width: w,
    height: h ?? w,
  );
}

InputDecoration _inputDecoration(String text, IconData icon) {
  return InputDecoration(
      contentPadding: const EdgeInsets.all(0),
      prefixIcon: Icon(
        icon,
        color: primary,
      ),
      hintText: text,
      hintStyle: TextStyle(color: secondary, fontWeight: FontWeight.w300),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)));
}
