import 'package:flutter/material.dart';

class DirrecionesScreen extends StatefulWidget {
  static const name = '/dirreciones';
  const DirrecionesScreen({super.key});

  @override
  State<DirrecionesScreen> createState() => _DirrecionesScreenState();
}

class _DirrecionesScreenState extends State<DirrecionesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Codigo Postal'),
      ),
      body: const TextoRow(),
    );
  }
}

class TextoRow extends StatelessWidget {
  const TextoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        //width: 200, //column,
        //height: 200, // row,
        color: Colors.blue,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          verticalDirection: VerticalDirection.down,
          //textDirection: TextDirection.rtl,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.lightBlueAccent),
              child: const Icon(
                Icons.star,
                size: 50,
                color: Colors.orange,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.blueAccent),
              child: const Icon(
                Icons.star,
                size: 50,
                color: Colors.orange,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.blueAccent),
              child: const Icon(
                Icons.star,
                size: 50,
                color: Colors.orange,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.blueGrey),
              child: const Icon(
                Icons.star,
                size: 50,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
