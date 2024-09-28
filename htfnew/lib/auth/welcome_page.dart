import 'package:flutter/material.dart';
import 'package:htfnew/pages/login_page.dart';
import 'package:htfnew/pages/register_page.dart';


// Assuming you have a HomePage widget to navigate after login

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.favorite, // Adjust the icon to fit your branding
                size: 80,
                color: Color.fromARGB(255, 160, 30, 189),
              ),
              const SizedBox(height: 10),
              const Text(
                'Care Plus',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 160, 30, 189),
                ),
              ),
              const Text(
                'Your Personel'
                 ' Healthcare Partner',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 160, 30, 189),
              
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Revolutionary healthcare app ensuring accessible'
                ', efficient, and reliable medical consultations'
                ' anytime, anywhere.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage())), // Adjust navigation
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 160, 30, 189), // Text color
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: const Text('Log In'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                 onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const RegisterPage())), // Adjust navigation
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 160, 30, 189),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                  
                child: const Text('Sign Up'),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}





/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/register_page.dart';

class LoginOrRegister extends StatefulWidget{
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() =>_LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister>{
  // initially ,show login page
  bool showLoginPage = true;
  // toggle between login and register page
  void togglePages(){
    setState( (){
      showLoginPage=!showLoginPage;
    }
    );
  }

  @override
  Widget build(BuildContext context){
    if (showLoginPage){
      return LoginPage(onTap: togglePages);
    }
    else{
      return RegisterPage(onTap: togglePages);
    }
  }
}*/