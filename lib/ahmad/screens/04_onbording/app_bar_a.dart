import 'package:flutter/material.dart';

class AppBarA extends StatelessWidget {
  const AppBarA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        scrolledUnderElevation: 20,
        backgroundColor: Colors.teal,
        shadowColor: Colors.amber,
        toolbarHeight: 200,
        leadingWidth: 60,
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        // shape:
        //     BeveledRectangleBorder(borderRadius: BorderRadius.circular(50)),
        // shape: const CircleBorder(eccentricity: 0.8),
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.abc),
        title: Column(
          children: const [
            Text('AppBar'),
            Text('subtitle'),
          ],
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.settings_outlined),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
        ],
        toolbarOpacity: 0.5,
        iconTheme: const IconThemeData(size: 50, color: Colors.white),
        titleTextStyle: TextStyle(fontSize: 30),
      ),
    );
  }
}
