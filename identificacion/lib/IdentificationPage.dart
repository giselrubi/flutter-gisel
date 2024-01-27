import 'package:flutter/material.dart';

class IdentificationPage extends StatefulWidget {
  const IdentificationPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<IdentificationPage> createState() => _IdentificationPageState();
}

class _IdentificationPageState extends State<IdentificationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(50), child: Image(image: AssetImage('assets/1690640864_quien-es-jungkook-bts-prin.jpg'))),
            Text('jungkook', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(children: [
              Column(children: [Text('26'), Text('Edad', style: TextStyle(fontWeight: FontWeight.bold))]),
              Column(children: [Text('01/09'), Text('FdN', style: TextStyle(fontWeight: FontWeight.bold))]),
              Column(children: [Text('MEX'), Text('NAC', style: TextStyle(fontWeight: FontWeight.bold))]),
            ]),
            Row(children: [
              ElevatedButton(onPressed: null, child: Text('Ver +')),
              ElevatedButton(onPressed: null, child: Text('Links')),
            ]),
          ]
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Check',
        child: Icon(Icons.check),
      ),
    );
  }
}
