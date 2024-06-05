# Making the Specs Pass
class Card
	attr_accessor :rank, :suit

	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end
end

# Reducing duplication - The Let method
RSpec.describe Card do	

	# before hook method
	# before do
	# # before(:example) do
	# 	@card = Card.new('Ace', 'Spades')
	# end

	# Helper method
	# def card
	# 	Card.new('Ace', "Spades")
	# end

	# let method to get the card - Reducing duplication
	let(:card) { Card.new('Ace', "Spades") }

	# Lazy loading
	# let(:x_val) { 1+1 }
	# let(:y_val) { x_val+3 }

	it 'has a rank and that rank can change' do
		expect(card.rank).to eq('Ace')
		card.rank = 'Queen'
		expect(card.rank).to eq('Queen')
		# expect(y_val).to eq(5)
	end

	it 'has a suit' do
		expect(card.suit).to eq('Spades')
	end

	it 'has a custom error message' do
		comparison = 'Other value'
		expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead!"
	end

end


