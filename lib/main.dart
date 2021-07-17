import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // materialapp for android
    //   CupertinoApp for ios

    return MaterialApp(
        //scaffold like html tag
        theme: ThemeData(),
        home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  "https://ahmed525-12.github.io/AHMED_SAYED/img/my%20photo.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Ahmed Sayed"),
            ),
            Text("Flutter Developer"),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Divider(
                thickness: 2.5,
                indent: 100,
                endIndent: 100,
                color: Colors.blue[600],
              ),
            ),
            CardWidget("0568026357", Icons.phone, Colors.green.shade500),
            CardWidget("ahmedsayed52500057@gmail.com", Icons.email,
                Colors.red.shade500)
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String text;
  final IconData icoon;
  final Color colorss;
  CardWidget(this.text, this.icoon, this.colorss);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                icoon,
                color: colorss,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(text),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class _MyHomeState extends State {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Profile'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center //justfu-content-center
//           ,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text("Ahmed Sayed"),
//             ),
//             Text("Flutter Developer"),
//             Divider(),
//           ],
//         ),
//       ),
//     );
//   }
// }
