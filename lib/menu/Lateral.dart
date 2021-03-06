import 'dart:math';

import 'package:flutter/material.dart';
import 'Diagonales.dart';

class Lateral extends StatefulWidget {
  final String pata_A, pata_B, pata_C, pata_D;
  Lateral(this.pata_A, this.pata_B, this.pata_C, this.pata_D);
  @override
  _Lateral createState() => _Lateral();
}

class _Lateral extends State<Lateral> {
  TextEditingController _pataA = TextEditingController();
  TextEditingController _latA = TextEditingController();

  TextEditingController _pataB = TextEditingController();
  TextEditingController _latB = TextEditingController();

  TextEditingController _pataC = TextEditingController();
  TextEditingController _latC = TextEditingController();

  TextEditingController _pataD = TextEditingController();
  TextEditingController _latD = TextEditingController();

  TextEditingController _resultado_A_B = TextEditingController();
  TextEditingController _minA_B = TextEditingController();

  TextEditingController _resultadoA = TextEditingController();
  TextEditingController _resultadoB = TextEditingController();
  TextEditingController _resultadoC = TextEditingController();
  TextEditingController _resultadoD = TextEditingController();

  get developer => null;

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
            _lateralesAB(),
            Divider(),
            _lateralesCD(),
            Divider(),
            _excavacionCotaA(),
            Divider(),
            _excavacionCotaB()
          ],
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: Icon(Icons.skip_next),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Diagonales(
                        _pataA.text, _pataB.text, _pataC.text, _pataD.text),
                  ));
            }));
  }

//
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
        Text('PATAS C-D',
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

  Widget _lateralesAB() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('LAT A-B',
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
                hintText: 'Lat A',
                labelText: 'Lat A',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _latA,
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
                hintText: 'Lat B',
                labelText: 'Lat B',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _latB,
              onChanged: (value) {
                _calculos();
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _lateralesCD() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('LAT C-D',
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
                hintText: 'Lat C',
                labelText: 'Lat C',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _latC,
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
                hintText: 'Lat D',
                labelText: 'Lat D',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _latD,
              onChanged: (value) {
                _calculos();
              },
            ),
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

  Widget _excavacionCotaB() {
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
                hintText: 'C mm',
                labelText: 'C mm',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoC,
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
                hintText: 'D mm',
                labelText: 'D mm',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoD,
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
    double latA = double.parse(_latA.text);
    double latB = double.parse(_latB.text);
    double latC = double.parse(_latC.text);
    double latD = double.parse(_latD.text);

    double patA = double.parse(_pataA.text);
    double patB = double.parse(_pataB.text);
    double patC = double.parse(_pataC.text);
    double patD = double.parse(_pataD.text);

    double Hxa = 0, hya = 0, hha = 0, hza = 0;
    double Hxb = 0, hyb = 0, hhb = 0, hzb = 0;
    double Hxc = 0, hyc = 0, hhc = 0, hzc = 0;
    double Hxd = 0, hyd = 0, hhd = 0, hzd = 0;

    double a = 0, b = 0, c = 0, d = 0;
    /***************************A-B***************************/
    /**********hx**********/
    if (_latA.text.trim().isNotEmpty) {
      if (latB >= latA) {
        Hxa = (((latB - latA).abs()) + (2 * latA));
      } else {
        Hxa = (((latB - latA).abs()) + (2 * latA));
      }
    }
    /**********hy**********/
    hya = (latB - latA).abs();
    /**********hh**********/
    hha = pow((pow(Hxa, 2) + pow(hya, 2)), 0.5);
    hza = 1000 * (patB - patA).abs();

    a = (pow((pow(hha, 2) + pow(hza, 2)), 0.5).abs()).abs();
    _resultadoA.text = (a.round()).toString();
    /***************************B-C***************************/
    /**********hx**********/
    if (_latC.text.trim().isNotEmpty) {
      if (latC >= latB) {
        Hxb = (((latC - latB).abs()) + (2 * latB));
      } else {
        Hxb = (((latC - latB).abs()) + (2 * latC));
      }
    }
    /**********hy**********/
    hyb = (latC - latB).abs();
    /**********hh**********/
    hhb = pow((pow(Hxb, 2) + pow(hyb, 2)), 0.5);
    hzb = 1000 * (patC - patB).abs();
    b = (pow((pow(hhb, 2) + pow(hzb, 2)), 0.5).abs()).abs();
    _resultadoB.text = (b.round()).toString();
    /***************************C-D***************************/
    /**********hx**********/
    if (_latD.text.trim().isNotEmpty) {
      if (latD >= latC) {
        Hxc = (((latD - latC).abs()) + (2 * latC));
      } else {
        Hxc = (((latD - latC).abs()) + (2 * latD));
      }
    }
    /**********hy**********/
    hyc = (latD - latC).abs();
    /**********hh**********/
    hhc = pow((pow(Hxc, 2) + pow(hyc, 2)), 0.5);
    hzc = 1000 * (patD - patC).abs();
    c = (pow((pow(hhc, 2) + pow(hzc, 2)), 0.5).abs()).abs();
    _resultadoC.text = (c.round()).toString();
    /***************************A-D***************************/
    /**********hx**********/
    if (_latD.text.trim().isNotEmpty) {
      if (latD >= latA) {
        Hxd = (((latD - latA).abs()) + (2 * latA));
      } else {
        Hxd = (((latD - latA).abs()) + (2 * latD));
      }
    }
    /**********hy**********/
    hyd = (latD - latA).abs();
    /**********hh**********/
    hhd = pow((pow(Hxd, 2) + pow(hyd, 2)), 0.5);
    hzd = 1000 * (patD - patA).abs();

    d = (pow((pow(hhd, 2) + pow(hzd, 2)), 0.5).abs()).abs();
    _resultadoD.text = (d.round()).toString();
  }
}
