import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = 150;
    width = 200;
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FA),
      appBar: AppBar(
          backgroundColor: const Color(0xffF8F9FA),
          leading: const CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xffFFFFFF),
            child: Padding(
                padding: EdgeInsets.only(left: 12),
                child: Icon(Icons.arrow_back_ios)),
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: Column(
          children: [
            const Text(
              'Recovery Pasword!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
            ),
            const Text(
              'Please Enter Your Email Address To Recieve a Verification Code!',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
            ),
            const SizedBox(
              height: 50,
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
              decoration: InputDecoration(
                  fillColor: const Color(0xffFFFFFF),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(34),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(34),
                  ),
                  hintText: 'enter email'),
            ),
            const SizedBox(
              height: 30,
            ),
            const AppButton(text: 'Continue'),
            const SizedBox(height: 40),
            const AppButton(
              text: 'Skip',
            ),
            const simpleContainer(),
            const simpleContainer(height: 150),
            simpleContainer(
              width: 200,
            ),
            simpleContainer(
              color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, this.width});
  final String text;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: width ?? 355,
      decoration: const BoxDecoration(
        color: Color(0xff5B9EE1),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}

class simpleContainer extends StatelessWidget {
  const simpleContainer({
    super.key,
    this.height,
    this.width,
    this.color,
  });

  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.green,
      height: height ?? 30,
      width: width ?? 40,
    );
  }
}
