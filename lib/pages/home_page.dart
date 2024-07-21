import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/pages/second_page.dart';
import 'package:provider_learn/provider/count_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 187, 227),
        title: Text(
          'Home Page',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context, proname, child) {
          log("re building");
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$proname.count',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    proname.incrementCounter();
                  },
                  child: Text(
                    'Increment',
                    style: TextStyle(fontSize: 25),
                  ))
            ],
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}






////DEFAULT
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:provider/pages/second_page.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({
//     super.key,
//   });

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _count = 0;

//   void _incrementCounter() {
//     setState(() {
//       _count++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 221, 187, 227),
//         title: Text(
//           'Home Page',
//           style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               '$_count',
//               style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//                 onPressed: () {
//                   _incrementCounter();
//                 },
//                 child: Text(
//                   'Increment',
//                   style: TextStyle(fontSize: 25),
//                 ))
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => SecondPage(count: _count)),
//           );
//         },
//         child: Icon(Icons.arrow_forward_ios),
//       ),
//     );
//   }
// }
