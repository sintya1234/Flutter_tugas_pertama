import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home.dart';

class booking extends StatefulWidget {
  const booking({super.key});

  static const String routeName = "/booking";

  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController username = TextEditingController();
  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerPhone = new TextEditingController();
  TextEditingController controllerCity = new TextEditingController();
  TextEditingController controllerDeskripsi = new TextEditingController();

  void kirimdata() {
    AlertDialog alertDialog = new AlertDialog(
        content: new Container(
            height: 200.0,
            child: new Column(
              children: <Widget>[
                new Text("Nama Lengkap : ${controllerNama.text}"),
                new Text("Email : ${controllerEmail.text}"),
                new Text("Nomor Telepon : ${controllerPhone.text}"),
                new Text("City : ${controllerCity.text}"),
                new Text("Deskripsi : ${controllerDeskripsi.text}"),
                ElevatedButton(
                  child: Text('simpan'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "/");
                  },
                ),
              ],
            )));

    showDialog(context: context, builder: (ctx) => alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Destinasi"),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(20.0),
              child: Form(
                  key: _formKey,
                  child: new Column(
                    children: <Widget>[
                      new TextFormField(
                          controller: controllerNama,
                          decoration: new InputDecoration(
                              hintText: "Nama Lengkap",
                              labelText: "Nama Lengkap",
                              border: new OutlineInputBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                              return "Masukkan nama yang benar";
                            } else {
                              return null;
                            }
                          }),
                      new Padding(
                        padding: new EdgeInsets.only(top: 20.0),
                      ),
                      new TextFormField(
                          controller: controllerEmail,
                          decoration: new InputDecoration(
                              hintText: "Email",
                              labelText: "email",
                              border: new OutlineInputBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                              return "masukkan email yang benar";
                            } else {
                              return null;
                            }
                          }),
                      new Padding(
                        padding: new EdgeInsets.only(top: 20.0),
                      ),
                      new TextFormField(
                          controller: controllerPhone,
                          decoration: new InputDecoration(
                              hintText: "Phone",
                              labelText: "phone",
                              border: new OutlineInputBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                                    .hasMatch(value)) {
                              return " masukkan nomor yang benar";
                            } else {
                              return null;
                            }
                          }),
                      new Padding(
                        padding: new EdgeInsets.only(top: 20.0),
                      ),
                      new TextFormField(
                          controller: controllerCity,
                          decoration: new InputDecoration(
                              hintText: "City",
                              labelText: "City",
                              border: new OutlineInputBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Isi kota";
                            } else {
                              return null;
                            }
                          }),
                      new Padding(
                        padding: new EdgeInsets.only(top: 20.0),
                      ),
                      new TextFormField(
                          controller: controllerDeskripsi,
                          maxLines: 3,
                          decoration: new InputDecoration(
                              hintText: "deskripsi",
                              labelText: "deskripsi",
                              border: new OutlineInputBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0)))),
                      new Padding(
                        padding: new EdgeInsets.only(top: 20.0),
                      ),
                      ElevatedButton(
                        child: Text('kirim'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            kirimdata();
                          }
                        },
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
