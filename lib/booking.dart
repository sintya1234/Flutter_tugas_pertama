import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class booking extends StatefulWidget {
  const booking({super.key});

  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {
  // String _jk = "";
  // void _pilihjk(String value) {
  //   setState(() {
  //     _jk = value;
  //   });
  // }

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
                    primary: Colors.green,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            )));

    showDialog(context: context, builder: (ctx) => alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking page"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(20.0),
              child: new Column(
                children: <Widget>[
                  new TextFormField(
                      controller: controllerNama,
                      decoration: new InputDecoration(
                          hintText: "Nama Lengkap",
                          labelText: "Nama Lengkap",
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(20.0))),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return " Enter correct name";
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
                              borderRadius: new BorderRadius.circular(20.0))),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[\w-\.]+@([\w-]+\.)+\w]{2,4}')
                                .hasMatch(value)) {
                          return " Enter correct email";
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
                              borderRadius: new BorderRadius.circular(20.0))),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                                .hasMatch(value)) {
                          return " Enter correct nomor";
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
                              borderRadius: new BorderRadius.circular(20.0)))),

                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),

                  // new TextField(
                  //     obscureText: true,
                  //     decoration: new InputDecoration(
                  //         hintText: "Password",
                  //         labelText: "Password",
                  //         border: new OutlineInputBorder(
                  //             borderRadius: new BorderRadius.circular(20.0)))),
                  // new Padding(
                  //   padding: new EdgeInsets.only(top: 20.0),
                  // ),
                  new TextFormField(
                      controller: controllerDeskripsi,
                      maxLines: 3,
                      decoration: new InputDecoration(
                          hintText: "deskripsi",
                          labelText: "deskripsi",
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(20.0)))),
                  new Padding(
                    padding: new EdgeInsets.only(top: 20.0),
                  ),

                  ElevatedButton(
                    child: Text('Simpan'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        kirimdata();
                      }
                    },
                  ),
                  // new RadioListTile(
                  //   value: "Laki-laki",
                  //   title: new Text("Laki-laki"),
                  //   groupValue: _jk,
                  //   onChanged: (String value) {
                  //     _pilihjk(value);
                  //   },
                  // ),
                ],
              )

              // padding: EdgeInsets.all(20.0),
              // child: Form(
              //     key: _formKey,
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: <Widget>[
              //         TextFormField(
              //             validator: (value) =>
              //                 ('value'.length < 2) ? 'test' : null),
              //         TextFormField(
              //           controller: username,
              //           validator: (value) => (username.text.isEmpty)
              //               ? 'Ga boleh kosong yaaa'
              //               : null,
              //         ),
              //         TextFormField(
              //           controller: username,
              //           validator: (value) => (username.text.isEmpty)
              //               ? 'Ga boleh kosong yaaa'
              //               : null,
              //         ),
              //         // TextFormField(
              //           // validator: (value) {
              //           //   Pattern pattern = r'(^(?:[+0]6)?[0-9]{10,12}$';
              //           //   RegExp regExp = new RegExp(pattern);
              //           //   return (!regExp.hasMatch(value));
              //           // }
              //         // ),

              //               FloatingActionButton.extended(
              //       backgroundColor: const Color(0xff03dac6),
              //       foregroundColor: Colors.black,
              //       onPressed: () {
              //         if(_formKey.currentState.validate()){

              //         }
              //       },
              //       icon: Icon(Icons.add),
              //       label: Text('EXTENDED'),
              //     )

              //         ),
              //       ],
              //     )
              ),
        ],
      ),
    );
  }
}
