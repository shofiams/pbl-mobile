import 'package:flutter/material.dart';
import 'package:project/dashboard.dart';

class Notif extends StatefulWidget {
  const Notif({Key? key}) : super(key: key);
  _NotifState createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 24,
                      width: 38,
                    ),
                    Text(
                      "Notifications",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        height: 0,
                        fontSize: 24,
                        fontFamily: 'WorkSans-Medium',
                        color: Color(0xFF0A5896),
                        letterSpacing: 0.96,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                      width: 4,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.all(0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios_new),
                        iconSize: 20,
                        color: Color(0xFF0A5896),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DashboardPage(),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 0,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.all(0),
                      child: TextButton(
                        child: Text('Read All'),
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                            color: Color(0xFF0A5896),
                            fontSize: 11,
                            fontFamily: 'WorkSans-Medium',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onPressed: () {
                          print('Pressed');
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 625,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: ListTile(
                          leading: Image.asset("assets/image/logo.png"),
                          title: Text(
                            "Lorem Ipsum",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim..",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    ),
    subtitle: Text(subtitle),
    leading: Icon(icon, color: Colors.blue),
  );
}
