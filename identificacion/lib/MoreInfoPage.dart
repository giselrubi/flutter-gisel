import 'package:flutter/material.dart';

class MoreInfoPage extends StatefulWidget {
  const MoreInfoPage({super.key, required this.title});
  final String title;

  @override
  State<MoreInfoPage> createState() => _MoreInfoPageState();
}

class _MoreInfoPageState extends State<MoreInfoPage> {

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
            Padding(padding: EdgeInsets.all(50), child: Image(image: AssetImage('assets/jungkook-1670834.jpg'))),
            
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
