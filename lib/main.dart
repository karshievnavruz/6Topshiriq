import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('6-amaliy ish'),
          backgroundColor: Colors.blue,
        ),
        body: _buildBody(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF340516),
          fixedColor: Colors.orange,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xFF06DFE8),
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
    );
  }

  Widget _buildBody() {
    switch (currentIndex) {
      case 0:
        return _buildHomeTab();
      case 1:
        return _buildWalletTab();
      case 2:
        return _buildPieChartTab();
      case 3:
        return _buildPersonTab();
      default:
        return _buildHomeTab(); // Default to Home tab
    }
  }

  Widget _buildHomeTab() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUKtwncbgr8E6g4M9FTB4cT5nA1Va4h67vFQ&s"),
            radius: 75,
          ),
          SizedBox(height: 20),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: Colors.yellow,
                  width: 5,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              setState(() {
                String text = controller.text;
                controller2.text = text;
              });
            },
            child: Text("Yuborish"),
          ),
          SizedBox(height: 20),
          TextField(
            controller: controller2,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWalletTab() {
    return Center(
      child: Text("Wallet Tab"),
    );
  }

  Widget _buildPieChartTab() {
    return Center(
      child: Text("Pie Chart Tab"),
    );
  }

  Widget _buildPersonTab() {
    return Center(
      child: Text("Person Tab"),
    );
  }
}
