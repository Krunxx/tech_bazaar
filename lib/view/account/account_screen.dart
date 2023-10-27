import 'package:flutter/material.dart';
import 'package:my_ecommerce/view/account/auth/sign_in_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
                height: 20), //Positioning size height of nahiwi nga circle
            const Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 36,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/user_image.png"),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    //Ayha mu display if naay const
                    Text(
                      "Sign in your account",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
                height: 50), //Before ga disalign man ang box decoration, para ma plastar is gamiton ang const SizedBo
            buildAccountCard(
                title: "Profile Info",
                onClick: () { //Ang onClick is where User click certain Page Class
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen())); //Its a route to Sign In screen
                }),
            // buildAccountCard(
            //     title: "Notification",
            //     onClick: (){}
            // ),
            // buildAccountCard(
            //     title: "Settings",
            //     onClick: (){}
            // ),
            buildAccountCard(title: "About Us", onClick: () {}),
            // buildAccountCard(
            //     title: "Terms of Service",
            //     onClick: (){}
            // ),
            // buildAccountCard(
            //     title: "Sign In",
            //     onClick: (){}
            // )
          ],
        ));
  }

  Widget buildAccountCard(
      {required String title, required Function() onClick}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: GestureDetector(
        onTap: () {
          onClick();
        },
        child: Container(
          //Box Decoration white
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 0.1,
                  blurRadius: 7,
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              const Icon(Icons.keyboard_arrow_right_outlined)
            ],
          ),
        ),
      ),
    );
  }
}