//Labelled Statement-Swift//
//Written by: Sidhant Chadha//
//Location: Washington D.C - August 02 '18//
import UIKit

//Labelled statement using SnakesNLadder game logic//
let finScore=25

//Setup the board//
var board:[Int]=Array(repeating:0, count:finScore+1)

//Mark the board with points denoting ladders or snakes//
board[03]=8 ; board[06]=11 ; board[09]=9
board[10]=2 ; board[14] = (-10) ; board[19] = (-11)
board[22] = (-2) ; board[24] = (-8)

var square=0
var diceRoll=0

//label statement//
gameloop : while square != finScore {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch diceRoll + square {
    case finScore:
        break gameloop
    case let newSquare where newSquare > finScore :
        continue gameloop
    default:
        square=diceRoll+square
        square=square + board[square]
    }
}
print("Game over!")

