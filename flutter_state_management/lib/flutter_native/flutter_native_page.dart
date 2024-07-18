import 'package:flutter/material.dart';

class FlutterNativePage extends StatefulWidget {
  const FlutterNativePage({super.key, required this.title});

  final String title;

  @override
  State<FlutterNativePage> createState() => _FlutterNativePageState();
}

class _FlutterNativePageState extends State<FlutterNativePage> {
  String _information = '';

  void _showAdvantages() {
    setState(() {
      _information = 'Vantagem x';
    });
  }

  void _showDisadvantages() {
    setState(() {
      _information = 'Desvantagem y';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Esta é a maneira nativa que o Flutter gerencia seus estados',
            ),
            Text(
              _information,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              children: <ElevatedButton>[
                ElevatedButton(
                  onPressed: _showAdvantages,
                  child: const Text('Vantagens'),
                ),
                ElevatedButton(
                  onPressed: _showDisadvantages,
                  child: const Text('Desvantagens'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
