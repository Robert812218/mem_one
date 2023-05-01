import 'package:flutter/material.dart';
import 'package:myapp/components/linux/linux_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<LinuxCommand> linuxCommands;

  @override
  void initState() {
    super.initState();
    // Call the convertData function on all six nested arrays
    List<List<List<String>>> commands = [
      linuxCommands1,
      linuxCommands2,
      linuxCommands3,
      linuxCommands4,
      linuxCommands5,
      linuxCommands6,
    ];
    List<List<String>> allCommands = [];
    for (var i = 0; i < commands.length; i++) {
      allCommands.addAll(commands[i]);
    }
    linuxCommands = convertData(allCommands);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: linuxCommands.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(linuxCommands[index].name),
              subtitle: Text(linuxCommands[index].description),
            );
          },
        ),
      ),
    );
  }
}

