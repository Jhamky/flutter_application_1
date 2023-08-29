import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentacion/models/Isardc.dart';
import 'package:go_router/go_router.dart';

//import 'package:flutter_application_1/database/service_Isar.dart';
//import 'package:go_router/go_router.dart';

class DirrecionesNew extends StatefulWidget {
  static const name = 'CreateGRUP';
  const DirrecionesNew({Key? key}) : super(key: key);

  @override
  State<DirrecionesNew> createState() => _DirrecionesNewState();
}

class _DirrecionesNewState extends State<DirrecionesNew> {
  TextEditingController nombrefm = TextEditingController();
  TextEditingController callefm = TextEditingController();
  TextEditingController codigopostalfm = TextEditingController();
  TextEditingController estadofm = TextEditingController();
  TextEditingController minicipiofm = TextEditingController();
  TextEditingController asentamientofm = TextEditingController();
  TextEditingController adicionalfm = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  //final IsarService = IsarService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agregar Dic.')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: nombrefm,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: 'Nombre:',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      controller: callefm,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Calle:',
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: codigopostalfm,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: 'Codigo Postal:',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      controller: estadofm,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Estado:',
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: minicipiofm,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: 'Municipio:',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: TextFormField(
                      controller: asentamientofm,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Asentamiento:',
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: adicionalfm,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: 'Adicional:',
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          widget.service.savedicc(
                            Isardc()..name = nombrefm.text,
                          );
                          // Map<String, dynamic> info = {
                          //   'Nombre': nombrefm,
                          //   'Calle': callefm,
                          //   'Codigo Postal': codigopostalfm,
                          //   'Estado': estadofm,
                          //   'Municipio': minicipiofm,
                          //   'Asentamiento': asentamientofm,
                          //   'Adicional': adicionalfm
                          //};
                          context.push('/');
                        }
                      },
                      child: const Text('Guardar')),
                ],
              )),
        ),
      ),
    );
  }
}
