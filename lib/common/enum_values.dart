enum Choice {
  Rock, Scissors, Paper;

  String get imagePath {
    switch (this) {
      case Choice.Rock:
        return 'assets/images/rock.png';
      case Choice.Scissors:
        return 'assets/images/scissors.png';
      case Choice.Paper:
        return 'assets/images/paper.png';
      default:
        return '';
    }
  }
}

enum Result {
  Win, Lose, Draw, None;

  String get displayString {
    switch (this) {
      case Result.Win:
        return 'You Won!';
      case Result.Lose:
        return 'You Lost!';
      case Result.Draw:
        return 'Draw!';
      default:
        return '';
    }
  }
}