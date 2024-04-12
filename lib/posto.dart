import 'package:flutter/material.dart';

class MyPosto extends StatefulWidget {
  const MyPosto({super.key});

  @override
  State<MyPosto> createState() => _MyPostoState();
}

class _MyPostoState extends State<MyPosto> {
  TextEditingController controladorTexto = TextEditingController();
  TextEditingController controladorTexto2 = TextEditingController();
  String resultado = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Posto de Gasolina", style: TextStyle(color: Colors.white),), backgroundColor: Color.fromRGBO(92, 107, 192, 1) ,leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white,), // ícone desejado
            onPressed: () {
            },
          ),
          ),
      body: Container(
        padding: EdgeInsets.all(13.5),
        child: Column(children: [
          SizedBox(height: 40,),
          Text("Álcool ou Gasolina", style: TextStyle(fontSize: 19),),
          SizedBox(height: 30,),
          TextField(
         controller: controladorTexto,
         onChanged: (value) {
          print(value);
         },
         decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide(color: Colors.blue),),
          filled: true,
          fillColor: Color.fromARGB(92, 107, 192, 1),
          labelText: "Digite o preço do litro do álcool",
          prefixIcon: Icon(Icons.ev_station_rounded),
         ),
        ),
        SizedBox(height: 15,),
        TextField(
         controller: controladorTexto2,
         onChanged: (value) {
          print(value);
         },
         decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: BorderSide(color: Colors.blue),),
          filled: true,
          fillColor: Color.fromARGB(92, 107, 192, 1),
          labelText: "Digite o preço do litro da gasolina",
          prefixIcon: Icon(Icons.ev_station_rounded),
         ),
        ),
        SizedBox(height: 30,),
        ElevatedButton(onPressed: (){
          double valor1 = double.parse(controladorTexto.text);
          double valor2 = double.parse(controladorTexto2.text);
          double conta = (valor1/valor2);
          if(conta < 0.7){
            resultado = "Use álcool";
          } else{
            resultado = "Use gasolina";
          }
          setState(() {
            
          });
        },
        child: Text("Calcular")),
        SizedBox(height: 15,),
        Text(resultado, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ]),)
    );
  }
}