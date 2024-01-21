import 'package:flutter/material.dart';
// import 'package:shorebird_code_push/shorebird_code_push.dart';

// Create an instance of the ShorebirdCodePush class
// final shorebirdCodePush = ShorebirdCodePush();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Get the current patch number and print it to the console. It will be
    // null if no patches are installed.
    // shorebirdCodePush
    //     .currentPatchNumber()
    //     .then((value) => print('current patch number is $value'));
  }

  // Future<void> _checkForUpdates() async {
  //   // Check whether a patch is available to install.
  //   final isUpdateAvailable =
  //       await shorebirdCodePush.isNewPatchAvailableForDownload();

  //   print("Hello: $isUpdateAvailable");

  //   if (isUpdateAvailable) {
  //     // Download the new patch if it's available.
  //     await shorebirdCodePush.downloadUpdateIfAvailable();
  //   }
  // }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    // _checkForUpdates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'God will be with you always George...',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
