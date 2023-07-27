import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController paswordController = TextEditingController();
  TextEditingController googleController = TextEditingController();

  var bool = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FA),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 80,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Center(
                child: Text(
                  'Hello Again!',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
                ),
              ),
              const Text(
                'Welcome Back You’ve Been Missed!',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
              ),
              const SizedBox(
                height: 49,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Address Email',
                    style: TextStyle(color: Color(0xff1A2530), fontSize: 20)),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    fillColor: const Color(0xffFFFFFF),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    hintText: 'enter email'),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: TextStyle(color: Color(0xff1A2530), fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                controller: paswordController,
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(34))),
                    hintText: 'enter Password',
                    suffixIcon: const Icon(Icons.visibility_off_outlined)),
              ),
              const SizedBox(
                height: 12,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text('Recovery Password'),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (emailController.text.isEmpty ||
                      paswordController.text.isEmpty) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('email enter')));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('else body run')));
                  }
                },
                child: Container(
                  height: 64,
                  width: 355,
                  decoration: const BoxDecoration(
                    color: Color(0xff5B9EE1),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 64,
                width: 355,
                decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: InkWell(
                  onTap: () {
                    {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Inshallah we wle update it')));
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(image: AssetImage('assets/images/google.png')),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Sign in with google',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don’t Have An Account?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sign Up For Free'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
