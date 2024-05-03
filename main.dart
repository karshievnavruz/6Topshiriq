import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "6-amaliy ish",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage("images/istockphoto-1300845620-612x612.jpg"),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.yellow,
                    width: 2,
                  ),
                ),
                errorText: "Maydonni to'ldiring!",
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                // Add functionality to handle button press
              },
              child: const Text("Yuborish"),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: const Color(0xFF1F1F1F),
            textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xFF1E1E1E),
            selectedItemColor: Colors.red,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet),
                label: "Wallet",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart),
                label: "Pie Chart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Person",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

