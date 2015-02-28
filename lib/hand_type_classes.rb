class StraightFlush
  def self.recognizes?(hand)
    sample_suit = hand.cards[0].suit
    return false unless hand.cards.all? { |card| card.suit == sample_suit }

    ace_high_sorted = compare_sorted(hand, :ace_high)
    ace_low_sorted = compare_sorted(hand, :ace_low)

    ace_high_sorted || ace_low_sorted
  end

  def self.compare_sorted(hand, ace_value)
    sorted = hand.values(ace_value).sort
    (sorted.length - 1).times do |i|
      return false unless sorted[i] + 1 == sorted[i + 1]
    end

    true
  end
end

class FourOfAKind
  def self.recognizes?(hand)
    sample_values = [hand.cards[0].value, hand.cards[1].value]

    sample_values.any? do |value|
      hand.cards.select do |card|
        card.value == value
      end.length == 4
    end
  end

end

class FullHouse
  def self.recognizes?(hand)

  end
end

class Flush
  def self.recognizes?(hand)

  end
end

class Straight
  def self.recognizes?(hand)

  end
end

class ThreeOfAKind
  def self.recognizes?(hand)

  end
end

class TwoPair
  def self.recognizes?(hand)

  end
end

class OnePair
  def self.recognizes?(hand)

  end
end

class HighCard
  def self.recognizes?(hand)

  end
end
