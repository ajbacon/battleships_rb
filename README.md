Features
  place a ship on a grid
  fire a shot at the grid and miss
  fire a shot at the board and hit
  fire multiple shots to sink a ship
  .
  .
  .
  .
  some form of intelligence for computer after computer hits a ship
  






  Game rules (unless otherwise specified by product owner)

  10x10 grid
  minimum ship size is 2 cells
  ships cannot overlap
  ships can be side by side
  both players have the same pieces
  ships cannot be placed diagonally






```
As a player
So that I can prepare for the game
I would like to place a ship in a board location

As a player
So that I can play a more interesting game
I would like to have a range of ship sizes to choose from

As a player
So the game is more fun to play
I would like a nice command line interface that lets me enter ship positions and shots using commands (rather than using IRB to interact with objects)

As a player
So that I can create a layout of ships to outwit my opponent
I would like to be able to choose the directions my ships face in

As a player
So that I can have a coherent game
I would like ships to be constrained to be on the board

As a player
So that I can have a coherent game
I would like ships to be constrained not to overlap

As a player
So that I can win the game
I would like to be able to fire at my opponent's board

As a player
So that I can refine my strategy
I would like to know when I have sunk an opponent's ship

As a player
So that I know when to finish playing
I would like to know when I have won or lost

As a player
So that I can consider my next shot
I would like to be able to see my hits and misses so far

As a player
So that I can play against a human opponent
I would like to play a two-player game
```


Empty grid
```
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
```

Grid with ship
```
- - - - - - - - - - - - - 
- - S S S - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
```

Hit a ship
```
   A  B  C  D  E  F  G  H  I  J
1  -  -  -  -  -  -  -  -  -  -
2  -  -  S  S  X  -  -  -  -  -
3  -  -  -  -  -  -  -  -  -  -
4  -  -  -  -  -  -  -  -  -  -
5  -  -  -  -  -  -  -  -  -  -
6  -  -  -  -  -  -  -  -  -  -
7  -  -  -  -  -  -  -  -  -  -
8  -  -  -  -  -  -  -  -  -  -
9  -  -  -  -  -  -  -  -  -  -
10 -  -  -  -  -  -  -  -  -  -
```

Miss a ship
```
- - - - - - - - - - - - - 
- - S S S - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - O - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
- - - - - - - - - - - - - 
```

+---+---+---+---+---+---+---+---+---+---+---+
|  | A | B | C | D | E | F | G | H | I | J |
+---+---+---+---+---+---+---+---+---+---+---+
| 1 |   |   |   |   |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+---+---+---+
| 2 |   |   |   |   |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+---+---+---+
| 3 |   |   |   |   |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+---+---+---+
| 4 |   |   |   |   |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+---+---+---+
| 5 |   |   |   |   |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+---+---+---+
| 6 |   |   |   |   |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+---+---+---+
| 7 |   |   |   |   |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+---+---+---+
| 8 |   |   |   |   |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+---+---+---+
| 9 |   |   |   |   |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+---+---+---+
|10 |   |   |   |   |   |   |   |   |   |   |
+---+---+---+---+---+---+---+---+---+---+---+
