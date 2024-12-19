function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function main(): void {
  var x: int = 5;
  var y: int = bar(x);
  echo y; // Expected output: 12
}

This code is fine, but there is a potential for issues.  If `foo` or `bar` were to throw an exception, the `echo` statement would never run.  This could lead to unexpected behavior or a crash depending on the type of exception thrown.  More robust error handling would improve the code's reliability and predictability.