import 'package:flutter/material.dart';
import 'package:mem_one/components/linux/linux_list.dart';
import 'package:mem_one/components/vim/vim_list.dart';
void main() {
  runApp(MemOne());
}

class MemOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linux Commands',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Linux Commands'),
        ),
        body: ListView.builder(
          itemCount: words.length,
          itemBuilder: (context, index) {
            final key = words.keys.elementAt(index);
            final value = words.values.elementAt(index);
            return ListTile(
              title: Text(key),
              subtitle: Text(value),
            );
          },
        ),
      ),
    );
  }
}


