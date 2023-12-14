import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Assignment No.1',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Click to Go on 2nd Page'),
              onPressed: () {
                Navigator.push(
                  context, // Add context here
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Click to Go on 3rd Page'),
              onPressed: () {
                Navigator.push(
                  context, // Add context here
                  MaterialPageRoute(builder: (context) => const ThirdPage()),
                );
              },
            ),
            SizedBox(height: 40),
            Expanded(
              child: Text('Heading',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 28)),
            ),
            SizedBox(height: 40),
            Expanded(
              child: Text('This is the Paragraph of Home page',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 18)),
            ),
            Image(image: AssetImage('assets/18.jpg')),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                // Change the button text when pressed
                //updateButtonText();
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is Second Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Click to Go Home'),
            ),
            Expanded(
              child: Text('Heading',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
            ),
            Expanded(
              child: Text('Paragraph of the Second Page',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            Image(image: AssetImage('assets/19.jpg')),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is Third Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Click to Go Home'),
            ),
            Expanded(
              child: Text('Heading',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
            ),
            Expanded(
              child: Text('Paragraph of the Third Page',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            Image(image: AssetImage('assets/20.jpg')),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
