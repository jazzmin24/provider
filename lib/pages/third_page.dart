import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_learn/pages/second_page.dart';
import 'package:provider_learn/provider/count_provider.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController control1 = TextEditingController();
  TextEditingController control2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 221, 187, 227),
          title: Text(
            'Third Page',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: control1,
                onChanged: (value) {
                  Provider.of<CountProvider>(context, listen: false)
                      .initialiseA(int.parse(value));
                  log(control1.text.toString());
                },
              ),
              TextField(
                controller: control2,
                onChanged: (value) {
                  Provider.of<CountProvider>(context, listen: false)
                      .initialiseB(int.parse(value));
                  log(control2.text.toString());
                },
              ),
              Consumer<CountProvider>(builder: (context, vaue, child) {
                log("re building");
                return Column(
                  children: [
                    Text(
                        // Provider.of<CountProvider>(context, listen: false)
                        //   .sum
                        //   .toString()
                        '${vaue.sum}'),
                    ElevatedButton(
                        onPressed: () {
                          vaue.sumfunction();
                        },
                        child: Icon(Icons.add)),
                    ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => SecondPage()),
                          // );
                        },
                        child: Icon(Icons.arrow_forward_ios)),
                  ],
                );
              }),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Provider.of<CountProvider>(context, listen: false).sumfunction();
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => SecondPage()),
            // );
          },
          child: Icon(Icons.add),
        ));
  }
}
