import 'package:easy_nutrition/home_page.dart';
import 'package:easy_nutrition/signup4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class PatientRegisterM extends StatefulWidget {


  @override
  _PatientRegisterMState createState() => _PatientRegisterMState();
}

class _PatientRegisterMState extends State<PatientRegisterM> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Paciente",
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,
            size: 20,
            color: Colors.black,),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Sexo",
                    style: TextStyle(
                        fontSize: 24,
                        color:Colors.black87),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 130,
                        height: 50,

                        onPressed: () {

                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xff47FF86),
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          "Hombre",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                          ),
                        ),
                      ),

                      SizedBox(width: 20),

                      MaterialButton(
                        color: Color(0xff47FF86),
                        minWidth: 130,
                        height: 50,
                        onPressed: (){

                        },

                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xff47FF86),
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          "Mujer",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ],
                  ),
                ],

              ),


              Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),

                  DateWidget(),

              SizedBox(
                height: 20,
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "N??mero de celular",
                  labelText: "Tel??fono de contacto",
                  labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                obscureText: false,
                maxLines: 1,
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                height: 60,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CountryWidget(),
              ),
            ],
          ),
              TextField(
                decoration: InputDecoration(
                  hintText: "En metros (m)",
                  labelText: "??Cu??nto mides?",
                  labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                obscureText: false,
                maxLines: 1,
              ),



              TextField(
                decoration: InputDecoration(
                  hintText: "En kilogramos (kg)",
                  labelText: "??Cu??nto pesas?",
                  labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                obscureText: false,
                maxLines: 1,
              ),

              TextField(
                decoration: InputDecoration(
                  labelText: "??Qu?? tan activo eres?",
                  labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                obscureText: false,
                maxLines: 1,
              ),


              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration:
                BoxDecoration(
                    borderRadius: BorderRadius.circular(50)
                ),


                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage4()));
                  },
                  color: Color(0xff47FF86),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),

                  child: Text(
                    "Siguiente", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CountryWidget extends StatefulWidget {
  @override
  State<CountryWidget> createState() => _CountryWidgetState();
}

class _CountryWidgetState extends State<CountryWidget> {
  String dropdownValue = 'Pa??s';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      //isExpanded: true,
      borderRadius: BorderRadius.circular(12),
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),

      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>["Pa??s", "Afganist??n","Albania","Alemania","Andorra","Angola","Antigua y Barbuda","Arabia Saudita","Argelia","Argentina","Armenia","Australia","Austria","Azerbaiy??n","Bahamas","Banglad??s","Barbados","Bar??in","B??lgica","Belice","Ben??n","Bielorrusia","Birmania","Bolivia","Bosnia y Herzegovina","Botsuana","Brasil","Brun??i","Bulgaria","Burkina Faso","Burundi","But??n","Cabo Verde","Camboya","Camer??n","Canad??","Catar","Chad","Chile","China","Chipre","Ciudad del Vaticano","Colombia","Comoras","Corea del Norte","Corea del Sur","Costa de Marfil","Costa Rica","Croacia","Cuba","Dinamarca","Dominica","Ecuador","Egipto","El Salvador","Emiratos ??rabes Unidos","Eritrea","Eslovaquia","Eslovenia","Espa??a","Estados Unidos","Estonia","Etiop??a","Filipinas","Finlandia","Fiyi","Francia","Gab??n","Gambia","Georgia","Ghana","Granada","Grecia","Guatemala","Guyana","Guinea","Guinea ecuatorial","Guinea-Bis??u","Hait??","Honduras","Hungr??a","India","Indonesia","Irak","Ir??n","Irlanda","Islandia","Islas Marshall","Islas Salom??n","Israel","Italia","Jamaica","Jap??n","Jordania","Kazajist??n","Kenia","Kirguist??n","Kiribati","Kuwait","Laos","Lesoto","Letonia","L??bano","Liberia","Libia","Liechtenstein","Lituania","Luxemburgo","Madagascar","Malasia","Malaui","Maldivas","Mal??","Malta","Marruecos","Mauricio","Mauritania","M??xico","Micronesia","Moldavia","M??naco","Mongolia","Montenegro","Mozambique","Namibia","Nauru","Nepal","Nicaragua","N??ger","Nigeria","Noruega","Nueva Zelanda","Om??n","Pa??ses Bajos","Pakist??n","Palaos","Palestina","Panam??","Pap??a Nueva Guinea","Paraguay","Per??","Polonia","Portugal","Reino Unido","Rep??blica Centroafricana","Rep??blica Checa","Rep??blica de Macedonia","Rep??blica del Congo","Rep??blica Democr??tica del Congo","Rep??blica Dominicana","Rep??blica Sudafricana","Ruanda","Ruman??a","Rusia","Samoa","San Crist??bal y Nieves","San Marino","San Vicente y las Granadinas","Santa Luc??a","Santo Tom?? y Pr??ncipe","Senegal","Serbia","Seychelles","Sierra Leona","Singapur","Siria","Somalia","Sri Lanka","Suazilandia","Sud??n","Sud??n del Sur","Suecia","Suiza","Surinam","Tailandia","Tanzania","Tayikist??n","Timor Oriental","Togo","Tonga","Trinidad y Tobago","T??nez","Turkmenist??n","Turqu??a","Tuvalu","Ucrania","Uganda","Uruguay","Uzbekist??n","Vanuatu","Venezuela","Vietnam","Yemen","Yibuti","Zambia","Zimbabue"]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


class DateWidget extends StatefulWidget{
  @override
  State<DateWidget> createState() {
    return _DateWidget();
  }
}

class _DateWidget extends State<DateWidget>{
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child:TextField(
          controller: dateinput,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.calendar_today,),
            labelText: "Selecciona tu fecha de nacimiento",
            labelStyle: TextStyle(fontSize: 18, color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          readOnly: true,
          onTap: () async {
            DateTime pickedDate = await showDatePicker(
                context: context, initialDate: DateTime.now(),
                firstDate: DateTime(1942),
                lastDate: DateTime(2023)
            ) as DateTime;
            if(pickedDate != null ){
              print(pickedDate);
              String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
              print(formattedDate);
              setState(() {
                dateinput.text = formattedDate;
              });
            }else{
              print("No ha seleccionado una fecha");
            }
          },
        )
    );
  }
}
