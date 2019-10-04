// Challenge One:
// Create a function 'squarePatch' that takes an integer and prints an n x n square solely consisting of the integer n.
//squarePatch(3) should print
//  [
//    [3, 3, 3],
//    [3, 3, 3],
//    [3, 3, 3]
//  ]
//
//squarePatch(5) should print
//  [
//    [5, 5, 5, 5, 5],
//    [5, 5, 5, 5, 5],
//    [5, 5, 5, 5, 5],
//    [5, 5, 5, 5, 5],
//    [5, 5, 5, 5, 5]
//  ]
//
//squarePatch(1) should print
//  [
//    [1]
//  ]
//
// squarePatch(0) should print []
//(i) => new List(n)

squarePatch(int n){
  return List.generate(n,(int index)=>List.filled(n,n));
}

main() {
  print(squarePatch(3));

  List<List<String>> board = [
    ['O', ' ', ' '],
    [' ', 'X', ' '],
    ['X', ' ', ' ']
  ];

  //printBoard(board);
  // The above call should print:
  //    A   B   C
  // 1  O |   |
  //   ---+---+---
  // 2    | X |
  //   ---+---+---
  // 3  X |   |

  board[0][2] = 'O';
  printBoard(board);
  //printBoard(board);
  // The above call should print:
  //    A   B   C
  // 1  O |   | O
  //   ---+---+---
  // 2    | X |
  //   ---+---+---
  // 3  X |   |
}

// Write a function called 'printBoard' which takes a List of List of Strings,
// and prints a Tic Tac Toe board to the console.  The board will always
// have dimensions 3 x 3.
  printBoard(List eachElement){
  print('   A   B   C');
  print('1  ${eachElement[0][0]} | ${eachElement[0][1]} | ${eachElement[0][2]}');
  print('   ---+---+----   ');
  print('1  ${eachElement[1][0]} | ${eachElement[1][1]} | ${eachElement[1][2]}');
  print('   ---+---+----   ');
  print('1  ${eachElement[2][0]} | ${eachElement[2][1]} | ${eachElement[2][2]}');
  }