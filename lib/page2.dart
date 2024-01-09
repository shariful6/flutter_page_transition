import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey,
          child: Column(
            children: [
              Text("Page2",style: TextStyle(color: Colors.black),),
              ElevatedButton(
                  onPressed: (){

                  },
                  child: Text("Go back",style: TextStyle(color: Colors.black))
              )
            ],
          ),
        )
      ),
    );
  }
}
