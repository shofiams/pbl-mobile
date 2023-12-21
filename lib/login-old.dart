import 'package:flutter/material.dart';
import 'package:project/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 85),
            Text(
              'WELCOME BACK!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: "work sans",
                color: Color(0xFF0A5896), // Warna teks biru
              ),
            ),

            SizedBox(height: 9),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign in to continue to App.',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "work sans",
                    color: Color(0xff3493e0),
                    // Warna teks biru
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Image.asset(
              "assets/image/logo.png",
              height: 150, // Sesuaikan tinggi gambar sesuai kebutuhan
              width: 210, // Sesuaikan lebar gambar sesuai kebutuhan
            ),
            SizedBox(height: 50),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Sudut bulat dengan radius 5
                ),
              ),
              style: TextStyle(
                fontFamily: 'WorkSans',
                fontSize: 16,
                // Ganti dengan nama font Work Sans yang sesuai
              ),
            ),

            SizedBox(height: 24),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Sudut bulat dengan radius
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    color: Color.fromRGBO(
                      113,
                      158,
                      194,
                      _obscurePassword ? 1.0 : 0.5,
                    ),
                    // Warna ikon mata dengan opacity
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
              obscureText: _obscurePassword,
              style: TextStyle(
                fontFamily: 'WorkSans',
                fontSize: 16, // Ganti dengan nama font Work Sans yang sesuai
              ),
            ),

            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value!;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
                SizedBox(width: 10),
                Text(
                  'Remember me',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "work sans",
                    color: Color(0xFF2067A0), // Warna teks biru
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "work sans",
                      color: Color(0xFF2067A0), // Warna teks biru
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 27),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardPage(),
                  ),
                );
                // Tambahkan logika autentikasi atau tindakan yang sesuai di sini
              },
              child: Text(
                'Log In',
                style: TextStyle(
                  fontFamily:
                      'WorkSans', // Ganti dengan nama font Work Sans yang sesuai
                  fontSize: 16, // Ganti ukuran font sesuai keinginan
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0A5896),
                minimumSize: Size(double.infinity, 50),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),

            SizedBox(height: 35),
            Text(
              'By creating an account,you accept our',
              style: TextStyle(
                fontSize: 12,

                fontFamily: "inter",
                color: Color(0xFF64608A), // Warna teks biru
              ),
            ),
            Row(
              children: [
                Spacer(),
                Text(
                  'Terms and conditions',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: "inter",
                    color: Color(0xff0f0f0f), // Warna teks biru
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'you read our',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "inter",
                    color: Color(0xFF64608A), // Warna teks biru
                  ),
                ),
                SizedBox(width: 5), // Jarak antara teks
                Text(
                  'Privacy Policy.',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: "inter",
                    color: Color(0xff0f0f0f), // Warna teks biru
                  ),
                ),
                Spacer(),
              ],
            ),

            // Anda dapat menambahkan tombol atau elemen lain di sini
          ],
        ),
      ),
    );
  }
}
