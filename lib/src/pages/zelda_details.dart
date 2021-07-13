import 'package:examen/src/models/zelda_model.dart';
import 'package:flutter/material.dart';

class ZeldaDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ZeldaModel _link =
        ModalRoute.of(context)!.settings.arguments as ZeldaModel;
    final _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(_link.name!),
        backgroundColor: Colors.green[600],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _zimg(_link, _mediaQuery),
          SizedBox(
            height: 30.0,
          ),
          _info(_link),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _stats(_link),
            ],
          )
        ],
      ),
    );
  }

  Widget _zimg(_link, _mediaQuery) {
    return Container(
      height: _mediaQuery.height * 0.30,
      width: double.infinity,
      child: FadeInImage(
        fit: BoxFit.cover,
        placeholder: AssetImage('assets/MasterSword.gif'),
        image: NetworkImage(_link.image!),
      ),
    );
  }

  Widget _info(_link) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Item description',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              _link.description!,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            SizedBox(height: 20.0),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                'Category',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20.0),
              Text(
                _link.category!,
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _stats(_link) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              'Atack',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 20.0),
            Text(
              _link.attack!.toString(),
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            SizedBox(width: 100.0),
            Text(
              'Defense',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 20.0),
            Text(
              _link.defense!.toString(),
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
