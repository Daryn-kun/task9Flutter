import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: const Color(0xFFED1414),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Weather Forecast'),
        centerTitle: true,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Enter City Name',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Almaty, Almaty region, KZ',
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'Monday, Apr 19, 2021',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.wb_sunny,
                        size: 100.0,
                        color: Colors.white,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            '14 \u00B0F',
                            style:
                            TextStyle(fontSize: 60.0, color: Colors.white),
                          ),
                          Text(
                            'SUNNY',
                            style:
                            TextStyle(fontSize: 20.0, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        Text(
                          '5',
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                        Text(
                          'km/hr',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        Text(
                          '3',
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                        Text(
                          '%',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        Text(
                          '20',
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                        Text(
                          '%',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text('7-DAY WEATHER FORECAST',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 130.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 180.0,
                      color: Colors.redAccent,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              'Friday',
                              style: TextStyle(color: Colors.white, fontSize: 30.0),
                            )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  '6 \u00B0F',
                                  style:
                                  TextStyle(fontSize: 30.0, color: Colors.white),
                                ),
                                Icon(
                                  Icons.wb_sunny,
                                  color: Colors.white,
                                  size: 40.0,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 180.0,
                      color: Colors.redAccent,
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'Saturday',
                                style: TextStyle(color: Colors.white, fontSize: 30.0),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  '5 \u00B0F',
                                  style:
                                  TextStyle(fontSize: 30.0, color: Colors.white),
                                ),
                                Icon(
                                  Icons.wb_sunny,
                                  color: Colors.white,
                                  size: 40.0,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 180.0,
                      color: Colors.redAccent,
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'Sunday',
                                style: TextStyle(color: Colors.white, fontSize: 30.0),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  '10 \u00B0F',
                                  style:
                                  TextStyle(fontSize: 30.0, color: Colors.white),
                                ),
                                Icon(
                                  Icons.wb_sunny,
                                  color: Colors.white,
                                  size: 40.0,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 180.0,
                      color: Colors.redAccent,
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'Monday',
                                style: TextStyle(color: Colors.white, fontSize: 30.0),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  '8 \u00B0F',
                                  style:
                                  TextStyle(fontSize: 30.0, color: Colors.white),
                                ),
                                Icon(
                                  Icons.wb_sunny,
                                  color: Colors.white,
                                  size: 40.0,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 180.0,
                      color: Colors.redAccent,
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'Tuesday',
                                style: TextStyle(color: Colors.white, fontSize: 30.0),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  '11 \u00B0F',
                                  style:
                                  TextStyle(fontSize: 30.0, color: Colors.white),
                                ),
                                Icon(
                                  Icons.wb_sunny,
                                  color: Colors.white,
                                  size: 40.0,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 180.0,
                      color: Colors.redAccent,
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'Wednesday',
                                style: TextStyle(color: Colors.white, fontSize: 30.0),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  '9 \u00B0F',
                                  style:
                                  TextStyle(fontSize: 30.0, color: Colors.white),
                                ),
                                Icon(
                                  Icons.wb_sunny,
                                  color: Colors.white,
                                  size: 40.0,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 180.0,
                      color: Colors.redAccent,
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                'Thursday',
                                style: TextStyle(color: Colors.white, fontSize: 30.0),
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  '6 \u00B0F',
                                  style:
                                  TextStyle(fontSize: 30.0, color: Colors.white),
                                ),
                                Icon(
                                  Icons.wb_sunny,
                                  color: Colors.white,
                                  size: 40.0,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
