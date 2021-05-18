import 'dart:math';

import 'package:flutter/material.dart';

class Lateral extends StatefulWidget {
  @override
  _Lateral createState() => _Lateral();
}

class _Lateral extends State<Lateral> {
  TextEditingController _pataA = TextEditingController();
  TextEditingController _pataB = TextEditingController();
  TextEditingController _pataC = TextEditingController();
  TextEditingController _pataD = TextEditingController();

  TextEditingController _pataIntA = TextEditingController();
  TextEditingController _pataExtA = TextEditingController();

  TextEditingController _pataIntB = TextEditingController();
  TextEditingController _pataExtB = TextEditingController();

  TextEditingController _pataIntC = TextEditingController();
  TextEditingController _pataExtC = TextEditingController();

  TextEditingController _pataIntD = TextEditingController();
  TextEditingController _pataExtD = TextEditingController();

  TextEditingController _resultado_A_B = TextEditingController();
  TextEditingController _minA_B = TextEditingController();

  TextEditingController _resultadoCotaFundIntA = TextEditingController();
  TextEditingController _resultadoCotaFundExtA = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LATERALES',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _patasA(),
          Divider(),
          _patasB(),
          Divider(),
          _patasC(),
          Divider(),
          _patasD(),
          Divider(),
          _excavacionCotaA()
        ],
      ),
    );
  }

//
  Widget _patasA() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('PATA A',
            style: TextStyle(
              decoration: TextDecoration.none,
            )),
        new Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'A',
                labelText: 'A',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _pataIntA,
              onChanged: (value) {
                //_calculate2();
              },
            ),
          ),
        ),
        new Flexible(
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Lat A',
              labelText: 'Lat A',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _pataExtA,
            onChanged: (value) {
              _calculate2();
            },
          ),
        ),
      ],
    );
  }

  Widget _patasB() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('PATA B',
            style: TextStyle(
              decoration: TextDecoration.none,
            )),
        new Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'B',
                labelText: 'B',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _pataIntB,
              onChanged: (value) {
                // _calculate2();
              },
            ),
          ),
        ),
        new Flexible(
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Lat B',
              labelText: 'Lat B',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _pataExtB,
            onChanged: (value) {
              _calculate2();
            },
          ),
        ),
      ],
    );
  }

  Widget _patasC() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('PATA C',
            style: TextStyle(
              decoration: TextDecoration.none,
            )),
        new Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'C',
                labelText: 'C',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _pataIntC,
              onChanged: (value) {
                //_calculate2();
              },
            ),
          ),
        ),
        new Flexible(
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Lat C',
              labelText: 'Lat C',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _pataExtC,
            onChanged: (value) {
              _calculate2();
            },
          ),
        ),
      ],
    );
  }

  Widget _patasD() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('PATA D',
            style: TextStyle(
              decoration: TextDecoration.none,
            )),
        new Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'D',
                labelText: 'D',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _pataIntD,
              onChanged: (value) {
                //_calculate2();
              },
            ),
          ),
        ),
        new Flexible(
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Lat D',
              labelText: 'Lat D',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _pataExtD,
            onChanged: (value) {
              _calculate2();
            },
          ),
        ),
      ],
    );
  }

  Widget _excavacionCotaA() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'COTA A int',
                labelText: 'COTA A int',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoCotaFundIntA,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ), //BoxDecoration
          ), //Container
        ), //Flexible
        SizedBox(
          width: 20,
        ), //SizedBox
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'COTA A ext',
                labelText: 'COTA A ext',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoCotaFundExtA,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ), //BoxDecoration
          ),
          //Container
        ),
        //Flexible
      ],
    );
  }

  void _calculate2() {
    if (_pataIntA.text.trim().isNotEmpty &&
        _pataExtA.text.trim().isNotEmpty &&
        _pataIntB.text.trim().isNotEmpty &&
        _pataExtB.text.trim().isNotEmpty &&
        _pataIntC.text.trim().isNotEmpty &&
        _pataExtC.text.trim().isNotEmpty &&
        _pataIntD.text.trim().isNotEmpty &&
        _pataExtD.text.trim().isNotEmpty) {
      final pataValueAInt = double.parse(_pataIntA.text);
      final pataValueAExt = double.parse(_pataExtA.text);
      final pataValueBInt = double.parse(_pataIntB.text);
      final pataValueBExt = double.parse(_pataExtB.text);
      final pataValueCInt = double.parse(_pataIntC.text);
      final pataValueCExt = double.parse(_pataExtC.text);
      final pataValueDInt = double.parse(_pataIntD.text);
      final pataValueDExt = double.parse(_pataExtD.text);
      _minA_B = min(pataValueBExt, pataValueAExt);
      _resultadoCotaFundIntA.text =
          (((pataValueBExt - pataValueAExt).abs()) * 2).toString();
      // (((pataValueBExt - pataValueAExt).abs()) + 2).toString();
      _resultadoCotaFundExtA.text = _minA_B.toString();
    }
  }
}
