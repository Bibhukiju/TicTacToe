import 'package:flutter/material.dart';
import 'package:tictactoe/dialogue.dart';
import 'gameboard.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<GameBoard>buttonlist;
  var player1;
  var player2;
  var activePlayer;

  @override
  void initState() {
    super.initState();
    buttonlist = doInit();
  }

  List<GameBoard> doInit() {

    player1 = List();
    player2 = List();
    activePlayer = 1;
    var gameButton = <GameBoard>[
      new GameBoard(id: 1),
      new GameBoard(id: 2),
      new GameBoard(id: 3),
      new GameBoard(id: 4),
      new GameBoard(id: 5),
      new GameBoard(id: 6),
      new GameBoard(id: 7),
      new GameBoard(id: 8),
      new GameBoard(id: 9),
    ];
    return gameButton;
  }
  void putmove(GameBoard gb)
  {
    setState(() {
      if(activePlayer==1)
        {
          gb.text="X";
          activePlayer= 2;
          player1.add(gb.id);
        }
      else{
        gb.text="O";
        gb.bg=Color(0x000000);
        player2.add(gb.id);
        activePlayer= 1;
      }
      gb.enabled=false;
      checkwinner();
    }
    );
  }
  void checkwinner() {
    int winner =0;
    if(player1.contains(1) && player1.contains(2) && player1.contains(3))
    {
      winner=1;
    }
    if(player1.contains(1) && player1.contains(5) && player1.contains(9))
    {
      winner=1;
    }
    if(player1.contains(2) && player1.contains(5) && player1.contains(8))
    {
      winner=1;
    }
    if(player1.contains(3) && player1.contains(6) && player1.contains(9))
    {
      winner=1;
    }
    if(player1.contains(1) && player1.contains(4) && player1.contains(7))
    {
      winner=1;

    }
    if(player1.contains(4) && player1.contains(5) && player1.contains(6))
    {
      winner=1;
    }
    if(player1.contains(7) && player1.contains(8) && player1.contains(9))
    {
      winner=1;
    }
    if(player1.contains(3) && player1.contains(5) && player1.contains(7))
    {
      winner=1;
    }
    if(player2.contains(1) && player2.contains(2) && player2.contains(3))
    {
      winner=2;
    }
    if(player2.contains(1) && player2.contains(5) && player2.contains(9))
    {
      winner=2;

    }
    if(player2.contains(2) && player2.contains(5) && player2.contains(8))
    {
      winner=2;
    }
    if(player2.contains(3) && player2.contains(6) && player2.contains(9))
    {
      winner=2;
    }
    if(player2.contains(1) && player2.contains(4) && player2.contains(7))
    {
      winner=2;

    }
    if(player2.contains(4) && player2.contains(5) && player2.contains(6))
    {
      winner=2;

    }
    if(player2.contains(7) && player2.contains(8) && player2.contains(9))
    {
      winner=2;

    }
    if(player2.contains(3) && player2.contains(5) && player2.contains(7))
    {
      winner=2;
    }
    if(winner!=-1)
      {
        if(winner==1)
          {
            showDialog(context: context,
            builder: (_)=>DiaLogue("Player 1 won","press reset button to restart again",resetgame)

            );
          }
        else if(winner==2)
          {
            showDialog(context: context,
                builder: (_)=>DiaLogue("Player 2 won","press reset button to restart again",resetgame));

          }
      }
    else if(player1().length==5 && winner ==0)
      {
        showDialog(context: context,
          builder: (_)=>DiaLogue("Game draw","press restart to restart again",resetgame ));
      }

  }
  void resetgame()
  {
    if(Navigator.canPop(context))Navigator.pop(context);
    setState(() {
      buttonlist=doInit();
    });
  }


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Center(
                  child: Text("Tic-tac-Toe",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),),
                ),
                padding: EdgeInsets.all(14.0),
                height: 60,
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.0,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                    ),
                    itemCount: buttonlist.length, itemBuilder: (context, i) =>
                        Container(
                          child: RaisedButton(onPressed: buttonlist[i].enabled ? () =>
                              putmove(buttonlist[i]) : null,
                            padding: EdgeInsets.all(0),
                            child: Text(buttonlist[i].text,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:80,
                              color: Colors.black87,
                            ),
                            ),
                          ),
                        ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SafeArea(
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            resetgame();
                           }
                          ,child: Text("Restart"),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

      ),
      debugShowCheckedModeBanner: false,
    );
  }
}