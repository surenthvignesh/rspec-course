RSpec.describe 'spies' do
	let(:animal) { spy('animal') }

	it 'confirms that a message has been received' do
		puts ''
		puts 'confirms that a message has been received'

		# Spies - First do action and then expect the methods are received or invoked

		animal.eat_food
		animal.drink_water
		expect(animal).to have_received(:eat_food)
		expect(animal).not_to have_received(:eat_human)
		expect(animal).to have_received(:drink_water)
	end

	it 'resets between examples' do
		puts ''
		puts 'resets between examples'
		expect(animal).not_to have_received(:eat_food)
	end

	it 'retains the same functionality of a regular double' do
		puts ''
		puts 'retains the same functionality of a regular double'
		animal.eat_food
		animal.eat_food
		animal.drink_water
		animal.eat_food('Sushi')
		animal.eat_food('Sushi')
		
		expect(animal).to have_received(:eat_food).exactly(4).times
		expect(animal).to have_received(:drink_water).exactly(1).times
		expect(animal).to have_received(:eat_food).at_least(2).times
		expect(animal).to have_received(:eat_food).at_most(10).times
		expect(animal).to have_received(:eat_food).twice.with('Sushi')
		# expect(animal).to have_received(:eat_food).once.with('Sushi')
		expect(animal).to have_received(:eat_food).with('Sushi').exactly(2).times
	end

end