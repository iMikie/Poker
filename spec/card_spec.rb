require 'rspec'
require 'card'

describe Card do
  describe '#initialize' do
    it 'value and suit match passed parameters' do
      c = Card.new(:three, :spades)

      expect(c.value).to eq(:three)
      expect(c.suit).to eq(:spades)
    end
  end
end
