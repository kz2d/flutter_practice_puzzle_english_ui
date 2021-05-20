import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, iconTheme: IconThemeData(size: 28)),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         begin: Alignment.topCenter,
          //         end: Alignment(0, 0),
          //         colors: [
          //       Color.fromRGBO(28, 29, 28, 1),
          //       Color.fromRGBO(50, 52, 53, 1)
          //     ],
          //         stops: [
          //       0.1,
          //       0.9
          //     ])),
          color: Color.fromRGBO(50, 52, 53, 1),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    AppBar(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      leading: Icon(Icons.menu),
                      title: SvgPicture.asset('assets/logo.svg'),
                      actions: [
                        Icon(Icons.search),
                        Padding(
                          padding: const EdgeInsets.only(left: 4, right: 8),
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Container(
                                color: Colors.cyan,
                                alignment: Alignment.center,
                                height: 28,
                                width: 28,
                                child: Text('A'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.all(5),
                      width: 190,
                      height: 100,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/big/1.jpg',
                            height: 100,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Film of the Day'),
                                ),
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    minimumSize:
                                        MaterialStateProperty.all<Size>(
                                            Size(100, 0)),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  child: Center(child: Text('More')),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Фильмы и сериалы на английскомс двойными субтитрами',
                      softWrap: true,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(100000, 50)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: Center(child: Text('More')),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(100000, 50)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: Center(child: Text('More')),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(100000, 50)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: Center(
                          child: Text(
                        'More',
                        style: TextStyle(color: Colors.black),
                      )),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all<Size>(Size(100000, 50)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: Center(child: Text('More')),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GridView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio: 9 / 16),
                        itemCount: 6,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Column(
                              children: [
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 13,
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'assets/small/${index + 1}.jpg',
                                                width: 100000,
                                                fit: BoxFit.fitWidth,
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                right: 0,
                                                child: Container(
                                                  width: 50,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3)),
                                                  alignment: Alignment.center,
                                                  child: Text('7.2'),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                          'Mare of Easttown',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    Container(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 13),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          color: Colors.red,
                                        ),
                                        child: Text(
                                          'Новая серия!',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                    OutlinedButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(
                            Size(120, 40),
                          ),
                          side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(color: Colors.white, width: 2))),
                      child: Text(
                        'Show more',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    GridView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio: 9 / 15),
                        itemCount: 6,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Column(
                              children: [
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'assets/medium/${index + 1}.jpg',
                                                width: 100000,
                                                fit: BoxFit.fitWidth,
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                right: 0,
                                                child: Container(
                                                  width: 70,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3)),
                                                  alignment: Alignment.center,
                                                  child: Text('7.2'),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8),
                                          child: Text(
                                            'Mare of Easttown',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            )),
                    ElevatedButton(
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent)),
                        child: Text(
                          'Next page >',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,fontSize: 20),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
