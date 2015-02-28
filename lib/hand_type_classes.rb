require 'byebug'

module HandTypes
  def value_count
    value_count = {}

    @cards.each do |card|
      value = card.value
      value_count[value] = (value_count[value] ? value_count[value] + 1 : 1)
    end

    value_count
  end

  def suit_count
    suit_count = {}

    @cards.each do |card|
      suit = card.suit
      suit_count[suit] = (suit_count[suit] ? suit_count[suit] + 1 : 1)
    end

    suit_count
  end

  def compare_sorted(ace_value)
    sorted = values(ace_value).sort
    (sorted.length - 1).times do |i|
      return false unless sorted[i] + 1 == sorted[i + 1]
    end

    true
  end

  def is_straight?
    ace_high_sorted = compare_sorted(:ace_high)
    ace_low_sorted = compare_sorted(:ace_low)

    ace_high_sorted || ace_low_sorted
  end

  def straight_flush?
    return false unless suit_count.values == [5]
    is_straight?
  end

  def four_of_a_kind?
    value_count.values.sort == [1, 4]
  end

  def full_house?
    value_count.values.sort == [2, 3]
  end

  def flush?
    return false if is_straight?
    suit_count.values == [5]
  end

  def straight?
    return false if suit_count.values == [5]
    is_straight?
  end

  def three_of_a_kind?
    value_count.values.sort == [1, 1, 3]
  end

  def two_pair?
    value_count.values.sort == [1, 2, 2]
  end

  def one_pair?
    value_count.values.sort == [1, 1, 1, 2]
  end

  def high_card?
    return false unless value_count.values.sort == [1, 1, 1, 1, 1]
    suit_count.values != [5]
  end
end
