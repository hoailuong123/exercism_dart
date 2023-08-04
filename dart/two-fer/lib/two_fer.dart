String twoFer ([String? name]) {
  if (name != null) {
    return 'One for $name, one for me.';
  } else {
    return 'One for you, one for me.';
  }
}
void main() {
  print(twoFer());
  print(twoFer('Alice'));
  print(twoFer('Bob'));
}