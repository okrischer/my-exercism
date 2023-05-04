module Robot
    ( Bearing(East,North,South,West)
    , bearing
    , coordinates
    , mkRobot
    , move
    ) where

type Coordinates = (Integer, Integer)

data Bearing = North
             | East
             | South
             | West
             deriving (Eq, Show)

data Robot = Robot Bearing Coordinates

bearing :: Robot -> Bearing
bearing (Robot direction _) = direction

coordinates :: Robot -> Coordinates
coordinates (Robot _ coords) = coords

mkRobot :: Bearing -> Coordinates -> Robot
mkRobot = Robot


move :: Robot -> String -> Robot
move robot [] = robot
move robot (i:is) = case i of
    'R' -> move (turnRight robot) is
    'L' -> move (turnLeft robot) is
    'A' -> move (advance robot) is
    _   -> error "invalid instruction"


advance :: Robot -> Robot
advance (Robot d (x, y)) = mkRobot d newCor
    where newCor = case d of
            North -> (x, y+1)
            East  -> (x+1, y)
            South -> (x, y-1)
            West  -> (x-1, y)

turnRight :: Robot -> Robot
turnRight (Robot d c) = mkRobot newDir c
    where newDir = case d of
            North -> East
            East  -> South
            South -> West
            West  -> North

turnLeft :: Robot -> Robot
turnLeft (Robot d c) = mkRobot newDir c
    where newDir = case d of
            North -> West
            East  -> North
            South -> East
            West  -> South
