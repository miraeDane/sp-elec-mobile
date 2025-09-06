import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:travel_news_app/Screens/register_option.dart';
import 'package:travel_news_app/Widgets/bottom_nav_bar.dart';
import '../Widgets/class_widgets.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeFirebase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            body: const LoginPage(),
            // bottomNavigationBar: BottomNavBar(),
            );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("User not found. Try creating account");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(decoration: appBartheme),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Image(
                      height: 200,
                      width: 200,
                      image: AssetImage('assets/VehiCON_Logo.png')),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 29),
                  child: const Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: Color(0xffDE6113),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: textfield('Username/Email', Icons.person_outline,
                        false, _emailController)),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: textfield('Password', Icons.lock_outline, true,
                        _passwordController)),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(left: 30),
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffDE6113),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: appBartheme,
                    child: TextButton(
                        onPressed: () async {
                          User? user = await loginUsingEmailPassword(
                              email: _emailController.text,
                              password: _passwordController.text,
                              context: context);
                          print(user);
                          if (user != null) {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                builder: (context) => 
                                const BottomNavBar(),
                                ),
                              );
                          }
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                  ),  
                ),
                const SizedBox(
                  height: 15,
                ),
                signupOption(),
              ],
            ),
          ),
        ));
  }

  Row signupOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account? ", style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Register()));
          },
          child: const Text('Register', 
          style: TextStyle(
              fontSize: 15,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w400,
              color: Color(0xffDE6113),
           )
          )
        )
      ],
    );
  }
}
