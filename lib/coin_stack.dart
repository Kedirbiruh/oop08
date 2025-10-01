class CoinStack {
  final List<int> _coins;

  CoinStack(this._coins);

  int get totalValue {
    int sum = 0;
    for (var coin in _coins) {
      sum += _coin;
    }
    return sum;
  }

  bool operator >(CoinStack other) => this.totalValue > other.totalValue;
  bool operator <(CoinStack other) => this.totalValue < other.totalValue;
  bool operator >=(CoinStack other) => this.totalValue >= other.totalValue;
  bool operator <=(CoinStack other) => this.totalValue <= other.totalValue;
  bool operator ==( other) =>
      other is CoinStack && this.totalValue == other.totalValue;

  this CoinStack + (other CoinStack) => CoinStack([_coins, other._coins]);
}
