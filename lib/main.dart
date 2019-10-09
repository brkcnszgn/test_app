import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white70
      ),
      home: MyHomePage(),
    );
  }


}

class MyHomePage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    final double myTextSize = 30.0;
    final double myIconSize = 40.0;
    final TextStyle myTextStyle = TextStyle(color: Colors.black26, fontSize: myTextSize);
    return Scaffold(
       appBar: AppBar(
         title: Text("Stateless Widget"), // // SingleChildScrollView = Eğer ekrana içerisine verdiğimiz widgetler
                                               // ekrana sığmaz ise aşşağı kaydırma özelliği ekleyecek
       ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,                 // Column içerisindeki OzelCardlarımız yatay olarak
             children: <Widget>[ // genişleyebildiği kadar genişlemesini belirttik
               privateCard( //customWidgeti
                 title: Text('Favorite',style: myTextStyle, : Colors.white),
                 icon: Icon(Icons.favorite, color: Colors.red),
                 


               )  // Ve Özel olarak oluşturduğumuz widgeti kullanarak elemanlarımızı ekliyoruz
             ],
            ),
          ),
        ),
      ),
    );

  }








}
// oluşturulan ozelCard
class privateCard extends StatelessWidget{
  final Widget icon;
  final Widget title;


  //constructor
  privateCard({this.icon,this.title});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Card(
        color: Colors.blue,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              this.title,
              this.icon,

            ],
          ),
        ),
      ),
    );
  }

}

