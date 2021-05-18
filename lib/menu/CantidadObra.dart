import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Lateral.dart';

class CantidadObra extends StatefulWidget {
  final String pata_A, pata_B, pata_C, pata_D;
  CantidadObra(this.pata_A, this.pata_B, this.pata_C, this.pata_D);
  @override
  _CantidadObra createState() => _CantidadObra();
}

class _CantidadObra extends State<CantidadObra> {
  TextEditingController _promedioA = TextEditingController();
  TextEditingController _lateralA = TextEditingController();
  TextEditingController _resultadoA = TextEditingController();

  TextEditingController _promedioB = TextEditingController();
  TextEditingController _lateralB = TextEditingController();
  TextEditingController _resultadoB = TextEditingController();

  TextEditingController _promedioC = TextEditingController();
  TextEditingController _lateralC = TextEditingController();
  TextEditingController _resultadoC = TextEditingController();

  TextEditingController _promedioD = TextEditingController();
  TextEditingController _lateralD = TextEditingController();
  TextEditingController _resultadoD = TextEditingController();

  TextEditingController _resultado = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'CANTIDAD DE OBRA',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            _opcionesA(),
            Divider(),
            _opcionesB(),
            Divider(),
            _opcionesC(),
            Divider(),
            _opcionesD(),
            Divider(),
            _resultados(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: Icon(Icons.skip_next),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Lateral(),
                  ));
            }));
  }

  Widget _resultados() {
    return AbsorbPointer(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Resultado',
          labelText: 'Resultado',
          suffixIcon: Icon(Icons.square_foot),
          filled: true,
          fillColor: Color(0xFFDBEDFF),
        ),
        controller: _resultado,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
      ),
    );
  }

  Widget _opcionesA() {
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
              hintText: 'Pro. Exc A',
              labelText: 'Pro. Exc A',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _promedioA,
            onChanged: (value) {
              _calculate2();
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
              hintText: 'Lateral A',
              labelText: 'Lateral A',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _lateralA,
            onChanged: (value) {
              _calculate2();
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
              hintText: 'Vol A',
              labelText: 'Vol A',
              filled: true,
              fillColor: Color(0xFFDBEDFF),
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _resultadoA,
          ),
        ),
      ],
    );
  }

  Widget _opcionesB() {
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
              hintText: 'Pro. Exc B',
              labelText: 'Pro. Exc B',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _promedioB,
            onChanged: (value) {
              _calculate2();
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
              hintText: 'Lateral B',
              labelText: 'Lateral B',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _lateralB,
            onChanged: (value) {
              _calculate2();
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
              hintText: 'Vol B',
              labelText: 'Vol B',
              filled: true,
              fillColor: Color(0xFFDBEDFF),
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _resultadoB,
          ),
        ),
      ],
    );
  }

  Widget _opcionesC() {
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
              hintText: 'Pro. Exc C',
              labelText: 'Pro. Exc C',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _promedioC,
            onChanged: (value) {
              _calculate2();
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
              hintText: 'Lateral C',
              labelText: 'Lateral C',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _lateralC,
            onChanged: (value) {
              _calculate2();
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
              hintText: 'Vol C',
              labelText: 'Vol C',
              filled: true,
              fillColor: Color(0xFFDBEDFF),
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _resultadoC,
          ),
        ),
      ],
    );
  }

  Widget _opcionesD() {
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
              hintText: 'Pro. Exc D',
              labelText: 'Pro. Exc D',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _promedioD,
            onChanged: (value) {
              _calculate2();
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
              hintText: 'Lateral D',
              labelText: 'Lateral D',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _lateralD,
            onChanged: (value) {
              _calculate2();
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
              hintText: 'Vol D',
              labelText: 'Vol D',
              filled: true,
              fillColor: Color(0xFFDBEDFF),
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _resultadoD,
          ),
        ),
      ],
    );
  }

  void _calculate2() {
    final a1 = double.parse(_promedioA.text);
    final b1 = double.parse(_lateralA.text);
    final a2 = double.parse(_promedioB.text);
    final b2 = double.parse(_lateralB.text);
    final a3 = double.parse(_promedioC.text);
    final b3 = double.parse(_lateralC.text);
    final a4 = double.parse(_promedioD.text);
    final b4 = double.parse(_lateralD.text);

    if (_promedioA.text.trim().isNotEmpty && _lateralA.text.trim().isNotEmpty) {
      final firstValueA = double.parse(_promedioA.text);
      final secondValueA = double.parse(_lateralA.text);
      _resultadoA.text = (firstValueA * secondValueA * secondValueA).toString();
    }
    if (_promedioB.text.trim().isNotEmpty && _lateralB.text.trim().isNotEmpty) {
      final firstValueB = double.parse(_promedioB.text);
      final secondValueB = double.parse(_lateralB.text);
      _resultadoB.text = (firstValueB * secondValueB * secondValueB).toString();
    }
    if (_promedioC.text.trim().isNotEmpty && _lateralC.text.trim().isNotEmpty) {
      final firstValueC = double.parse(_promedioC.text);
      final secondValueC = double.parse(_lateralC.text);
      _resultadoC.text = (firstValueC * secondValueC * secondValueC).toString();
    }
    if (_promedioD.text.trim().isNotEmpty && _lateralD.text.trim().isNotEmpty) {
      final firstValueD = double.parse(_promedioD.text);
      final secondValueD = double.parse(_lateralD.text);
      _resultadoD.text = (firstValueD * secondValueD * secondValueD).toString();
    }
    final total =
        (a1 * b1 * b1) + (a2 * b2 * b2) + (a3 * b3 * b3) + (a4 * b4 * b4);
    _resultado.text = (total).toString();
  }
}
