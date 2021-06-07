import 'dart:math';

import 'package:app_v2/menu/CantidadObra.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'CantidadObra.dart';

class Replanteo extends StatefulWidget {
  final String pata_A,
      pata_B,
      pata_C,
      pata_D,
      promedioA,
      promedioB,
      promedioC,
      promedioD;
  Replanteo(this.pata_A, this.pata_B, this.pata_C, this.pata_D, this.promedioA,
      this.promedioB, this.promedioC, this.promedioD);
  @override
  _Replanteo createState() => _Replanteo();
}

class _Replanteo extends State<Replanteo> {
  TextEditingController _lateral_input = TextEditingController();
  TextEditingController _diagonal_input = TextEditingController();

  TextEditingController _lateralAux = TextEditingController();

  TextEditingController _promedioA = TextEditingController();
  TextEditingController _promedioB = TextEditingController();
  TextEditingController _promedioC = TextEditingController();
  TextEditingController _promedioD = TextEditingController();

  TextEditingController _pataA = TextEditingController();
  TextEditingController _pataB = TextEditingController();
  TextEditingController _pataC = TextEditingController();
  TextEditingController _pataD = TextEditingController();

  TextEditingController _pataAa = TextEditingController();
  TextEditingController _pataBb = TextEditingController();
  TextEditingController _pataCc = TextEditingController();
  TextEditingController _pataDd = TextEditingController();

  TextEditingController _distanciaA = TextEditingController();
  TextEditingController _distanciaB = TextEditingController();
  TextEditingController _distanciaC = TextEditingController();
  TextEditingController _distanciaD = TextEditingController();

  TextEditingController _resultadoAInt = TextEditingController();
  TextEditingController _resultadoAExt = TextEditingController();
  TextEditingController _resultadoBInt = TextEditingController();
  TextEditingController _resultadoBExt = TextEditingController();
  TextEditingController _resultadoCInt = TextEditingController();
  TextEditingController _resultadoCExt = TextEditingController();
  TextEditingController _resultadoDInt = TextEditingController();
  TextEditingController _resultadoDExt = TextEditingController();

  TextEditingController _auxiliarA = TextEditingController();
  TextEditingController _auxiliarB = TextEditingController();
  TextEditingController _auxiliarC = TextEditingController();
  TextEditingController _auxiliarD = TextEditingController();
  TextEditingController _volumen = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'REPLANTEO PARA FUNDACIONES',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            _lateral(),
            Divider(),
            _diagonal(),
            Divider(),
            _patas(),
            Divider(),
            _distancia(),
            Divider(),
            _extDistanciaA(),
            Divider(),
            _extDistanciaB(),
            Divider(),
            _extDistanciaC(),
            Divider(),
            _extDistanciaD(),
            Divider(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: Icon(Icons.skip_next),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CantidadObra(
                        _pataA.text,
                        _pataB.text,
                        _pataC.text,
                        _pataD.text,
                        _promedioA.text,
                        _promedioB.text,
                        _promedioC.text,
                        _promedioD.text,
                        _lateralAux.text,
                        _auxiliarA.text,
                        _auxiliarB.text,
                        _auxiliarC.text,
                        _auxiliarD.text,
                        _volumen.text),
                  ));
            }));
  }

  //
  Widget _lateral() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Lateral   m',
          labelText: 'Lateral    m',
          suffixIcon: Icon(Icons.square_foot),
          icon: Icon(Icons.create)),
      keyboardType:
          TextInputType.numberWithOptions(decimal: true, signed: false),
      controller: _lateral_input,
      onChanged: (value) {
        _resultado();
      },
    );
  }

  //
  Widget _diagonal() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          enabled: false,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Diagonal    mm',
          labelText: 'Diagonal    mm',
          filled: true,
          fillColor: Color(0xFFDBEDFF),
          suffixIcon: Icon(Icons.square_foot),
          icon: Icon(Icons.create)),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: _diagonal_input,
      onChanged: (value) {
        //_resultado();
      },
    );
  }

  Widget _patas() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            enabled: false,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'A',
              labelText: 'A',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _pataA,
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            enabled: false,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'B',
              labelText: 'B',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _pataB,
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            enabled: false,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'C',
              labelText: 'C',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _pataC,
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            enabled: false,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'D',
              labelText: 'D',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _pataD,
          ),
        ),
      ],
    );
  }

  //
  Widget _distancia() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Dist. A     mm',
              labelText: 'Dist. A     mm',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _distanciaA,
            onChanged: (value) {
              _resultado();
            },
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Dist. B     mm',
              labelText: 'Dist. B     mm',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _distanciaB,
            onChanged: (value) {
              _resultado();
            },
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Dist. C     mm',
              labelText: 'Dist. C     mm',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _distanciaC,
            onChanged: (value) {
              _resultado();
            },
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Dist. D     mm',
              labelText: 'Dist. D     mm',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _distanciaD,
            onChanged: (value) {
              _resultado();
            },
          ),
        ),
      ],
    );
  }

  //
  Widget _extDistanciaA() {
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
                hintText: 'A int',
                labelText: 'A int',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoAInt,
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
                hintText: 'A ext',
                labelText: 'A ext',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoAExt,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ), //BoxDecoration
          ),
          //Container
        ),
        //Flexible
      ],
    );
  }

  //
  //
  Widget _extDistanciaB() {
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
                hintText: 'B int',
                labelText: 'B int',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoBInt,
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
                hintText: 'B ext',
                labelText: 'B ext',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoBExt,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ), //BoxDecoration
          ),
          //Container
        ),
        //Flexible
      ],
    );
  }

  //
  Widget _extDistanciaC() {
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
                hintText: 'C int',
                labelText: 'C int',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoCInt,
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
                hintText: 'C ext',
                labelText: 'C ext',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoCExt,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ), //BoxDecoration
          ),
          //Container
        ),
        //Flexible
      ],
    );
  }

  //
  Widget _extDistanciaD() {
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
                hintText: 'D int',
                labelText: 'D int',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoDInt,
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
                hintText: 'D ext',
                labelText: 'D ext',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoDExt,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ), //BoxDecoration
          ),
          //Container
        ),
        //Flexible
      ],
    );
  }
  //

  //
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
    _promedioA.text = (widget.promedioA).toString();
    _promedioB.text = (widget.promedioB).toString();
    _promedioC.text = (widget.promedioC).toString();
    _promedioD.text = (widget.promedioD).toString();
  }

  void _resultado() {
    if (_lateral_input.text.trim().isNotEmpty) {
      double lateral = double.parse(_lateral_input.text);
      double total = lateral * lateral;

      _diagonal_input.text =
          (((pow((2 * (total)), 0.5) * 1000).abs()).round()).toString();
      int auxiliar = ((pow((2 * (total)), 0.5) * 1000).abs()).round();

      double a = double.parse(_distanciaA.text);
      double b = double.parse(_distanciaB.text);
      double c = double.parse(_distanciaC.text);
      double d = double.parse(_distanciaD.text);

      double auxA = double.parse(_promedioA.text);
      double auxB = double.parse(_promedioB.text);
      double auxC = double.parse(_promedioC.text);
      double auxD = double.parse(_promedioD.text);

      _resultadoAInt.text = ((a - (auxiliar / 2)).round()).toString();
      _resultadoAExt.text = ((a + (auxiliar / 2)).round()).toString();

      _resultadoBInt.text = ((b - (auxiliar / 2)).round()).toString();
      _resultadoBExt.text = ((b + (auxiliar / 2)).round()).toString();

      _resultadoCInt.text = ((c - (auxiliar / 2)).round()).toString();
      _resultadoCExt.text = ((c + (auxiliar / 2)).round()).toString();

      _resultadoDInt.text = ((d - (auxiliar / 2)).round()).toString();
      _resultadoDExt.text = ((d + (auxiliar / 2)).round()).toString();

      _lateralAux.text = lateral.toString();

      _auxiliarA.text =
          ((lateral * lateral * auxA).toStringAsFixed(2)).toString();
      _auxiliarB.text =
          ((lateral * lateral * auxB).toStringAsFixed(2)).toString();
      _auxiliarC.text =
          ((lateral * lateral * auxC).toStringAsFixed(2)).toString();
      _auxiliarD.text =
          ((lateral * lateral * auxD).toStringAsFixed(2)).toString();

      double aT = lateral * lateral * auxA;
      double bT = lateral * lateral * auxB;
      double cT = lateral * lateral * auxC;
      double dT = lateral * lateral * auxD;

      _volumen.text = ((aT + bT + cT + dT).toStringAsFixed(2)).toString();
    }
  }
}
