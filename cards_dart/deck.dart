void main() {
  var deck = new Deck();
  deck.shuffle();
  deck.shuffle();
  deck.shuffle();
  print('Remove Ace of Diamons');
  deck.removeCard('Diamonds', 'Ace');
  var hand = deck.deal(7);
  print('Hand Drawn:');
  print(hand);
  print('Rest of Deck:');
  print(deck);
  // for (card in deck) {
  //   print card;
  // }
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = [
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Jack',
      'Queen',
      'King',
      'Ace'
    ];
    var suits = ['Clubs', 'Diamonds', 'Hearts', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank: rank, suit: suit);
        cards.add(card);
      }
    }
  }

  toString() {
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);

    return hand;
  }

  removeCard(String suit, String rank) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }

  color(String suit) {
    final colormap = {
      'Clubs': 'Black',
      'Diamonds': 'Red',
      'Hearts': 'Red',
      'Spades': 'Black'
    };
    return colormap[suit];
  }
}

class Card {
  String suit;
  String rank;
  String color;
  final colormap = {
    'Clubs': 'Black',
    'Diamonds': 'Red',
    'Hearts': 'Red',
    'Spades': 'Black'
  };
  //String color = colormap[this.suit];
  Card({String rank, String suit}) {
    this.suit = suit;
    this.rank = rank;
    this.color = colormap[suit];
  }

  toString() {
    return '$rank of $suit is $color';
    //return '$rank of $suit';
  }
}
