import 'package:flutter/material.dart';
import 'package:loginuicolors/test%20reports.dart';
import 'LeaveApplication.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: Colors.blueAccent,
        ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15,50,15,20),
              child: Text("Welcome To Parent Application",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orangeAccent,),
                        ),
            ),
            SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.all(15.00),
              child: Image(image: AssetImage('assets/images/giphy.gif')),
            )
          ],
        )
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image:new DecorationImage(image: new AssetImage("assets/images/profile.jpeg"),
                fit: BoxFit.fill,
                ),
                color: Colors.black,
              ),
              child: Text(
                'Parent Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message_sharp),
              title: Text('Leave application'),
              onTap: () {
                // Navigate to settings screen
                //Navigator.push(context,MaterialPageRoute(builder: (context) => LeaveApplication()),); // Close the drawer
                // Add your navigation logic here
                Navigator.push(context,MaterialPageRoute(builder: (context) =>LeaveApplication()),);
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Test reports'),
              onTap: () {
                // Navigate to about screen
                Navigator.push(context,MaterialPageRoute(builder: (context) =>TestReports()),); // Close the drawer
                // Add your navigation logic here
              },
            ),
          ],
        ),
      ),
    ),
    );
  }


}
