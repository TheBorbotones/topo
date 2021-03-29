import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculo extends StatefulWidget {
  @override
  _Calculo createState() => _Calculo();
}

class _Calculo extends State<Calculo> {
  String _opcionSeleccionada = 'A';

  List<String> _poderes = ['A', 'B', 'C', 'D'];

  TextEditingController _cotaCentralInput = TextEditingController();
  TextEditingController _profundidadInput = TextEditingController();
  TextEditingController _pataA = TextEditingController();
  TextEditingController _pataB = TextEditingController();
  TextEditingController _pataC = TextEditingController();
  TextEditingController _pataD = TextEditingController();
  TextEditingController _resultado = TextEditingController();

  TextEditingController _resultadoCotaFundIntA = TextEditingController();
  TextEditingController _resultadoCotaFundExtA = TextEditingController();

  TextEditingController _resultadoCotaFundIntB = TextEditingController();
  TextEditingController _resultadoCotaFundExtB = TextEditingController();

  TextEditingController _resultadoCotaFundIntC = TextEditingController();
  TextEditingController _resultadoCotaFundExtC = TextEditingController();

  TextEditingController _resultadoCotaFundIntD = TextEditingController();
  TextEditingController _resultadoCotaFundExtD = TextEditingController();

  TextEditingController _pataIntA = TextEditingController();
  TextEditingController _pataExtA = TextEditingController();

  TextEditingController _pataIntB = TextEditingController();
  TextEditingController _pataExtB = TextEditingController();

  TextEditingController _pataIntC = TextEditingController();
  TextEditingController _pataExtC = TextEditingController();

  TextEditingController _pataIntD = TextEditingController();
  TextEditingController _pataExtD = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Niveles de excavacion',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _cotaCentral(),
          Divider(),
          _profundidad(),
          Divider(),
          _crearDropdown(),
          Divider(),
          _opciones(),
          Divider(),
          _patasA(),
          Divider(),
          _patasB(),
          Divider(),
          _patasC(),
          Divider(),
          _patasD(),
          Divider(),
          _cotaReferencia(),
          Divider(),
          _excavacionCotaA(),
          Divider(),
          _excavacionCotaB(),
        ],
      ),
    );
  }

  Widget _cotaReferencia() {
    return AbsorbPointer(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'COTA REFERENCIA',
          labelText: 'COTA REFERENCIA',
          suffixIcon: Icon(Icons.square_foot),
          filled: true,
          fillColor: Color(0xFFDBEDFF),
        ),
        controller: _resultado,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
      ),
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
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'COTA B int',
                labelText: 'COTA B int',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoCotaFundIntB,
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
                hintText: 'COTA B ext',
                labelText: 'COTA B ext',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoCotaFundExtB,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ), //BoxDecoration
          ),
          //Container
        ),
        //Flexible
      ],
    );
  }

  Widget _cotaCentral() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'COTA ESTACA CENTRAL',
          labelText: 'COTA ESTACA CENTRAL',
          suffixIcon: Icon(Icons.square_foot),
          icon: Icon(Icons.create)),
      keyboardType:
          TextInputType.numberWithOptions(decimal: true, signed: false),
      controller: _cotaCentralInput,
      onChanged: (value) {
        _calculate();
      },
    );
  }

  //
  Widget _profundidad() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'PROFUNDIDAD DE EXCAVACIÓN',
          labelText: 'PROFUNDIDAD DE EXCAVACIÓN',
          suffixIcon: Icon(Icons.square_foot),
          icon: Icon(Icons.create)),
      keyboardType:
          TextInputType.numberWithOptions(decimal: true, signed: false),
      controller: _profundidadInput,
      onChanged: (value) {
        _calculate();
      },
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return lista;
  }

  Widget _crearDropdown() {
    return Row(
      children: <Widget>[
        Text(
          'PATA',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
          textWidthBasis: TextWidthBasis.longestLine,
        ),
        SizedBox(width: 50.0),
        Expanded(
          child: DropdownButton(
            hint: Text('Seleccione una pata'),
            value: _opcionSeleccionada,
            items: getOpcionesDropdown(),
            onChanged: (opt) {
              setState(() {
                _opcionSeleccionada = opt;
              });
              _calculate2();
            },
          ),
        )
      ],
    );
  }

  Widget _opciones() {
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
              hintText: 'A',
              labelText: 'A',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _pataA,
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
              hintText: 'B',
              labelText: 'B',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _pataB,
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
              hintText: 'C',
              labelText: 'C',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _pataC,
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
              hintText: 'D',
              labelText: 'D',
              suffixIcon: Icon(Icons.square_foot),
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: _pataD,
            onChanged: (value) {
              _calculate2();
            },
          ),
        ),
      ],
    );
  }

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
            padding: const EdgeInsets.all(20.0),
            child: new TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'A int',
                labelText: 'A int',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _pataIntA,
              onChanged: (value) {
                _calculate2();
              },
            ),
          ),
        ),
        new Flexible(
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'A ext',
              labelText: 'A ext',
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
            padding: const EdgeInsets.all(20.0),
            child: new TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'B int',
                labelText: 'B int',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _pataIntB,
              onChanged: (value) {
                _calculate2();
              },
            ),
          ),
        ),
        new Flexible(
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'B ext',
              labelText: 'B ext',
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
            padding: const EdgeInsets.all(20.0),
            child: new TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'C int',
                labelText: 'C int',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _pataIntC,
              onChanged: (value) {
                _calculate2();
              },
            ),
          ),
        ),
        new Flexible(
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'C ext',
              labelText: 'C ext',
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
            padding: const EdgeInsets.all(20.0),
            child: new TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'D int',
                labelText: 'D int',
                suffixIcon: Icon(Icons.square_foot),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _pataIntD,
              onChanged: (value) {
                _calculate2();
              },
            ),
          ),
        ),
        new Flexible(
          child: new TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'D ext',
              labelText: 'D ext',
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

  void _calculate() {
    if (_cotaCentralInput.text.trim().isNotEmpty &&
        _profundidadInput.text.trim().isNotEmpty) {
      final firstValue = double.parse(_cotaCentralInput.text);
      final secondValue = double.parse(_profundidadInput.text);
      _resultado.text = (firstValue - secondValue).toString();
    }
  }

  void _calculate2() {
    if (_cotaCentralInput.text.trim().isNotEmpty &&
        _profundidadInput.text.trim().isNotEmpty &&
        _pataA.text.trim().isNotEmpty &&
        _pataB.text.trim().isNotEmpty &&
        _pataC.text.trim().isNotEmpty &&
        _pataD.text.trim().isNotEmpty) {
      final firstValue = double.parse(_cotaCentralInput.text);
      final secondValue = double.parse(_profundidadInput.text);

      final pataValueA = double.parse(_pataA.text);
      final pataValueB = double.parse(_pataB.text);
      final pataValueC = double.parse(_pataC.text);
      final pataValueD = double.parse(_pataD.text);

      final total = firstValue - secondValue;
      switch (_opcionSeleccionada) {
        case 'A':
          _resultadoCotaFundIntA.text = (total).toString();
          _resultadoCotaFundExtA.text = (total).toString();

          _resultadoCotaFundIntB.text = (total).toString();
          _resultadoCotaFundExtB.text = (total).toString();
          break;
        case 'B':
          _resultadoCotaFundIntA.text =
              (total - (pataValueA - pataValueB)).toString();
          _resultadoCotaFundExtA.text =
              (total - (pataValueA - pataValueB)).toString();

          _resultadoCotaFundIntB.text = (total).toString();
          _resultadoCotaFundExtB.text = (total).toString();
          break;
        case 'C':
          _resultadoCotaFundIntA.text =
              (total - (pataValueA - pataValueC)).toString();
          _resultadoCotaFundExtA.text =
              (total - (pataValueA - pataValueC)).toString();

          _resultadoCotaFundIntB.text = (total).toString();
          _resultadoCotaFundExtB.text = (total).toString();
          break;
        case 'D':
          _resultadoCotaFundIntA.text =
              (total - (pataValueA - pataValueD)).toString();
          _resultadoCotaFundExtA.text =
              (total - (pataValueA - pataValueD)).toString();

          _resultadoCotaFundIntB.text = (total).toString();
          _resultadoCotaFundExtB.text = (total).toString();
          break;
      }
    }
  }
}

class RegExInputFormatter {
  static withRegex(String s) {}
}
