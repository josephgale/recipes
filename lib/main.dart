import 'package:flutter/material.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

// 1 A widget’s build() method is the entry point for composing together other widgets to make a new widget.
  @override
  Widget build(BuildContext context) {
    // 2 A theme determines visual aspects like color. The default ThemeData will show the standard Material defaults.
    final ThemeData theme = ThemeData();
    // 3 MaterialApp uses Material Design and is the widget that will be included in RecipeApp.
    return MaterialApp(
      // 4 The title of the app is a description that the device uses to identify the app. The UI won’t display this.
      title: 'Recipe Calculator',
      // 5 By copying the theme and replacing the color scheme with an updated copy lets you change the app’s colors. Here, the primary color is Colors.grey and the secondary color is Colors.black.
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      // 6 This still uses the same MyHomePage widget as before, but now, you’ve updated the title and displayed it on the device.
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }

}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
    // 1 A Scaffold provides the high-level structure for a screen. In this case, you’re using two properties.
    return Scaffold(
      // 2 AppBar gets a title property by using a Text widget that has a title passed in from home: MyHomePage(title: 'Recipe Calculator') in the previous step.
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // 3 body has SafeArea, which keeps the app from getting too close to the operating system interfaces such as the notch or interactive areas like the Home Indicator at the bottom of some iOS screens.
      body: SafeArea(
        // TODO: Replace child: Container()
        // 4 SafeArea has a child widget, which is an empty Container widget.
        child: Container(),
      ),
    );
  }

// TODO: Add buildRecipeCard() here
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
        title: Text(widget.title),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed: _incrementCounter,
        onPressed: ,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
