import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PointCounter extends StatefulWidget {


  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int teamAPoint = 0;

  int teamBPoint = 0;

  void addOnePoinr()
  {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Point Counter',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),Text(
                      '$teamAPoint',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        maximumSize: Size(150,50),
                      ),
                      onPressed: ()
                      {
                        setState(() {
                          teamAPoint++;
                        });
                        print(teamAPoint);
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                        fontSize: 18,
                          color: Colors.black
                      ),),
                    ),
                    // const Spacer(flex: 1,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        maximumSize: Size(150,50),
                      ),
                      onPressed: ()
                      {
                        setState(() {
                          teamAPoint += 2;
                        });
                        print(teamAPoint);
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),),
                    ),
                    // const Spacer(flex: 1,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        maximumSize: Size(150,50),
                      ),
                      onPressed: ()
                      {
                        setState(() {
                          teamAPoint += 3;
                        });
                        print(teamAPoint);
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),),
                    ),
                    // const Spacer(flex: 12,),
                  ],
                ),
              ),
              Container(
                height: 500,
                child: VerticalDivider(
                  indent: 50,
                  endIndent: 50,
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),Text(
                      '$teamBPoint',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        maximumSize: Size(150,50),
                      ),
                      onPressed: ()
                      {
                        setState(() {
                          teamBPoint++;
                        });
                        print(teamBPoint);
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),),
                    ),
                    //const Spacer(flex: 1,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        maximumSize: Size(150,50),
                      ),
                      onPressed: ()
                      {
                        setState(() {
                          teamBPoint += 2;
                        });
                        print(teamBPoint);
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),),
                    ),
                   // const Spacer(flex: 1,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        maximumSize: Size(150,50),
                      ),
                      onPressed: ()
                      {
                        setState(() {
                          teamBPoint += 3;
                        });
                        print(teamBPoint);
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black
                        ),),
                    ),
                    // const Spacer(flex: 12,),

                  ],
                ),
              ),

            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              maximumSize: Size(150,50),
            ),
            onPressed: ()
            {
              setState(() {
                teamAPoint = 0;
                teamBPoint = 0;
              });
            },
            child: Text(
              'Reset',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black
              ),),
          ),
        ],
      ),
    );
  }
}
