import 'package:flutter/material.dart';


class NilaiPage extends StatefulWidget {
  @override
  _NilaiPageState createState() => _NilaiPageState();
}

class _NilaiPageState extends State<NilaiPage> {
  double tugas1 = 0.0;
  double tugas2 = 0.0;
  double uts = 0.0;
  double uas = 0.0;
  double nilaiAkhir = 0.0;
  String grade = '';

  void hitungNilaiAkhir() {
    // Bobot nilai
    double bobotTugas1 = 0.2;
    double bobotTugas2 = 0.2;
    double bobotUTS = 0.3;
    double bobotUAS = 0.3;

    // Hitung nilai akhir
    nilaiAkhir = (tugas1 * bobotTugas1) +
        (tugas2 * bobotTugas2) +
        (uts * bobotUTS) +
        (uas * bobotUAS);

    // Tentukan grade berdasarkan nilai akhir
    if (nilaiAkhir >= 80) {
      grade = 'A';
    } else if (nilaiAkhir >= 70) {
      grade = 'B';
    } else if (nilaiAkhir >= 60) {
      grade = 'C';
    } else if (nilaiAkhir >= 50) {
      grade = 'D';
    } else {
      grade = 'E';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          backgroundColor: Color(0xFF7165D6),
          title: Align(
            alignment: Alignment.centerLeft,
              child: Text(
                "Hitung Nilai Akhir",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          SizedBox(height: 25),
          Padding(   
            padding:EdgeInsets.only(right:280 ),
            child:  Text(
             "Tugas 1:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
             ),
           ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
               border: OutlineInputBorder(),
             ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                tugas1 = double.tryParse(value) ?? 0.0;
              },
            ),
            SizedBox(height: 25),
          Padding(   
            padding:EdgeInsets.only(right:280 ),
            child:  Text(
             "Tugas 2:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
             ),
           ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
               border: OutlineInputBorder(),
             ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                tugas2 = double.tryParse(value) ?? 0.0;
              },
            ),
              SizedBox(height: 25),
               Padding(   
              padding:EdgeInsets.only(right:315 ),
              child:  Text(
              "UTS:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
           ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
               border: OutlineInputBorder(),
             ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                uts = double.tryParse(value) ?? 0.0;
              },
            ),
            SizedBox(height: 25),
               Padding(   
              padding:EdgeInsets.only(right:315 ),
              child:  Text(
              "UAS:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
           ),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
               border: OutlineInputBorder(),
             ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                uas = double.tryParse(value) ?? 0.0;
              },
            ),
            
            SizedBox(height: 20.0),
            Text(
              'Nilai Akhir: ${nilaiAkhir.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Grade: $grade',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
           Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Material(
                
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap:(){
                        hitungNilaiAkhir();
                      },
                      child: Padding(
                        padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text(
                            "Jumlah",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                         ),
                      ),
                   ),
                  ),
                ),
               ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

