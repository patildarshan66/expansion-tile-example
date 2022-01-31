import 'package:flutter/material.dart';

import 'expansion_tile_widget.dart';

class ExpansionTileExample extends StatefulWidget {
  const ExpansionTileExample({Key? key}) : super(key: key);

  @override
  _ExpansionTileExampleState createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  final GlobalKey<AppExpansionTileState> expansionTile1 = GlobalKey();
  final GlobalKey<AppExpansionTileState> expansionTile2 = GlobalKey();
  String _selectedValue1 = 'Select State';
  String _selectedValue2 = 'Select City';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ExpansionTile'),
        ),
        body: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: AppExpansionTile(
                  key: expansionTile1,
                  title: Text(
                    _selectedValue1,
                    style: const TextStyle(fontSize: 18),
                  ),
                  backgroundColor:
                      Theme.of(context).accentColor.withOpacity(0.025),
                  children: <Widget>[
                    ListTile(
                      title: const Text('Maharashtra'),
                      onTap: () {
                        setState(() {
                          _selectedValue1 = 'Maharashtra';
                          expansionTile1.currentState!.collapse();
                        });
                      },
                    ),
                    ListTile(
                      title: const Text('Gujarat'),
                      onTap: () {
                        setState(() {
                          _selectedValue1 = 'Gujarat';
                          expansionTile1.currentState!.collapse();
                        });
                      },
                    ),
                    ListTile(
                      title: const Text('Rajasthan'),
                      onTap: () {
                        setState(() {
                          _selectedValue1 = 'Rajasthan';
                          expansionTile1.currentState!.collapse();
                        });
                      },
                    ),
                  ]),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: AppExpansionTile(
                  key: expansionTile2,
                  title: Text(_selectedValue2,
                      style: const TextStyle(fontSize: 18)),
                  backgroundColor:
                      Theme.of(context).accentColor.withOpacity(0.025),
                  children: <Widget>[
                    ListTile(
                      title: const Text('Mumbai'),
                      onTap: () {
                        setState(() {
                          _selectedValue2 = 'Mumbai';
                          expansionTile2.currentState!.collapse();
                        });
                      },
                    ),
                    ListTile(
                      title: const Text('Nashik'),
                      onTap: () {
                        setState(() {
                          _selectedValue2 = 'Nashik';
                          expansionTile2.currentState!.collapse();
                        });
                      },
                    ),
                    ListTile(
                      title: const Text('Pune'),
                      onTap: () {
                        setState(() {
                          _selectedValue2 = 'Pune';
                          expansionTile2.currentState!.collapse();
                        });
                      },
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
