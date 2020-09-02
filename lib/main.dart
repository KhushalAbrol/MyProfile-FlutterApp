import 'package:flutter/material.dart';	
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

  Future main() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    runApp(new MyApp());
  }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      home: Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/khushal.jpeg'),
              ),
            ),
            Center(
              child: ListTile(
                title: Center(
                  child: Text(
                    'Khushal Abrol',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Card(
                child: Column(
              children: [
                ListTile(
                  title: Text('khushalabrol14@gmail.com',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  leading: Icon(
                    Icons.email,
                    color: Colors.red[500],
                  ),
                  // trailing: new FlatButton(
                  //     onPressed: () => launch('mailto:${khushalabrol14@gmail.com}'),
                  //     child: new Text("Call me")),
                ),
                Divider(),
                ListTile(
                  title: Text('8949696406',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  leading: Icon(
                    Icons.phone,
                    color: Colors.red[500],
                  ),
                  trailing: new FlatButton(
                      onPressed: () => launch(("tel://${8949696406}")),
                      child: new Text("Call me")),
                ),
              ],
            )),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: ButtonTheme(
                    minWidth: 60,
                    height: 60,
                    child: Center(
                      child: Ink(
                        color: Colors.blue[800],
                        child: IconButton(
                          icon: Center(
                              child: FaIcon(
                            FontAwesomeIcons.linkedin,
                            size: 30,
                            color: Colors.white,
                          )),
                          onPressed: () async {
                            final url =
                                'https://www.linkedin.com/in/khushalabrol/';
                            if (await canLaunch(url)) {
                              await launch(
                                url,
                                forceSafariVC: false,
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ButtonTheme(
                    minWidth: 60,
                    height: 60,
                    child: Center(
                      child: Ink(
                        color: Colors.black87,
                        child: IconButton(
                          icon: Center(
                              child: FaIcon(
                            FontAwesomeIcons.github,
                            size: 30,
                            color: Colors.white,
                          )),
                          onPressed: () async {
                            final url = 'https://github.com/KhushalAbrol';
                            if (await canLaunch(url)) {
                              await launch(
                                url,
                                forceSafariVC: false,
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
