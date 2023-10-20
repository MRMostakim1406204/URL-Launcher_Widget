import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key?key}) : super(key: key);

  final String _url = "https://www.facebook.com/";
  final String _phoneNumber ="+61426502918";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('URL Launcher'),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(onPressed: ()async{
            final _call ="tel:$_phoneNumber";
            final _text = "sms:$_phoneNumber";
           if (await canLaunch(_url)){
            await launch(_url);
           }
          }, 
          child: Text("URL Launcher")),
        ),
      ),
    );
  }
}
