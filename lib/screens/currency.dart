import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  @override
  _CurrencyConverterPageState createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  double amount = 0.0;
  String fromCurrency = 'USD';
  String toCurrency = 'EUR';
  double convertedAmount = 0.0;

  // Fungsi untuk mengonversi mata uang
  void convertCurrency() {
    // Ganti logika konversi mata uang sesuai kebutuhan Anda
    // Di sini, contoh sederhana adalah mengalikan jumlah dengan faktor konversi
    const double usdToEurRate = 0.85;
    const double usdToGbpRate = 0.73;
    const double usdToJpyRate = 110.33;
    const double usdToIdrRate = 14000.0;

    if (fromCurrency == 'USD' && toCurrency == 'EUR') {
      convertedAmount = amount * usdToEurRate;
    } else if (fromCurrency == 'USD' && toCurrency == 'GBP') {
      convertedAmount = amount * usdToGbpRate;
    } else if (fromCurrency == 'USD' && toCurrency == 'JPY') {
      convertedAmount = amount * usdToJpyRate;
    } else if (fromCurrency == 'USD' && toCurrency == 'IDR') {
      convertedAmount = amount * usdToIdrRate;
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
                "Currency Converter",
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
            Text(
              'Enter amount:',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Color(0xFF7165D6),
              ),
            ),
            SizedBox(height: 10.0),
          TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  amount = double.tryParse(value) ?? 0.0;
                },
              ),
             Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
            SizedBox(height: 20.0,),
            Text(
              'Convert from:',
              style: TextStyle(fontSize: 18.0),
            ),
            DropdownButton<String>(
              value: fromCurrency,
              onChanged: (value) {
                setState(() {
                  fromCurrency = value!;
                });
              },
              items: <String>['USD', 'EUR', 'GBP', 'JPY', 'IDR'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            Text(
              'Convert to:',
              style: TextStyle(fontSize: 18.0),
            ),
            DropdownButton<String>(
              value: toCurrency,
              onChanged: (value) {
                setState(() {
                  toCurrency = value!;
                });
              },
              items: <String>['USD', 'EUR', 'GBP', 'JPY', 'IDR'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
                  ],
             ),
           // SizedBox(height: 20.0),
            //ElevatedButton(
             // onPressed: () {
               // convertCurrency();
              //},
              //child: Text('Convert'),
            //),
            //SizedBox(height: 20.0),
            //Text(
              //'Converted amount: $convertedAmount $toCurrency',
              //style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
           // ),

            SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Material(
                
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                     onTap: () {
                      convertCurrency();
                     },
                      child: Padding(
                        padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Center(
                          child: Text(
                            "Convert",
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
                SizedBox(height: 20.0),
            Text(
              'Converted amount: $convertedAmount $toCurrency',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
           ),
          ],
        ),
      ),
    );
  }
}

  


