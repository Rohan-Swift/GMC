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
  int pscore = 0, rscore = 0;

  void pinc() {
    setState(() {
      pscore++;
    });
  }

  void pdec() {
    setState(() {
      pscore--;
    });
  }

  void rinc() {
    setState(() {
      rscore++;
    });
  }

  void rdec() {
    setState(() {
      rscore--;
    });
  }

  void reset() {
    setState(() {
      pscore = 0;
      rscore = 0;
    });
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
                    image: AssetImage('assets/morn.jpg'), fit: BoxFit.cover),
              ),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Rohan R',
                    style: TextStyle(
                      backgroundColor: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton(
                        onPressed: rdec,
                        child: Icon(Icons.remove),
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        '$rscore',
                        style: TextStyle(
                          fontSize: 25.0,
                          backgroundColor: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20.0),
                      FloatingActionButton(
                        onPressed: rinc,
                        child: Icon(Icons.add),
                        backgroundColor: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: 200.0),
                  Text(
                    'Pragnya',
                    style: TextStyle(
                      backgroundColor: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton(
                        onPressed: pdec,
                        child: Icon(Icons.remove),
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        '$pscore',
                        style: TextStyle(
                          fontSize: 25.0,
                          backgroundColor: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20.0),
                      FloatingActionButton(
                        onPressed: pinc,
                        child: Icon(Icons.add),
                        backgroundColor: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: 100.0),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: reset,
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                        ),
                        child: Text(
                          'Reset',
                          style: TextStyle(fontSize: 25),
                        ),
                      )),
                ])
          ],
        ));
  }
}
