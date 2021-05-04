import 'package:flutter/material.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter penyimpanan data',
    home: Scaffold(
        appBar: AppBar(
        title: Text('kwintansi Tiket Wisata Sapo Juma'),
        ),
        body: Kwintansi(),
      ),
    );
  }
}

class Datakwitansi{
  String nokendaraan;
  String namapengunjung;
  String alamat;
  String tanggal;
  String waktu;
  String tarif;
  
  Datakwitansi({this.nokendaraan, this.namapengunjung, this.alamat, this.tanggal, this.waktu, this.tarif});
}

// class DataKwintansi
class Kwintansi extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Kwintansi> {
  final txtnokendaraan = TextEditingController();
  final txtnamapengunjung = TextEditingController();
  final txtalamat = TextEditingController();
  final txttanggal = TextEditingController();
  final txtwaktu = TextEditingController();
  final txttarif = TextEditingController();
  
  List<Widget> data = [];

  onTambah() {
    setState(() {
       data.add(ListTile(leading: Text(txtnokendaraan.text)));
       data.add(ListTile(leading: Text(txtnamapengunjung.text)));
       data.add(ListTile(leading: Text(txtalamat.text)));
       data.add(ListTile(leading: Text(txttanggal.text)));
       data.add(ListTile(leading: Text(txtwaktu.text)));
       data.add(ListTile(leading: Text(txttarif.text))); 
          txtnokendaraan.clear();
          txtnamapengunjung.clear();
          txtalamat.clear();
          txttanggal.clear();
          txtwaktu.clear();
          txttarif.clear();
    });
  }

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(5.0),
          child: Column(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TextField(
            controller: txtnokendaraan,
            decoration: InputDecoration(hintText: 'Nomor Kendaraan " BK " '),
              ),
         TextField(
             controller: txtnamapengunjung,
             decoration: InputDecoration(hintText: 'Nama Pengunjung'),
              ),
          TextField(
              controller: txtalamat,
              decoration: InputDecoration(hintText: 'Alamat'),
              ),
          TextField(
              controller: txttanggal,
              decoration: InputDecoration(hintText: 'Tanggal'),
              ),
          TextField(
              controller: txtwaktu,
              decoration: InputDecoration(hintText: 'Waktu " PAGI/SIANG/MALAM "'),
              ),
              TextField(
                controller: txttarif,
                decoration: InputDecoration(hintText: 'Tarif Masuk "Rp"'),
              ),
              Divider(height: 5.0),
              ElevatedButton(child: Text("Tambah"), onPressed: onTambah),
            ],
          ),
        ),
        new Column(
          children: data,
          
        )
      ],
    );
  }
}