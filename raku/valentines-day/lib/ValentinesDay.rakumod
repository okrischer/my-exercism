unit module ValentinesDay;

enum Answer is export (Yes => True, No => False);

role Activity is export {
  method rate (--> Answer:U) {Answer}
}

sub rate-activity (Activity $_ --> Answer ) is export {
  return .rate;
}

class  Chill does Activity is export {
  method rate (--> No) {}
}

class Restaurant does Activity is export {}
class Restaurant::Turkish is Restaurant is export {}
class Restaurant::Korean is Restaurant is export {
  method rate (--> Yes) {}
}

class Movie does Activity is export {
  method rate (--> No) {}
}
class Movie::Crime is Movie is export {}
class Movie::Horror is Movie is export {}
class Movie::Romance is Movie is export {
  method rate (--> Yes) {}
}

class Game does Activity is export {}
class Game::Chess is Game is export {
  method rate (--> Yes) {}
}
class Game::TicTacToe is Game is export {}
class Game::GlobalThermonuclearWar is Game is export {
  method rate (--> No) {}
}
class Walk is Num does Activity is export {
  subset Distance of Num where 0 < * < Inf;
  has Distance:D $.distance is required;
  method new (Distance() $distance) {
    self.bless(:$distance);
  }
  method rate (--> Answer) {
    return Yes if self.distance < 3;
    return Answer if self.distance ~~ 3..5;
    return No;
  }
}
