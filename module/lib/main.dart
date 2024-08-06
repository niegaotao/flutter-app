import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Model for knn',
      routes: {
        "/a": (context) => DesktopA(url: "/a"),
        "/b": (context) => DesktopB(url: "/b"),
        "/c": (context) => DesktopC(url: "/c"),
      },
      home: Desktop(url: "/"),
    );
  }
}

class Appex {
  static Appex app = Appex();
  int counter = 0;
}

class Desktop extends StatefulWidget {
  final String url;
  const Desktop({Key? key, required this.url}) : super(key: key);

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  MethodChannel? channel;

  @override
  void initState() {
    super.initState();
    channel = MethodChannel(widget.url);
  }

  void _incrementCounter() {
    setState(() {
      Appex.app.counter++;
    });
  }

  void _open() {
    channel?.invokeMapMethod("open");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('${widget.url}', style: TextStyle(color: Colors.black, fontSize: 17)),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (detail) {
              _incrementCounter();
            },
            child: Text('Presed times:${Appex.app.counter}', style: TextStyle(color: Colors.black, fontSize: 17)),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (detail) {
              _open();
            },
            child: Text('Open', style: TextStyle(color: Colors.black, fontSize: 17)),
          )
        ],
      ),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class DesktopA extends StatefulWidget {
  final String url;
  const DesktopA({Key? key, required this.url}) : super(key: key);

  @override
  State<DesktopA> createState() => _DesktopAState();
}

class _DesktopAState extends State<DesktopA> {
  MethodChannel? channel;

  @override
  void initState() {
    super.initState();
    channel = MethodChannel(widget.url);
  }

  void _incrementCounter() {
    setState(() {
      Appex.app.counter++;
    });
  }

  void _open() {
    channel?.invokeMapMethod("open");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('${widget.url}', style: TextStyle(color: Colors.black, fontSize: 17)),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (detail) {
              _incrementCounter();
            },
            child: Text('Presed times:${Appex.app.counter}', style: TextStyle(color: Colors.black, fontSize: 17)),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (detail) {
              _open();
            },
            child: Text('Open', style: TextStyle(color: Colors.black, fontSize: 17)),
          )
        ],
      ),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class DesktopB extends StatefulWidget {
  final String url;
  const DesktopB({Key? key, required this.url}) : super(key: key);

  @override
  State<DesktopB> createState() => _DesktopBState();
}

class _DesktopBState extends State<DesktopB> {
  MethodChannel? channel;

  @override
  void initState() {
    super.initState();
    channel = MethodChannel(widget.url);
  }

  void _incrementCounter() {
    setState(() {
      Appex.app.counter++;
    });
  }

  void _open() {
    channel?.invokeMapMethod("open");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('${widget.url}', style: TextStyle(color: Colors.black, fontSize: 17)),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (detail) {
              _incrementCounter();
            },
            child: Text('Presed times:${Appex.app.counter}', style: TextStyle(color: Colors.black, fontSize: 17)),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (detail) {
              _open();
            },
            child: Text('Open', style: TextStyle(color: Colors.black, fontSize: 17)),
          )
        ],
      ),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class DesktopC extends StatefulWidget {
  final String url;
  const DesktopC({Key? key, required this.url}) : super(key: key);

  @override
  State<DesktopC> createState() => _DesktopCState();
}

class _DesktopCState extends State<DesktopC> {
  MethodChannel? channel;

  @override
  void initState() {
    super.initState();
    channel = MethodChannel(widget.url);
  }

  void _incrementCounter() {
    setState(() {
      Appex.app.counter++;
    });
  }

  void _open() {
    channel?.invokeMapMethod("open");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('${widget.url}', style: TextStyle(color: Colors.black, fontSize: 17)),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (detail) {
              _incrementCounter();
            },
            child: Text('Presed times:${Appex.app.counter}', style: TextStyle(color: Colors.black, fontSize: 17)),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (detail) {
              _open();
            },
            child: Text('Open', style: TextStyle(color: Colors.black, fontSize: 17)),
          )
        ],
      ),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
