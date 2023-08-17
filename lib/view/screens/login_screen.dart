import 'package:Al_Zab_township_guide/generated/l10n.dart';
import 'package:Al_Zab_township_guide/view/widget/constant/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                ),
                color: ColorUsed.primary, // Color(0xFF501063),
                gradient: LinearGradient(
                  colors: [
                    ColorUsed.primary, ColorUsed.second,
                    // (Color(0xFF501063)),
                    // (Color(0xFF591D6B)),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      height: 80,
                      child: Image.asset(
                        "assets/Ichrak.png",
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 20,
                        top: 20,
                      ),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        S.of(context).login,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // enter email
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 70,
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  50,
                ),
                color: Colors.grey[200],
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: ColorUsed.primary, //Color(0xFF501063),
                decoration: InputDecoration(
                    icon: const Icon(
                      Icons.email,
                      color: ColorUsed.primary, //Color(0xFF501063),
                    ),
                    hintText: S.of(context).enter_email,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            // enter password
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: const Color(0xFF501063),
                decoration: InputDecoration(
                    icon: const Icon(
                      Icons.vpn_key,
                      color: ColorUsed.primary, //Color(0xFF501063),
                    ),
                    hintText: S.of(context).enter_password,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 22, right: 30),
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child: Text(
                    S.of(context).forget_password,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => {},
                ),
              ),
            ),

            GestureDetector(
              onTap: () => {
                /** onClick code here */
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 60,
                ),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    ColorUsed.primary,
                    ColorUsed.second,
                    // (Color(0xFF501063)),
                    // (Color(0xFF591D6B)),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE))
                  ],
                ),
                child: Text(
                  S.of(context).login,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).don_t_have_account,
                  ),
                  SizedBox(
                    width: 0.5.w,
                  ),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      ),
                    },
                    child: Text(
                      S.of(context).register_now,
                      style: const TextStyle(
                        color: ColorUsed.primary, // Color(0xFF501063),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}