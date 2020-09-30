import 'package:flutter/material.dart';
import 'package:letschat/screens/welcome_screen.dart';
import 'package:letschat/screens/login_screen.dart';
import 'package:letschat/screens/registration_screen.dart';
import 'package:letschat/screens/chat_screen.dart';

void main() => runApp(letsChat());

class letsChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        ChatScreen.id : (context) => LoginScreen(),
      },
    );
  }
}
