class Deck
	def self.build
		# business logic to build a whole bunch of cards
	end
end

class CardGame
 attr_reader :cards
	
	def start
		@cards = Deck.build
	end

end


RSpec.describe CardGame do
	puts ''
	puts 'Class double'
	it 'can only implement class methods that are defined on a class' do
		# class_double(Deck, build: ['Ace', "Queen"])
		deck_class = class_double(Deck, build: ['Ace', "Queen"]).as_stubbed_const

		puts ''
		puts 'Check build method is received'
		expect(deck_class).to receive(:build)
		subject.start
		puts ''
		puts 'Check the array values are matched'
		expect(subject.start).to eq(['Ace', 'Queen'])

	end
end