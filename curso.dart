class Deck{
  List<Card> cards = [];
  
  
  Deck(){
    var valores = ['As', 'Dos', 'Tres'];
    var palos = ['Palo1', 'Palo2'];
    for (var palo in palos){
      for (var valor in valores){
        var carta = Card(palo, valor);
        cards.add(carta);
        }
    }
  }
  @override
  toString(){    
    return cards.toString();
  }
}

class Card{
  late String palo;
  late String valor;
  
  Card(this.palo, this.valor);
  
  
  @override
  toString(){
    return '$valor de $palo';
  }
}

void main(){
  var deck = Deck();
  print(deck);
 
}