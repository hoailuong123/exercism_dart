class Bob {
  String response(String statement) {
    if (isSilence(statement)) {
      return 'Fine. Be that way!';
    } else if (isYellingQuestion(statement)) {
      return 'Calm down, I know what I\'m doing!';
    } else if (isYelling(statement)) {
      return 'Whoa, chill out!';
    } else if (isQuestion(statement)) {
      return 'Sure.';
    } else {
      return 'Whatever.';
    }
  }

  bool isSilence(String statement) {
    return statement.trim().isEmpty;
  }

  bool isYellingQuestion(String statement) {
    return isYelling(statement) && isQuestion(statement);
  }

  bool isYelling(String statement) {
    return statement == statement.toUpperCase() &&
        statement != statement.toLowerCase();
  }

  bool isQuestion(String statement) {
    return statement.trim().endsWith('?');
  }
}

void main() {
  final bob = Bob();
  print(bob.response('How are you?')); // Output: Sure.
  print(bob.response('WHAT\'S GOING ON?')); // Output: Calm down, I know what I'm doing!
  print(bob.response('Hi there!')); // Output: Whatever.
  print(bob.response('    ')); // Output: Fine. Be that way!
  print(bob.response('1, 2, 3 GO!')); //Output: Whoa, chill out!
}
