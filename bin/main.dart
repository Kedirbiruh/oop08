import '../lib/coin_stack.dart';

void main() {
  // CoinStacks erstellen
  final stack1 = CoinStack([1, 2, 5]);
  final stack2 = CoinStack([5, 1]);
  final stack3 = CoinStack([2, 5]);
  final stack4 = CoinStack([10]);
  // final emptyStack = CoinStack([]);

  // totalValue prüfen
  print('Stack1 totalValue: ${stack1.totalValue}');
  print('Stack2 totalValue: ${stack2.totalValue}');

  // Vergleichsoperatoren
  print('stack1 > stack2: ${stack1 > stack2}'); 
  print('stack1 < stack2: ${stack1 < stack2}');  
  print('stack1 >= stack2: ${stack1 >= stack2}');
  print('stack1 <= stack2: ${stack1 <= stack2}'); 
  print('stack1 == stack2: ${stack1 == stack2}'); 

  // + Operator
  final combined = stack1 + stack2;
  print('Combined coins: ${combined.coins}');       
  print('Combined totalValue: ${combined.totalValue}');

  // - Operator
  final result = stack1 - stack3;
  if (result != null) {
    print('stack1 - stack3: ${result.coins}');
  } else {
    print('Subtraktion nicht möglich');
  }

  final result2 = stack1 - stack4;
  print('stack1 - stack4: $result2'); 

  // Edge Case: Subtraktion, die alle Münzen entfernt
  final fullSubtract = stack1 - CoinStack([1, 2, 5]);
  print('Full subtraction: ${fullSubtract?.coins}'); 
}