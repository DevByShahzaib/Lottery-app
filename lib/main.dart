import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:  Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Your lottery number is 5'),),
            SizedBox(height: 15,),
            Container(
              height: x==5? 400:300,
              width: x==5? 300:200,
              decoration: BoxDecoration(color:x==5? Colors.teal : Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x==5?   Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.done_all, color: Colors.yellow,size: 35,),
                    const SizedBox(height: 15,),
                    const Text('Congratulation Bro',textAlign: TextAlign.center,),
                    const Text('You are Winner..!',textAlign: TextAlign.center,),
                    Text('Your number is $x ',textAlign: TextAlign.center,)

                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error, color: Colors.red,size: 35,),
                    SizedBox(height: 15,),
                    Text('better Luck Next Time Your Number is $x\n Try Again',textAlign: TextAlign.center,)

                  ],
                ),
              ),
            ),
            // ternary operator
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {

          });
          x = random.nextInt(6);
          

        }
        , child: Icon(Icons.refresh)),


        
      ),
    );
  }
}


