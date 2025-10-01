class CoinStack {
  final List<int> _coins;

  // CoinStack(this._coins);
  // normaler Konstruktor: erstellt eine Kopie, damit die Original-Liste nicht verändert werden kann
  CoinStack(List<int> coins) : _coins = List.from(coins);

  // bennante konstruktor
  CoinStack.from(CoinStack other) : _coins = List.from(other._coins); //erstellt eine Kopie von einem anderen CoinStack
  // totalValue Berechnung
  int get totalValue => _coins.fold(0, (sum, coin) => sum + coin);

  // int get totalValue {
  //   int sum = 0;
  //   for (final coin in _coins) {
  //     sum += coin;
  //   }
  //   return sum;
  // }

  bool operator >(CoinStack other) => this.totalValue > other.totalValue;
  bool operator <(CoinStack other) => this.totalValue < other.totalValue;
  bool operator >=(CoinStack other) => this.totalValue >= other.totalValue;
  bool operator <=(CoinStack other) => this.totalValue <= other.totalValue;

  @override
  bool operator ==(Object other) =>
      other is CoinStack && totalValue == other.totalValue;


  //passt zu deiner == Implementierung, weil beide nur auf totalValue schauen.
  @override
  int get hashCode => totalValue.hashCode; // wichtig, weil == überschrieben

  CoinStack operator +(CoinStack other) {
    final newStack = CoinStack(_coins + other._coins);
    return newStack;
  }

  CoinStack? operator -(CoinStack other) {
    final newCoins = List<int>.from(_coins); //macht eine Kopie (List.from(coins)), damit man später die Original-Liste nicht mehr „von außen“ ändern kann.
    for (final coin in other._coins) {
      if (newCoins.contains(coin)) {
        newCoins.remove(coin);
      } else {
        return null;
      }
    }
    return CoinStack(newCoins);
  }
}
