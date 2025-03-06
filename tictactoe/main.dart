import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Tic Tac Toe Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<String> board;
  late String currentPlayer;
  late String winner;
  late bool draw;

  void _initializeGame() {
    board = List.generate(9, (_) => '');
    currentPlayer = 'X';
    winner = '';
    draw = false;
  }


  bool _checkWinner(String player) {
    for (int i = 0; i < 3; i++) {
      if (board[i] == player &&
          board[i + 3] == player &&
          board[i + 6] == player) {
        return true;
      }
      if (board[i * 3] == player &&
          board[i * 3 + 1] == player &&
          board[i * 3 + 2] == player) {
        return true;
      }
      if (board[0] == player && board[4] == player && board[8] == player) {
        return true;
      }
      if (board[2] == player && board[4] == player && board[6] == player) {
        return true;
      }
    }
    return false;
  }
}
  setState(() {
        board[index] = currentPlayer;
        if(_checkWinner(currentPlayer)) {
          winner = currentPlayer;
        }
        else if (_chechDraw()) {
          isDraw = true;
        }
        else {
          currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
        }
      });
    }

void _handleClick(int index) {
  if (board[index] != '' || winner != '') {
    return;
  }

  @override
  void initState() {
    super.initState();
    _initializeGame();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              'asd',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
