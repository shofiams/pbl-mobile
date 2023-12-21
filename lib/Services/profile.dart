import 'package:flutter/material.dart';
import 'editProfile.dart';
import 'editPassword.dart';
import 'package:project/dashboard.dart';

void main() {
  runApp(MyProfile());
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(
                          color: Color(0xFF0A5896),
                          fontSize: 24,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  // Navigasi ke DashboardPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                },
                child: SizedBox(
                  height: 15,
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xFF0A5896),
                    size: 25,
                    semanticLabel: 'Back',
                  ),
                ),
              ),

              SizedBox(height: 15),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 90,
                        backgroundColor: Color(0xFFD9D9D9),
                      ),
                      Positioned(
                        bottom: 25,
                        right: 20,
                        child: Icon(
                          Icons.person_2_outlined,
                          color: Color(0xff383636),
                          size: 140,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 40),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Kageyama Tobio',
                        style: TextStyle(
                          color: Color(0xFF0A5896),
                          fontSize: 20,
                          fontFamily: 'Work Sans',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfile()),
                    );
                  },
                  child: Container(
                    width: 280,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0x00857676),
                      border: Border.all(width: 0.50, color: Color(0xFF0A5896)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_2_outlined,
                          color: Color(0xFFF3AD1B),
                          size: 25,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Ganti Profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF0A5896),
                            fontSize: 15,
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditPassword()),
                    );
                  },
                  child: Container(
                    width: 280,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0x00857676),
                      border: Border.all(width: 0.50, color: Color(0xFF0A5896)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock_outline,
                          color: Color(0xFFF3AD1B),
                          size: 25,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Ganti Password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF0A5896),
                            fontSize: 15,
                            fontFamily: 'Work Sans',
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Profil Anda',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 24,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'NIS/NISN',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '215213',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Nama',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Kageyama Tobio',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Nomor Telepon',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '-',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'E-mail',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'kageyama@gmail.com',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Jenis Kelamin',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Laki-laki',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Tempat Lahir',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Yokohama',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Tanggal Lahir',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '2006-01-01',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'No. Telp Orang Tua',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '-',
                    style: TextStyle(
                      color: Color(0xFF0A5896),
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
              // ... your other widgets
            ],
          ),
        ),
      ),
    );
  }
}
