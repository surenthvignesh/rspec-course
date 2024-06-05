# Making the Specs Pass
class Card
	attr_reader :rank, :suit

	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end
end

# Use Helper Methods
RSpec.describe Card do	

	# before do
	# # before(:example) do
	# 	@card = Card.new('Ace', 'Spades')
	# end

	def card
		Card.new('Ace', "Spades")
	end

	it 'has a rank' do
		expect(card.rank).to eq('Ace')
	end

	it 'has a suit' do
		expect(card.suit).to eq('Spades')
	end

end


