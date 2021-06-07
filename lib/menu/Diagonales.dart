import 'dart:math';

import 'package:flutter/material.dart';

class Diagonales extends StatefulWidget {
  final String pata_A, pata_B, pata_C, pata_D;
  Diagonales(this.pata_A, this.pata_B, this.pata_C, this.pata_D);
  @override
  _Diagonales createState() => _Diagonales();
}

class _Diagonales extends State<Diagonales> {
  TextEditingController _pataA = TextEditingController();
  TextEditingController _pataB = TextEditingController();
  TextEditingController _pataC = TextEditingController();
  TextEditingController _pataD = TextEditingController();

  TextEditingController _diaA = TextEditingController();
  TextEditingController _diaB = TextEditingController();
  TextEditingController _diaC = TextEditingController();
  TextEditingController _diaD = TextEditingController();

  TextEditingController _resultadoA = TextEditingController();
  TextEditingController _resultadoB = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DIAGONALES',
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
          _diagonalesAB(),
          Divider(),
          _diagonalesCD(),
          Divider(),
          _resultado()
        ],
      ),
    );
  }

  Widget _patasA() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('PATAS A-B',
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
              controller: _pataA,
            ),
          ),
        ),
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
              controller: _pataB,
            ),
          ),
        ),
      ],
    );
  }

  Widget _patasB() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('C-D',
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
              controller: _pataC,
            ),
          ),
        ),
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
              controller: _pataD,
            ),
          ),
        ),
      ],
    );
  }

  Widget _diagonalesAB() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('DIAGONALES A-B',
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
                hintText: 'Dia A',
                labelText: 'Dia A',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _diaA,
              onChanged: (value) {
                _calculos();
              },
            ),
          ),
        ),
        new Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'Dia B',
                labelText: 'Dia B',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _diaB,
              onChanged: (value) {
                _calculos();
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _diagonalesCD() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('C-D',
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
                hintText: 'Dia C',
                labelText: 'Dia C',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _diaC,
              onChanged: (value) {
                _calculos();
              },
            ),
          ),
        ),
        new Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'Dia D',
                labelText: 'Dia D',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _diaD,
              onChanged: (value) {
                _calculos();
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _resultado() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                enabled: false,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'A mm',
                labelText: 'A mm',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoA,
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
                enabled: false,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'B mm',
                labelText: 'B mm',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoB,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ), //BoxDecoration
          ),
          //Container
        ),
        //Flexible
      ],
    );
  }

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _introducirData());
  }

  //
  void _introducirData() {
    _pataA.text = (widget.pata_A).toString();
    _pataB.text = (widget.pata_B).toString();
    _pataC.text = (widget.pata_C).toString();
    _pataD.text = (widget.pata_D).toString();
  }

  void _calculos() {
    double diaA = double.parse(_diaA.text);
    double diaB = double.parse(_diaB.text);
    double diaC = double.parse(_diaC.text);
    double diaD = double.parse(_diaD.text);

    double patA = double.parse(_pataA.text);
    double patB = double.parse(_pataB.text);
    double patC = double.parse(_pataC.text);
    double patD = double.parse(_pataD.text);

    double Hxa = 0, hza = 0;
    double Hxb = 0, hzb = 0;

    double a = 0, b = 0;
    /***************************A-C***************************/
    /**********hx**********/
    if (_diaC.text.trim().isNotEmpty) {
      if (diaC >= diaA) {
        Hxa = (((diaC - diaA).abs()) + (2 * diaA));
      } else {
        Hxa = (((diaC - diaA).abs()) + (2 * diaC));
      }
    }
    /**********hZ**********/
    hza = 1000 * (patC - patA).abs();
    //FINA
    a = pow((pow(Hxa, 2) + pow(hza, 2)), 0.5);
    _resultadoA.text = (a.round()).toString();

    /***************************B-D***************************/
    /**********hx**********/
    if (_diaD.text.trim().isNotEmpty) {
      if (diaD >= diaB) {
        Hxb = (((diaD - diaB).abs()) + (2 * diaB));
      } else {
        Hxb = (((diaD - diaB).abs()) + (2 * diaD));
      }
    }
    /**********hZ**********/
    hzb = 1000 * (patD - patB).abs();
    //FINA
    b = pow((pow(Hxb, 2) + pow(hzb, 2)), 0.5);
    _resultadoB.text = (b.round()).toString();
  }
}
