import '../lib/coin_stack.dart'; 
void main() {
  // CoinStacks erstellen
  final stack1 = CoinStack([1, 2, 5]);
  final stack2 = CoinStack([5, 1]);
  final stack3 = CoinStack([2, 5]);
  final stack4 = CoinStack([10]);
  final emptyStack = CoinStack([]);

  // totalValue prüfen
  print('Stack1 totalValue: ${stack1.totalValue}'); // 8
  print('Stack2 totalValue: ${stack2.totalValue}'); // 6

  // Vergleichsoperatoren
  print('stack1 > stack2: ${stack1 > stack2}');   // true
  print('stack1 < stack2: ${stack1 < stack2}');   // false
  print('stack1 >= stack2: ${stack1 >= stack2}'); // true
  print('stack1 <= stack2: ${stack1 <= stack2}'); // false
  print('stack1 == stack2: ${stack1 == stack2}'); // false

  // + Operator
  final combined = stack1 + stack2;
  print('Combined coins: ${combined._coins}');        // [1,2,5,5,1]
  print('Combined totalValue: ${combined.totalValue}'); // 14

  // - Operator
  final result = stack1 - stack3;
  if (result != null) {
    print('stack1 - stack3: ${result._coins}'); // [1]
  } else {
    print('Subtraktion nicht möglich');
  }

  final result2 = stack1 - stack4;
  print('stack1 - stack4: $result2'); // null

  // Edge Case: Subtraktion, die alle Münzen entfernt
  final fullSubtract = stack1 - CoinStack([1, 2, 5]);
  print('Full subtraction: ${fullSubtract?._coins}'); // []
}