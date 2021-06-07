import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Lateral.dart';

class CantidadObra extends StatefulWidget {
  final String pata_A,
      pata_B,
      pata_C,
      pata_D,
      promedioA,
      promedioB,
      promedioC,
      promedioD,
      lateralAux,
      auxiliarA,
      auxiliarB,
      auxiliarC,
      auxiliarD,
      volumen;
  CantidadObra(
      this.pata_A,
      this.pata_B,
      this.pata_C,
      this.pata_D,
      this.promedioA,
      this.promedioB,
      this.promedioC,
      this.promedioD,
      this.lateralAux,
      this.auxiliarA,
      this.auxiliarB,
      this.auxiliarC,
      this.auxiliarD,
      this.volumen);
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
  TextEditingController _lateralAux = TextEditingController();

  TextEditingController _pataA = TextEditingController();
  TextEditingController _pataB = TextEditingController();
  TextEditingController _pataC = TextEditingController();
  TextEditingController _pataD = TextEditingController();

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
                    builder: (context) => Lateral(
                        _pataA.text, _pataB.text, _pataC.text, _pataD.text),
                  ));
            }));
  }

  Widget _resultados() {
    return AbsorbPointer(
      child: TextField(
        decoration: InputDecoration(
          enabled: false,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Volumen m3',
          labelText: 'Volumen m3',
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
              enabled: false,
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Pro. Exc A',
              labelText: 'Pro. Exc A',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _promedioA,
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              enabled: false,
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Lateral A',
              labelText: 'Lateral A',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _lateralA,
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              enabled: false,
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
              enabled: false,
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Pro. Exc B',
              labelText: 'Pro. Exc B',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _promedioB,
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              enabled: false,
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Lateral B',
              labelText: 'Lateral B',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _lateralB,
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              enabled: false,
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
              enabled: false,
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Pro. Exc C',
              labelText: 'Pro. Exc C',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _promedioC,
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              enabled: false,
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Lateral C',
              labelText: 'Lateral C',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _lateralC,
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              enabled: false,
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
              enabled: false,
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Pro. Exc D',
              labelText: 'Pro. Exc D',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _promedioD,
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              enabled: false,
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Lateral D',
              labelText: 'Lateral D',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _lateralD,
          ),
        ),
        new Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              enabled: false,
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

    _lateralA.text = (widget.lateralAux).toString();
    _lateralB.text = (widget.lateralAux).toString();
    _lateralC.text = (widget.lateralAux).toString();
    _lateralD.text = (widget.lateralAux).toString();

    _resultadoA.text = (widget.auxiliarA).toString();
    _resultadoB.text = (widget.auxiliarB).toString();
    _resultadoC.text = (widget.auxiliarC).toString();
    _resultadoD.text = (widget.auxiliarD).toString();
    _resultado.text = (widget.volumen).toString();
  }
}
