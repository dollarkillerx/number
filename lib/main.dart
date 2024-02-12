import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Rund',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: '随机数训练'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // 创建一个随机数生成器
      var random = Random();

      // 生成一个介于10和258之间的随机数（包括10和258）
      _counter = random.nextInt(249) + 10;
    });
  }

  void _incrementCounter2() {
    setState(() {
      // 创建一个随机数生成器
      var random = Random();

      // 生成一个介于10和258之间的随机数（包括10和258）
      _counter = random.nextInt(3500) + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        '我的随机数 训练:',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _incrementCounter();
                          },
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 20), // 按钮文字样式
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10), // 按钮内边距
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // 按钮圆角
                            ),
                          ),
                          child: Text(
                            '10-249',
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _incrementCounter2();
                          },
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 20), // 按钮文字样式
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10), // 按钮内边距
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // 按钮圆角
                            ),
                          ),
                          child: Text(
                            '100-3500',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
