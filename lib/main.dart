import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GMC(),
  ));
}


class GMC extends StatefulWidget {
  @override
  _GMCState createState() => _GMCState();
}

class _GMCState extends State<GMC> {
  int pscore=0, rscore=0;

  void pinc()
  {
    setState(() {
      pscore++;
    });
  }
  void pdec()
  {
    setState(() {
      pscore--;
    });
  }
  void rinc()
  {
    setState(() {
      rscore++;
    });
  }
  void rdec()
  {
    rscore--;
  }
  void reset()
  {
    pscore=0;
    rscore=0;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('GMC'),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/morn.jpg'),
            fit: BoxFit.cover,
            ),
         ),
       ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
      Text(
          'Pragnya:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            background: Paint()
            ..strokeWidth=30
            ..color=Colors.white
            ..style = PaintingStyle.stroke
            ..strokeJoin = StrokeJoin.round),
        
          ),
        
      ],
      ),
          Text(
            'Rohan:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 21.0,
            fontWeight: FontWeight.bold,
            background: Paint()
            ..strokeWidth=30
            ..color=Colors.white
            ..style = PaintingStyle.stroke
            ..strokeJoin = StrokeJoin.round),
            ),
      ]
      ) 
   );
  }
}
