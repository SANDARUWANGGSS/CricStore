import 'package:cric_store/config/login_data.dart';
import 'package:cric_store/widgets/custom_text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
 static const String routeName = '/login';

  static Route route()
  {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => LoginScreen(),
    );
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _loadingButton = false;

  Map<String, String> data = {};

  _LoginScreenState()
  {
    data = LoginData.signIn;
  }

  void switchLogin()
  {
    setState(() {
      if(mapEquals(data, LoginData.signUp))
      {
        data =  LoginData.signIn;
      }
      else
      {
        data = LoginData.signUp;
      }
    });
  }

  void loginButtonPressed() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      data["heading"] as String,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    ),
                    Text(data["subHeading"] as String, style: Theme.of(context).textTheme.bodySmall,)
                ],
              ),
            ),
            model(data, _emailController,_passwordController),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  child: TextButton(
                    onPressed: switchLogin,
                    child: Text(
                      data["footer"] as String,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ) 
                    ),
                )
              ],
            )
        ]
        ,)
        ),
    );
  }
  
  model(Map<String, String> data, TextEditingController emailController, TextEditingController passwordController) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.only(right: 20, left: 28, top: 30, bottom: 56),
      // decoration: CustomTheme.getCardDecoration() ,
      child: Column(
        children: [
          CustomTextInput(label: "Email", placeholder: "Enter Your Email", icon: Icons.person_outline, 
          textEditingController: _emailController),
          CustomTextInput(label: "Password", placeholder: "Enter Your Password", icon: Icons.lock_outlined, 
          textEditingController: _passwordController),
          // CustomButton(text: data["label"] as String, onPressed: loginButtonPressed, loading: _loadingButton)
        ]),
    );
  }
  

}