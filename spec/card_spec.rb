# Making the Specs Pass
class Card
	attr_reader :rank, :suit

	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end
end

# Refractored code examples groups with arguments
RSpec.describe Card do	
	card = Card.new('Ace', 'Spades')

	it 'has a rank' do
		expect(card.rank).to eq('Ace')
	end

	it 'has a suit' do
		expect(card.suit).to eq('Spades')
	end

end


