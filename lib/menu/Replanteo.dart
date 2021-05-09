import 'package:app_v2/menu/CantidadObra.dart';
import 'package:flutter/material.dart';
import 'CantidadObra.dart';

class Replanteo extends StatefulWidget {
  final String pata_A, pata_B, pata_C, pata_D;
  Replanteo(this.pata_A, this.pata_B, this.pata_C, this.pata_D);
  @override
  _Replanteo createState() => _Replanteo();
}

class _Replanteo extends State<Replanteo> {
  TextEditingController _lateral_input = TextEditingController();
  TextEditingController _diagonal_input = TextEditingController();

  TextEditingController _pataA = TextEditingController();
  TextEditingController _pataB = TextEditingController();
  TextEditingController _pataC = TextEditingController();
  TextEditingController _pataD = TextEditingController();

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
                    builder: (context) => CantidadObra(),
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
        //_resultado();
      },
    );
  }

  //
  Widget _diagonal() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Diagonal    mm',
          labelText: 'Diagonal    mm',
          suffixIcon: Icon(Icons.square_foot),
          icon: Icon(Icons.create)),
      keyboardType:
          TextInputType.numberWithOptions(decimal: true, signed: false),
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

  void _resultado() {
    if (_distanciaA.text.trim().isNotEmpty &&
        _distanciaB.text.trim().isNotEmpty &&
        _distanciaC.text.trim().isNotEmpty &&
        _distanciaD.text.trim().isNotEmpty) {
      final distancia = double.parse(_diagonal_input.text);
      final lateral = double.parse(_lateral_input.text);

      final a = double.parse(_distanciaA.text);
      final b = double.parse(_distanciaB.text);
      final c = double.parse(_distanciaC.text);
      final d = double.parse(_distanciaD.text);

      _resultadoAInt.text = (a - (distancia / 2)).toString();
      _resultadoAExt.text = (a + (distancia / 2)).toString();

      _resultadoBInt.text = (b - (distancia / 2)).toString();
      _resultadoBExt.text = (b + (distancia / 2)).toString();

      _resultadoCInt.text = (c - (distancia / 2)).toString();
      _resultadoCExt.text = (c + (distancia / 2)).toString();

      _resultadoDInt.text = (d - (distancia / 2)).toString();
      _resultadoDExt.text = (d + (distancia / 2)).toString();
    }
  }
}
