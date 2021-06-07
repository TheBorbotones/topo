import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Replanteo.dart';

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

  TextEditingController _resultadoIntProfA = TextEditingController();
  TextEditingController _resultadoExtProfA = TextEditingController();
  TextEditingController _resultadoIntProfB = TextEditingController();
  TextEditingController _resultadoExtProfB = TextEditingController();
  TextEditingController _resultadoIntProfC = TextEditingController();
  TextEditingController _resultadoExtProfC = TextEditingController();
  TextEditingController _resultadoIntProfD = TextEditingController();
  TextEditingController _resultadoExtProfD = TextEditingController();

  TextEditingController _promedioA = TextEditingController();
  TextEditingController _promedioB = TextEditingController();
  TextEditingController _promedioC = TextEditingController();
  TextEditingController _promedioD = TextEditingController();

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
            _crearDropdown(),
            Divider(),
            _cotaReferencia(),
            Divider(),
            _excavacionCotaA(),
            Divider(),
            _excavacionProfA(),
            Divider(),
            _PromedioA(),
            Divider(),
            _excavacionCotaB(),
            Divider(),
            _excavacionProfB(),
            Divider(),
            _PromedioB(),
            Divider(),
            _excavacionCotaC(),
            Divider(),
            _excavacionProfC(),
            Divider(),
            _PromedioC(),
            Divider(),
            _excavacionCotaD(),
            Divider(),
            _excavacionProfD(),
            Divider(),
            _PromedioD(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 10.0,
            child: Icon(Icons.skip_next),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Replanteo(
                        _pataA.text,
                        _pataB.text,
                        _pataC.text,
                        _pataD.text,
                        _promedioA.text,
                        _promedioB.text,
                        _promedioC.text,
                        _promedioD.text),
                  ));
            }));
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

  Widget _excavacionCotaC() {
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
                hintText: 'COTA C int',
                labelText: 'COTA C int',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoCotaFundIntC,
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
                hintText: 'COTA C ext',
                labelText: 'COTA C ext',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoCotaFundExtC,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ), //BoxDecoration
          ),
          //Container
        ),
        //Flexible
      ],
    );
  }

  Widget _excavacionCotaD() {
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
                hintText: 'COTA D int',
                labelText: 'COTA D int',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoCotaFundIntD,
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
                hintText: 'COTA D ext',
                labelText: 'COTA D ext',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0xFFDBEDFF),
              ),
              controller: _resultadoCotaFundExtD,
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
            padding: const EdgeInsets.all(8.0),
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
              contentPadding: EdgeInsets.all(8),
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
            padding: const EdgeInsets.all(8.0),
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
              contentPadding: EdgeInsets.all(8),
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
            padding: const EdgeInsets.all(8.0),
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
              contentPadding: EdgeInsets.all(8),
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
            padding: const EdgeInsets.all(8.0),
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
              contentPadding: EdgeInsets.all(8),
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

  //
  Widget _excavacionProfA() {
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
                hintText: 'PROF A int',
                labelText: 'PROF A int',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0x33BAFF),
              ),
              controller: _resultadoIntProfA,
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
                hintText: 'PROF A ext',
                labelText: 'PROF A ext',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0x33BAFF),
              ),
              controller: _resultadoExtProfA,
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
  Widget _excavacionProfB() {
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
                hintText: 'PROF B int',
                labelText: 'PROF B int',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0x33BAFF),
              ),
              controller: _resultadoIntProfB,
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
                hintText: 'PROF B ext',
                labelText: 'PROF B ext',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0x33BAFF),
              ),
              controller: _resultadoExtProfB,
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
  Widget _excavacionProfC() {
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
                hintText: 'PROF C int',
                labelText: 'PROF C int',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0x33BAFF),
              ),
              controller: _resultadoIntProfC,
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
                hintText: 'PROF C ext',
                labelText: 'PROF C ext',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0x33BAFF),
              ),
              controller: _resultadoExtProfC,
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
  Widget _excavacionProfD() {
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
                hintText: 'PROF D int',
                labelText: 'PROF D int',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0x33BAFF),
              ),
              controller: _resultadoIntProfD,
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
                hintText: 'PROF D ext',
                labelText: 'PROF D ext',
                suffixIcon: Icon(Icons.square_foot),
                filled: true,
                fillColor: Color(0x33BAFF),
              ),
              controller: _resultadoExtProfD,
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
  Widget _PromedioA() {
    return AbsorbPointer(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Promedio A',
          labelText: 'Promedio A',
          suffixIcon: Icon(Icons.square_foot),
          filled: true,
          fillColor: Color(0xFFDBEDFF),
        ),
        controller: _promedioA,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
      ),
    );
  }

  //
  Widget _PromedioB() {
    return AbsorbPointer(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Promedio B',
          labelText: 'Promedio B',
          suffixIcon: Icon(Icons.square_foot),
          filled: true,
          fillColor: Color(0xFFDBEDFF),
        ),
        controller: _promedioB,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
      ),
    );
  }

  //
  Widget _PromedioC() {
    return AbsorbPointer(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Promedio C',
          labelText: 'Promedio C',
          suffixIcon: Icon(Icons.square_foot),
          filled: true,
          fillColor: Color(0xFFDBEDFF),
        ),
        controller: _promedioC,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
      ),
    );
  }

  //
  Widget _PromedioD() {
    return AbsorbPointer(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Promedio D',
          labelText: 'Promedio D',
          suffixIcon: Icon(Icons.square_foot),
          filled: true,
          fillColor: Color(0xFFDBEDFF),
        ),
        controller: _promedioD,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
      ),
    );
  }

  //
  void _calculate() {
    if (_cotaCentralInput.text.trim().isNotEmpty &&
        _profundidadInput.text.trim().isNotEmpty) {
      double firstValue = double.parse(_cotaCentralInput.text);
      double secondValue = double.parse(_profundidadInput.text);
      _resultado.text = (firstValue - secondValue).toString();
    }
  }

  //
  void _calculate2() {
    if (_cotaCentralInput.text.trim().isNotEmpty &&
        _profundidadInput.text.trim().isNotEmpty &&
        _pataA.text.trim().isNotEmpty &&
        _pataB.text.trim().isNotEmpty &&
        _pataC.text.trim().isNotEmpty &&
        _pataD.text.trim().isNotEmpty) {
      double firstValue = double.parse(_cotaCentralInput.text);
      double secondValue = double.parse(_profundidadInput.text);

      double pataValueA = double.parse(_pataA.text);
      double pataValueB = double.parse(_pataB.text);
      double pataValueC = double.parse(_pataC.text);
      double pataValueD = double.parse(_pataD.text);

      double pataValueAInt = double.parse(_pataIntA.text);
      double pataValueAExt = double.parse(_pataExtA.text);
      double pataValueBInt = double.parse(_pataIntB.text);
      double pataValueBExt = double.parse(_pataExtB.text);
      double pataValueCInt = double.parse(_pataIntC.text);
      double pataValueCExt = double.parse(_pataExtC.text);
      double pataValueDInt = double.parse(_pataIntD.text);
      double pataValueDExt = double.parse(_pataExtD.text);

      double total = firstValue - secondValue;
      switch (_opcionSeleccionada) {
        case 'A':
          //A
          _resultadoCotaFundIntA.text = (total.toStringAsFixed(2)).toString();
          _resultadoCotaFundExtA.text = (total.toStringAsFixed(2)).toString();
          _resultadoIntProfA.text =
              ((pataValueAInt - total).toStringAsFixed(2)).toString();
          _resultadoExtProfA.text =
              ((pataValueAExt - total).toStringAsFixed(2)).toString();

          _promedioA.text =
              ((((pataValueAInt - total) + (pataValueAExt - total)) / 2)
                      .toStringAsFixed(2))
                  .toString();
          //B
          _resultadoCotaFundIntB.text =
              ((total - (pataValueB - pataValueA)).toStringAsFixed(2))
                  .toString();
          _resultadoCotaFundExtB.text =
              ((total - (pataValueB - pataValueA)).toStringAsFixed(2))
                  .toString();
          _resultadoIntProfB.text =
              ((pataValueBInt - (total - (pataValueB - pataValueA)))
                      .toStringAsFixed(2))
                  .toString();
          _resultadoExtProfB.text =
              ((pataValueBExt - (total - (pataValueB - pataValueA)))
                      .toStringAsFixed(2))
                  .toString();
          _promedioB.text =
              ((((pataValueBInt - (total - (pataValueB - pataValueA))) +
                              (pataValueBExt -
                                  (total - (pataValueB - pataValueA)))) /
                          2)
                      .toStringAsFixed(2))
                  .toString();
          //C
          _resultadoCotaFundIntC.text =
              ((total - (pataValueC - pataValueA)).toStringAsFixed(2))
                  .toString();
          _resultadoCotaFundExtC.text =
              ((total - (pataValueC - pataValueA)).toStringAsFixed(2))
                  .toString();
          _resultadoIntProfC.text =
              ((pataValueCInt - (total - (pataValueC - pataValueA)))
                      .toStringAsFixed(2))
                  .toString();
          _resultadoExtProfC.text =
              ((pataValueCExt - (total - (pataValueC - pataValueA)))
                      .toStringAsFixed(2))
                  .toString();
          _promedioC.text =
              ((((pataValueCInt - (total - (pataValueC - pataValueA))) +
                              (pataValueCExt -
                                  (total - (pataValueC - pataValueA)))) /
                          2)
                      .toStringAsFixed(2))
                  .toString();
          //D
          _resultadoCotaFundIntD.text =
              ((total - (pataValueD - pataValueA)).toStringAsFixed(2))
                  .toString();
          _resultadoCotaFundExtD.text =
              ((total - (pataValueD - pataValueA)).toStringAsFixed(2))
                  .toString();
          _resultadoIntProfD.text =
              ((pataValueDInt - (total - (pataValueD - pataValueA)))
                      .toStringAsFixed(2))
                  .toString();
          _resultadoExtProfD.text =
              ((pataValueDExt - (total - (pataValueD - pataValueA)))
                      .toStringAsFixed(2))
                  .toString();
          _promedioD.text =
              ((((pataValueDInt - (total - (pataValueD - pataValueA))) +
                              (pataValueDExt -
                                  (total - (pataValueD - pataValueA)))) /
                          2)
                      .toStringAsFixed(2))
                  .toString();
          break;
        case 'B':
          //A
          _resultadoCotaFundIntA.text =
              ((total - (pataValueA - pataValueB)).toStringAsFixed(2))
                  .toString();
          _resultadoCotaFundExtA.text =
              ((total - (pataValueA - pataValueB)).toStringAsFixed(2))
                  .toString();
          _resultadoIntProfA.text =
              ((pataValueAInt - (total - (pataValueA - pataValueB)))
                      .toStringAsFixed(2))
                  .toString();
          _resultadoExtProfA.text =
              ((pataValueAExt - (total - (pataValueA - pataValueB)))
                      .toStringAsFixed(2))
                  .toString();
          _promedioA.text =
              ((((pataValueAInt - (total - (pataValueA - pataValueB))) +
                              (pataValueAExt -
                                  (total - (pataValueA - pataValueB)))) /
                          2)
                      .toStringAsFixed(2))
                  .toString();
          //B
          _resultadoCotaFundIntB.text = ((total).toStringAsFixed(2)).toString();
          _resultadoCotaFundExtB.text = ((total).toStringAsFixed(2)).toString();
          _resultadoIntProfB.text =
              ((pataValueBInt - total).toStringAsFixed(2)).toString();
          _resultadoExtProfB.text =
              ((pataValueBExt - total).toStringAsFixed(2)).toString();
          _promedioB.text =
              ((((pataValueBInt - total) + (pataValueBExt - total)) / 2)
                      .toStringAsFixed(2))
                  .toString();
          //C
          _resultadoCotaFundIntC.text =
              ((total - (pataValueC - pataValueB)).toStringAsFixed(2))
                  .toString();
          _resultadoCotaFundExtC.text =
              ((total - (pataValueC - pataValueB)).toStringAsFixed(2))
                  .toString();
          _resultadoIntProfC.text =
              ((pataValueCInt - (total - (pataValueC - pataValueB)))
                      .toStringAsFixed(2))
                  .toString();
          _resultadoExtProfC.text =
              ((pataValueCExt - (total - (pataValueC - pataValueB)))
                      .toStringAsFixed(2))
                  .toString();
          _promedioC.text =
              ((((pataValueCInt - (total - (pataValueC - pataValueB))) +
                              (pataValueCExt -
                                  (total - (pataValueC - pataValueB)))) /
                          2)
                      .toStringAsFixed(2))
                  .toString();
          //D
          _resultadoCotaFundIntD.text =
              ((total - (pataValueD - pataValueB)).toStringAsFixed(2))
                  .toString();
          _resultadoCotaFundExtD.text =
              ((total - (pataValueD - pataValueB)).toStringAsFixed(2))
                  .toString();
          _resultadoIntProfD.text =
              ((pataValueDInt - (total - (pataValueD - pataValueB)))
                      .toStringAsFixed(2))
                  .toString();
          _resultadoExtProfD.text =
              ((pataValueDExt - (total - (pataValueD - pataValueB)))
                      .toStringAsFixed(2))
                  .toString();
          _promedioD.text =
              ((((pataValueDInt - (total - (pataValueD - pataValueB))) +
                              (pataValueDExt -
                                  (total - (pataValueD - pataValueB)))) /
                          2)
                      .toStringAsFixed(2))
                  .toString();
          break;
        case 'C':
          //A
          _resultadoCotaFundIntA.text =
              ((total - (pataValueA - pataValueC)).toStringAsFixed(2))
                  .toString();
          _resultadoCotaFundExtA.text =
              ((total - (pataValueA - pataValueC)).toStringAsFixed(2))
                  .toString();
          _resultadoIntProfA.text =
              ((pataValueAInt - (total - (pataValueA - pataValueC)))
                      .toStringAsFixed(2))
                  .toString();
          _resultadoExtProfA.text =
              ((pataValueAExt - (total - (pataValueA - pataValueC)))
                      .toStringAsFixed(2))
                  .toString();
          _promedioA.text =
              ((((pataValueAInt - (total - (pataValueA - pataValueC))) +
                              (pataValueAExt -
                                  (total - (pataValueA - pataValueC)))) /
                          2)
                      .toStringAsFixed(2))
                  .toString();
          //B
          _resultadoCotaFundIntB.text =
              ((total - (pataValueB - pataValueC)).toStringAsFixed(2))
                  .toString();
          _resultadoCotaFundExtB.text =
              ((total - (pataValueB - pataValueC)).toStringAsFixed(2))
                  .toString();
          _resultadoIntProfB.text =
              ((pataValueBInt - (total - (pataValueB - pataValueC)))
                      .toStringAsFixed(2))
                  .toString();
          _resultadoExtProfB.text =
              ((pataValueBExt - (total - (pataValueB - pataValueC)))
                      .toStringAsFixed(2))
                  .toString();
          _promedioB.text =
              ((((pataValueBInt - (total - (pataValueB - pataValueC))) +
                              (pataValueBExt -
                                  (total - (pataValueB - pataValueC)))) /
                          2)
                      .toStringAsFixed(2))
                  .toString();
          //C
          _resultadoCotaFundIntC.text = ((total).toStringAsFixed(2)).toString();
          _resultadoCotaFundExtC.text = ((total).toStringAsFixed(2)).toString();
          _resultadoIntProfC.text =
              ((pataValueCInt - total).toStringAsFixed(2)).toString();
          _resultadoExtProfC.text =
              ((pataValueCExt - total).toStringAsFixed(2)).toString();
          _promedioC.text =
              ((((pataValueCInt - total) + (pataValueCExt - total)) / 2)
                      .toStringAsFixed(2))
                  .toString();
          //D
          _resultadoCotaFundIntD.text =
              ((total - (pataValueD - pataValueC)).toStringAsFixed(2))
                  .toString();
          _resultadoCotaFundExtD.text =
              ((total - (pataValueD - pataValueC)).toStringAsFixed(2))
                  .toString();
          _resultadoIntProfD.text =
              ((pataValueDInt - (total - (pataValueD - pataValueC)))
                      .toStringAsFixed(2))
                  .toString();
          _resultadoExtProfD.text =
              ((pataValueDExt - (total - (pataValueD - pataValueC)))
                      .toStringAsFixed(2))
                  .toString();
          _promedioD.text =
              ((((pataValueDInt - (total - (pataValueD - pataValueC))) +
                              (pataValueDExt -
                                  (total - (pataValueD - pataValueC)))) /
                          2)
                      .toStringAsFixed(2))
                  .toString();
          break;
        case 'D':
          //A
          _resultadoCotaFundIntA.text =
              ((total - (pataValueA - pataValueD)).toStringAsFixed(2))
                  .toString();
          _resultadoCotaFundExtA.text =
              ((total - (pataValueA - pataValueD)).toStringAsFixed(2))
                  .toString();
          _resultadoIntProfA.text =
              ((pataValueAInt - (total - (pataValueA - pataValueD)))
                      .toStringAsFixed(2))
                  .toString();
          _resultadoExtProfA.text =
              ((pataValueAExt - (total - (pataValueA - pataValueD)))
                      .toStringAsFixed(2))
                  .toString();
          _promedioA.text =
              ((((pataValueAInt - (total - (pataValueA - pataValueD))) +
                              (pataValueAExt -
                                  (total - (pataValueA - pataValueD)))) /
                          2)
                      .toStringAsFixed(2))
                  .toString();
          //B
          _resultadoCotaFundIntB.text =
              ((total - (pataValueB - pataValueD)).toStringAsFixed(2))
                  .toString();
          _resultadoCotaFundExtB.text =
              ((total - (pataValueB - pataValueD)).toStringAsFixed(2))
                  .toString();
          _resultadoIntProfB.text =
              ((pataValueBInt - (total - (pataValueB - pataValueD)))
                      .toStringAsFixed(2))
                  .toString();
          _resultadoExtProfB.text =
              ((pataValueBExt - (total - (pataValueB - pataValueD)))
                      .toStringAsFixed(2))
                  .toString();
          _promedioB.text =
              ((((pataValueBInt - (total - (pataValueB - pataValueD))) +
                              (pataValueBExt -
                                  (total - (pataValueB - pataValueD)))) /
                          2)
                      .toStringAsFixed(2))
                  .toString();
          //C
          _resultadoCotaFundIntC.text =
              ((total - (pataValueC - pataValueD)).toStringAsFixed(2))
                  .toString();
          _resultadoCotaFundExtC.text =
              ((total - (pataValueC - pataValueD)).toStringAsFixed(2))
                  .toString();
          _resultadoIntProfC.text =
              ((pataValueCInt - (total - (pataValueC - pataValueD)))
                      .toStringAsFixed(2))
                  .toString();
          _resultadoExtProfC.text =
              ((pataValueCExt - (total - (pataValueC - pataValueD)))
                      .toStringAsFixed(2))
                  .toString();
          _promedioC.text =
              ((((pataValueCInt - (total - (pataValueC - pataValueD))) +
                              (pataValueCExt -
                                  (total - (pataValueC - pataValueD)))) /
                          2)
                      .toStringAsFixed(2))
                  .toString();
          //D
          _resultadoCotaFundIntD.text = ((total).toStringAsFixed(2)).toString();
          _resultadoCotaFundExtD.text = ((total).toStringAsFixed(2)).toString();
          _resultadoIntProfD.text =
              ((pataValueDInt - total).toStringAsFixed(2)).toString();
          _resultadoExtProfD.text =
              ((pataValueDExt - total).toStringAsFixed(2)).toString();
          _promedioD.text =
              ((((pataValueDInt - total) + (pataValueDExt - total)) / 2)
                      .toStringAsFixed(2))
                  .toString();
          break;
      }
    }
  }
}

class RegExInputFormatter {
  static withRegex(String s) {}
}
