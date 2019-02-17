import 'package:flutter/material.dart';

class content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('HOME'),
            centerTitle: true,
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.view_compact)),
              Tab(icon: Icon(Icons.notifications)),
              Tab(icon: Icon(Icons.explore)),
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.settings)),
            ],
            labelColor: Colors.blue,
          ),
          body: TabBarView(
            children: [
              Center(
                child:
                    Text("Home", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Center(
                child: Text("Notify",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Center(
                child:
                    Text("Map", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Center(
                child: Text("Profile",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Center(
                child: Text("Setup",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
