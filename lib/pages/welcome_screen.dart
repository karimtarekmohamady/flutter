// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_application_1/pages/home_page.dart';
// import 'package:flutter_application_1/pages/widgets/custom_scaffold.dart';
// import 'package:flutter_application_1/pages/widgets/welcome_button.dart';

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomScaffold(
//       child: Column(
//         children: [
//           Flexible(
//             flex: 8,
//               child: Container(
//             padding: EdgeInsets.symmetric(
//               vertical: 0,
//               horizontal: 40.0,
//             ),
//             child: Center(
//                 child: RichText(
//               textAlign: TextAlign.center,
//               text: const TextSpan(
//                 children: [
//                   TextSpan(
//                       text: 'Welcome Back!\n',
//                       style: TextStyle(
//                         fontSize: 45,
//                         fontWeight: FontWeight.w600,
//                       )),
//                   TextSpan(
//                       text: '\nEnter personal details to your account',
//                       style: TextStyle(
//                         fontSize: 20,
//                       )),
//                 ],
//               ),
//             )),
//           )),
//           const Flexible(
//             flex: 1,
//             child: Align(
//               alignment: Alignment.bottomRight,
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: WelcomeButton(
//                       buttonText:'Sign in' ,
//                     ),
//                     ),
//                   Expanded(
//                     child: WelcomeButton(
//                       buttonText: 'Sign up',
//                     ),
//                     ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:egycoin_app/pages/signup_page.dart';
import 'package:egycoin_app/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[900]!, Colors.blue[800]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 128.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to EgyCoin!',
                style: TextStyle(
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'The safest and most convenient way to make digital transactions.',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 32.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class SignInPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign In'),
//       ),
//       body: Center(
//         child: Text('Sign In Page'),
//       ),
//     );
//   }
// }

// class SignUpPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//       ),
//       body: Center(
//         child: Text('Sign Up Page'),
//       ),
//     );
//   }
// }
