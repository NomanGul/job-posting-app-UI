import 'package:flutter/material.dart';
import 'package:job_post_ui/screens/job_list.dart';
import 'package:job_post_ui/screens/login.dart';
import 'package:job_post_ui/widgets/input_field.dart';
import 'package:job_post_ui/widgets/button.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        reverse: true,
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 110, right: 27, bottom: 59, left: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Let’s sign you up",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 14),
                  const Text("Welcome\nJoin the community!",
                      style: TextStyle(fontSize: 30)),
                  const SizedBox(height: 67),
                  const InputField(
                    placeholderText: "Full name",
                  ),
                  const SizedBox(height: 20),
                  const InputField(
                    placeholderText: "Email",
                  ),
                  const SizedBox(height: 20),
                  const InputField(
                    placeholderText: "Password",
                  ),
                  const Spacer(),
                  const SizedBox(height: 11),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const LogIn()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Already have an account? ",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF8F8F9E))),
                        Text("Sign In", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Button(
                    text: "Sign Up",
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const JobList()));
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
