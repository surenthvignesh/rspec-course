RSpec.describe 'Card' do
	it 'has a type' do
		# specify 'has a type' - Can use both it or specify. Both are identical
		card = Card.new('Ace of Spades')
		expect(card.type).to eq('Ace of Spades')
		# expect(1+1).to(eq(2))

	end
end


# Assignment
RSpec.describe 'math_calculations' do
	it 'does basic math' do
		assert_1 = 5 + 5
		assert_2 = 5 * 5
		assert_3 = 5 - 5
		assert_4 = 5 / 5

		expect(assert_1).to eq(10)
		expect(assert_2).to eq(25)
		expect(assert_3).to eq(0)
		expect(assert_4).to eq(1)

	end
end