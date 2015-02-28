require_relative 'hand_type_classes.rb'
require_relative 'card'

class Hand
  include HandTypes

  HAND_RANKS = {
    four_of_a_kind:  8,
    full_house:      7,
    flush:           6,
    straight:        5,
    three_of_a_kind: 4,
    two_pair:        3,
    one_pair:        2,
    high_card:       1
  }

  CARD_RANKS = {
    two:   2,
    three: 3,
    four:  4,
    five:  5,
    six:   6,
    seven: 7,
    eight: 8,
    nine:  9,
    ten:   10,
    jack:  11,
    queen: 12,
    king:  13,
    ace:   14
  }

  attr_reader :cards

  def self.deal(deck)
    self.new(deck.take(5))
  end

  # takes an array of the form [[:three, :hearts], ...]
  def self.get_cards(card_array)
    cards = []

    card_array.each do |options|
      cards << Card.new(*options)
    end

    self.new(cards)
  end

  def initialize(cards)
    @cards = cards
  end

  def values(ace)
    if ace == :ace_high
      ace_value = 14
    elsif ace == :ace_low
      ace_value = 1
    else
      raise "Hand#values requires :ace_high or :ace_low as input"
    end

    if ace_value == 14
      vals = @cards.map { |card| CARD_RANKS[card.value] }
    elsif ace_value == 1
      vals = @cards.map { |card| CARD_RANKS[card.value] }
      vals.map! { |val| val == 14 ? ace_val : val }
    end

    vals
  end

  # # returns integer; the higher, the higher the hand value
  # def rank
  #
  # end

  # returns e.g. flush, four_of_a_kind
  def hand_type

  end

  # returns array of kickers in decreasing importance
  def kicker

  end


end
