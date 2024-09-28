
import 'package:flutter/material.dart';
import 'package:htfnew/pages/set_password.dart';


  // Make sure this is your home or next page after login

class RegisterPage extends StatelessWidget {
  const RegisterPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),  // Ensures return to the previous page
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'New Account ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical:12),
                  
              ),

              Text(
                'Full Name',
                style: TextStyle(fontSize:16, color: Colors.grey[800]),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'example@example.com',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              
              Text(
                'Password',
                style: TextStyle(fontSize:16, color: Colors.grey[800]),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
             
               Text(
                'E-mail',
                style: TextStyle(fontSize:16, color: Colors.grey[800]),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'example@example.com',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),

               Text(
                'Mobile Number',
                style: TextStyle(fontSize:16, color: Colors.grey[800]),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  labelText: '+91 XXXXXXXXXX',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),

               Text(
                'Date Of Birth',
                style: TextStyle(fontSize:16, color: Colors.grey[800]),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'dd/mm/yy',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),  


              Text(
                '            By continuing you agree to the, ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:16, color: Colors.grey[800]),
              ),

              const Text(
                '                    terms and conditions.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:16, color: Color.fromARGB(255, 160, 30, 189)),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const SetPassword()));
                  },
                    style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 160, 30, 189),
                    padding: const EdgeInsets.symmetric(vertical: 12)
                    
                  ),
                  child: Text('Sign Up'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('or sign up with'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.g_mobiledata, size: 40),
                    onPressed: () {
                      // Google sign-in action
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.facebook, size: 40),
                    onPressed: () {
                      // Facebook sign-in action
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.fingerprint, size: 40),
                    onPressed: () {
                      // Other sign-in action
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: InkWell(
                  onTap: () {
                    // Navigate to sign up page
                  },
                  child: const Text(
                    "Don't have an account? Sign Up",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}






/*import 'package:flutter/material.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget{
  final dynamic onTap;

  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage>{
  final TextEditingController emilController =TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController confirmpasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return  Scaffold(
    backgroundColor :Theme.of(context).colorScheme.surface,
    body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //logo
        Icon(
           Icons.lock_open_outlined,
           size: 100,
           color: Theme.of(context).colorScheme.inversePrimary,
        ),

        const SizedBox(height: 25),

        //meaasage ,app slogan
         Text(
          "Lets create an account for you",
          style:TextStyle(
          fontSize:16,
          color: Theme.of(context).colorScheme.inversePrimary,
          ),
         ),

          const SizedBox(height: 25),
          // email textfield
          MyTextField(
            controller: emilController,
            hintText: "Email",
            obscureText: false,
          ),

          const SizedBox(height: 10),
          //password textfield

          MyTextField(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),

           const SizedBox(height: 10),
          // conform password textfield

          MyTextField(
            controller: passwordController,
            hintText: "Conform password",
            obscureText: true,
          ),

          const SizedBox(height: 10),
          //sign in page

          MyButton(
           text: "Sign Up",
           onTap: (){}
           ),


           const SizedBox(height: 25),
          //Already have an account the login here
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(
                "Already have an account",
                style:TextStyle(
                  color:Theme.of(context).colorScheme.inversePrimary),
                ) ,
                const SizedBox(width:4),
                
                
              GestureDetector(
                onTap:widget.onTap,
                child: Text(
                "Login now",
                  style:TextStyle(
                   color:Theme.of(context).colorScheme.inversePrimary,
                   fontWeight: FontWeight.bold
                   ),
                  ) ,
              ),
            ],
        ),
      ],
     )
    ),
    );
  }
}*/























//var text = Text(
//                "Register now",
//                style:TextStyle(
//                color:Theme.of(context).colorScheme.inversePrimary),
//                fontWeight:FontWeight.bold,
//              );
