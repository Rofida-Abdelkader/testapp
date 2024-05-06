import 'package:flutter/material.dart';

// ignore: camel_case_types
class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

// ignore: camel_case_types
class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          LoginScreen(),
        ]),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 932,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(5.00, -10.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF131313), Color(0xFF131313)],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 92,
                top: 68,
                child: SizedBox(
                  width: 613,
                  height: 1067,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 613,
                          height: 1067,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF131313), Color(0x00131313)],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 89.50,
                        top: 65.50,
                        child: Container(
                          width: 435,
                          height: 937,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Egypt Museum 1.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Text(
                      'Email',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Example@gmail.com',
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100.0),
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8),
                        ),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'At least 8 character',
                          hintStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100.0),
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.8),
                        ),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    // SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            // Forgot password functionality here
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Color(0xffBEA643),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(8),
                        backgroundColor: const Color(0xffBEA643),
                        minimumSize: const Size(370, 58),
                      ),
                      onPressed: () {
                        // Sign in functionality here
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    // SizedBox(height: 100.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Don't You have an account? ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to sign up screen
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xffBEA643),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        color: const Color(0xFF101010),
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    bottom: 12,
                                    left: 35,
                                    right: 35,
                                    top: 10,
                                  ),
                                  child: const Text(
                                    'Welcome Back 👋',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      height: 0.03,
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    bottom: 133,
                                    left: 36,
                                    right: 36,
                                  ),
                                  child: const Text(
                                    ' Your passport to history awaits ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                      letterSpacing: 0.13,
                                    ),
                                  ),
                                ),
                                // Positioned(
                                //   left: 35.50,
                                //   top: 70,
                                //   child: Container(
                                //     height: 70,
                                //     child: const Stack(
                                //       children: [
                                //         Positioned(
                                //           left: 5,
                                //           top: 10,
                                //           child: SizedBox(
                                //             width: 349,
                                //             height: 31.07,
                                //             child: Text(
                                //               'Welcome Back 👋',
                                //               style: TextStyle(
                                //                 color: Colors.white,
                                //                 fontSize: 30,
                                //                 fontFamily: 'Montserrat',
                                //                 fontWeight: FontWeight.w600,
                                //                 height: 0.03,
                                //                 letterSpacing: 0.30,
                                //               ),
                                //             ),
                                //           ),
                                //         ),
                                // Positioned(
                                //   left: 0.50,
                                //   top: 44.54,
                                //   child: SizedBox(
                                //     width: 333,
                                //     height: 13.46,
                                //     child: Text(
                                //       ' Your passport to history awaits ',
                                //       style: TextStyle(
                                //         color: Colors.white,
                                //         fontSize: 13,
                                //         fontFamily: 'Montserrat',
                                //         fontWeight: FontWeight.w400,
                                //         height: 0.08,
                                //         letterSpacing: 0.13,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                //       ],
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
