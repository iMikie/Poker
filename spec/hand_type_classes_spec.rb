require 'rspec'
require 'hand'

describe Hand do
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

  describe '#straight_flush?' do
    it 'a straight flush' do
      expect(straight_flush.straight_flush?).to be_truthy
      # expect(straight_flush.straight_flush?).to be_truthy
    end

    it 'not a straight flush' do
      expect(four_of_a_kind.straight_flush?).to be_falsey
    end
  end
  #
  # describe 'four_of_a_kind' do
  #   it 'four of a kind' do
  #     expect(four_of_a_kind?(four_of_a_kind)).to be_truthy
  #   end
  #
  #   it 'not four of a kind' do
  #     expect(four_of_a_kind?(one_pair)).to be_falsey
  #   end
  # end
  #
  # describe 'full_house' do
  #   it 'full house' do
  #     expect(full_house?(full_house)).to be_truthy
  #   end
  #
  #   it 'not full house' do
  #     expect(full_house?(two_pair)).to be_falsey
  #   end
  # end
  #
  # describe 'flush' do
  #   it 'flush' do
  #     expect(flush?(flush)).to be_truthy
  #   end
  #
  #   it 'not flush' do
  #     expect(flush?(three_of_a_kind)).to be_falsey
  #   end
  # end
  #
  # describe 'straight' do
  #   it 'straight' do
  #     expect(straight?(straight)).to be_truthy
  #   end
  #
  #   it 'not straight' do
  #     expect(straight?(high_card)).to be_falsey
  #   end
  # end
  #
  # describe 'three_of_a_kind' do
  #   it 'three of a kind' do
  #     expect(three_of_a_kind?(three_of_a_kind)).to be_truthy
  #   end
  #
  #   it 'not three of a kind' do
  #     expect(three_of_a_kind?(flush)).to be_falsey
  #   end
  # end
  #
  # describe 'two_pair' do
  #   it 'two pair' do
  #     expect(two_pair?(two_pair)).to be_truthy
  #   end
  #
  #   it 'not two pair' do
  #     expect(two_pair?(straight_flush)).to be_falsey
  #   end
  # end
  #
  # describe 'one_pair' do
  #   it 'one pair' do
  #     expect(one_pair?(one_pair)).to be_truthy
  #   end
  #
  #   it 'not one pair' do
  #     expect(one_pair?(full_house)).to be_falsey
  #   end
  # end
  #
  # describe 'high_card' do
  #   it 'high card' do
  #     expect(high_card?(high_card)).to be_truthy
  #   end
  #
  #   it 'not high card' do
  #     expect(high_card?(straight)).to be_falsey
  #   end
  # end
end
