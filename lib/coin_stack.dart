class CoinStack {
  final List<int> _coins;

  CoinStack(this._coins);

  List<int> get coins => List.unmodifiable(_coins);

  int get totalValue {
    int sum = 0;
    for (final coin in _coins) {
      sum += coin;
    }
    return sum;
  }

  bool operator >(CoinStack other) => this.totalValue > other.totalValue;
  bool operator <(CoinStack other) => this.totalValue < other.totalValue;
  bool operator >=(CoinStack other) => this.totalValue >= other.totalValue;
  bool operator <=(CoinStack other) => this.totalValue <= other.totalValue;
  bool operator ==(Object other) =>
      other is CoinStack && this.totalValue == other.totalValue;

  CoinStack operator +(CoinStack other) {
    final newStack = CoinStack(_coins + other._coins);
    return newStack;
  }

  CoinStack? operator -(CoinStack other) {
    final newCoins = [..._coins];
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
