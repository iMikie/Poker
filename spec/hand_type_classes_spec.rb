require 'rspec'
require 'hand'

describe 'Hand Type Classes' do
  let(:straight_flush) do
    Hand.get_cards([
      [:three, :hearts],
      [:four, :hearts],
      [:five, :hearts],
      [:six, :hearts],
      [:seven, :hearts]
    ])
  end

  let(:four_of_a_kind) do
    Hand.get_cards([
      [:three, :hearts],
      [:three, :diamonds],
      [:three, :clubs],
      [:three, :spades],
      [:seven, :hearts]
    ])
  end

  let(:full_house) do
    Hand.get_cards([
      [:three, :hearts],
      [:three, :diamonds],
      [:three, :clubs],
      [:seven, :spades],
      [:seven, :hearts]
    ])
  end

  let(:flush) do
    Hand.get_cards([
      [:three, :hearts],
      [:four, :hearts],
      [:ace, :hearts],
      [:queen, :hearts],
      [:seven, :hearts]
    ])
  end

  let(:straight) do
    Hand.get_cards([
      [:three, :hearts],
      [:four, :diamonds],
      [:five, :clubs],
      [:ace, :spades],
      [:two, :hearts]
    ])
  end

  let(:three_of_a_kind) do
    Hand.get_cards([
      [:three, :hearts],
      [:three, :diamonds],
      [:three, :clubs],
      [:king, :spades],
      [:seven, :hearts]
    ])
  end

  let(:two_pair) do
    Hand.get_cards([
      [:three, :hearts],
      [:three, :diamonds],
      [:ace, :clubs],
      [:ace, :spades],
      [:seven, :hearts]
    ])
  end

  let(:one_pair) do
    Hand.get_cards([
      [:three, :hearts],
      [:three, :diamonds],
      [:king, :clubs],
      [:jack, :spades],
      [:seven, :hearts]
    ])
  end

  let(:high_card) do
    Hand.get_cards([
      [:three, :hearts],
      [:five, :diamonds],
      [:queen, :clubs],
      [:jack, :spades],
      [:seven, :hearts]
    ])
  end

  describe StraightFlush do
    describe '#recognizes?' do
      it 'a straight flush' do
        expect(StraightFlush.recognizes?(straight_flush)).to be_truthy
      end

      it 'not a straight flush' do
        expect(StraightFlush.recognizes?(four_of_a_kind)).to be_falsey
      end
    end
  end

  describe FourOfAKind do
    describe '#recognizes' do
      it 'four of a kind' do
        expect(FourOfAKind.recognizes?(four_of_a_kind)).to be_truthy
      end

      it 'not four of a kind' do
        expect(FourOfAKind.recognizes?(one_pair)).to be_falsey
      end
    end
  end

  describe FullHouse do
    describe '#recognizes' do
      it 'full house' do
        expect(FullHouse.recognizes?(full_house)).to be_truthy
      end

      it 'not full house' do
        expect(FullHouse.recognizes?(two_pair)).to be_falsey
      end
    end
  end

  describe Flush do
    describe '#recognizes' do
      it 'flush' do
        expect(Flush.recognizes?(flush)).to be_truthy
      end

      it 'not flush' do
        expect(Flush.recognizes?(three_of_a_kind)).to be_falsey
      end
    end
  end

  describe Straight do
    describe '#recognizes' do
      it 'straight' do
        expect(Straight.recognizes?(straight)).to be_truthy
      end

      it 'not straight' do
        expect(Straight.recognizes?(high_card)).to be_falsey
      end
    end
  end

  describe ThreeOfAKind do
    describe '#recognizes' do
      it 'three of a kind' do
        expect(ThreeOfAKind.recognizes?(three_of_a_kind)).to be_truthy
      end

      it 'not three of a kind' do
        expect(ThreeOfAKind.recognizes?(flush)).to be_falsey
      end
    end
  end

  describe TwoPair do
    describe '#recognizes' do
      it 'two pair' do
        expect(TwoPair.recognizes?(two_pair)).to be_truthy
      end

      it 'not two pair' do
        expect(TwoPair.recognizes?(straight_flush)).to be_falsey
      end
    end
  end

  describe OnePair do
    describe '#recognizes' do
      it 'one pair' do
        expect(OnePair.recognizes?(one_pair)).to be_truthy
      end

      it 'not one pair' do
        expect(OnePair.recognizes?(full_house)).to be_falsey
      end
    end
  end

  describe HighCard do
    describe '#recognizes' do
      it 'high card' do
        expect(HighCard.recognizes?(high_card)).to be_truthy
      end

      it 'not high card' do
        expect(HighCard.recognizes?(straight)).to be_falsey
      end
    end
  end
end
