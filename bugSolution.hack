function foo(x: int): int {
  try {
    if (x < 0) {
      throw new Exception("Input must be non-negative");
    }
    return x + 1;
  } catch (Exception $e) {
    echo "Error in foo(): " . $e->getMessage() . "\n";
    return 0; // Or handle the error appropriately
  }
}

function bar(x: int): int {
  try {
    return foo(x) * 2;
  } catch (Exception $e) {
    echo "Error in bar(): " . $e->getMessage() . "\n";
    return 0; // Or handle the error appropriately
  }
}

function main(): void {
  var x: int = 5;
  var y: int = bar(x);
  echo y; // Expected output: 12
  x = -5;
  y = bar(x);
  echo y; // Expected output: Error in foo() and then 0
}
This improved version uses try-catch blocks to handle potential exceptions thrown by `foo`.  Appropriate error messages are printed, making debugging much easier.