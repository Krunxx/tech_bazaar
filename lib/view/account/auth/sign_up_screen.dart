import 'package:flutter/material.dart';
import 'package:my_ecommerce/view/account/auth/sign_in_screen.dart';

import '../../../component/input_outline_button.dart';
import '../../../component/input_text_button.dart';
import '../../../component/input_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key); /*
  The code is the constructor of the SignUpScreen widget.
  More explanation is naa dri
   https://stackoverflow.com/questions/52056035/myhomepagekey-key-this-title-superkey-key-in-flutter-what-would-b
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold( //Kung i overall const tanan is naay uban widget dili muangay, mag hatag error hinoon
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Spacer(),
                  const Text('Create Account,',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold)),
                  const Text(
                    "Sign in to continue!",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.2),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  const InputTextField(
                    title: 'Full Name',

                  ),
                  const SizedBox(height: 10), //Ga dikit man so tagaan natog space ang input text field gamit ani
                  const InputTextField(
                    title: 'Email',

                  ),
                  const SizedBox(height: 10), //Ga dikit man so tagaan natog space ang input text field gamit ani
                  const InputTextField(
                    title: 'Password',
                    obsecureText: true,
                  ),
                  const SizedBox(height: 10),
                  const InputTextField(
                    title: 'Confirm Password',
                    obsecureText: true, //obsecureText is pwede i hide/show ang input password  ******
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end, //para ang text nga Forgot Password ma move sa left
                    children: [
                      InkWell(
                        onTap: (){},
                        child: const Text(
                          "Forgot Password",
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  const Spacer(), //gahatag space between Forgot Password ug Sign In
                  InputTextButton(
                    title: "Sign Up",
                    onClick: (){},
                  ),
                  const SizedBox(height: 10), //Giving space between Sign In ug Back Button
                  InputOutlineButton(
                      title: "Back",
                      onClick: (){
                        Navigator.of(context).pop();
                      }),
                  const Spacer(
                    flex: 5,
                  ),

                 Row( //Dili pwede i const ang Row class dili mu error ang onTap(){}
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("I'm already a member, \t"),
                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen())); //Its a route to SignInScreen Page
                        },
                        child: Text("Sign In",
                          style: TextStyle(
                              color: Colors.blue
                          ),),
                      )
                    ],
                  ),
                  const SizedBox(height: 10) // adjust ang text a little bit up
                ],
              ))),
    );
  }
}
