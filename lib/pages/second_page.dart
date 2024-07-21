import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/provider/count_provider.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 187, 227),
        title: Text(
          'Second Page',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${value.sum}',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}









////default way --contsructor
// import 'package:flutter/material.dart';

// class SecondPage extends StatefulWidget {
//   int count;
//   SecondPage({super.key, required this.count});

//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 221, 187, 227),
//         title: Text(
//           'Second Page',
//           style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               '${widget.count}',
//               style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }