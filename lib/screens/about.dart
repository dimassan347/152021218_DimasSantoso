import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
  return Material(
  color: Colors.white,
  child: SingleChildScrollView(
    child: SafeArea(
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Axel",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF7165D6),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              
                      SizedBox(height: 10),
                      Text(
                        'Axel adalah seorang pengembang aplikasi yang berbakat dan berdedikasi. Dia menciptakan solusi teknologi inovatif dan bermanfaat bagi pengguna. Dengan keahlian dalam pengembangan perangkat lunak, Axel menghadirkan aplikasi yang elegan, fungsional, dan mudah digunakan.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Axel memiliki ketelitian, ketekunan, dan kemampuan analitis yang kuat dalam membangun aplikasi. Dia memahami kebutuhan pengguna dan menciptakan pengalaman yang menarik. Selain itu, Axel juga memiliki kemampuan kolaborasi yang baik, mampu bekerja dalam tim dan mendengarkan masukan rekan-rekannya.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Dalam menghadapi tantangan, Axel memiliki tekad yang kuat. Dia melihat setiap kesulitan sebagai peluang untuk belajar dan tumbuh. Dengan ketekunan dan kreativitas dalam memecahkan masalah, Axel berhasil mengatasi rintangan dan memberikan solusi yang inovatif.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Secara keseluruhan, Axel adalah seorang pengembang aplikasi yang berdedikasi, kreatif, dan gigih. Dia terus berusaha untuk mencapai keunggulan dan memberikan nilai tambah kepada pengguna.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
);
        }
        }