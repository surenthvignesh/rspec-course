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


# Reading_Failures_Topic:
# 	To run the rspec files,
# 	cd~ rspec - this will run all the rspec files.

# 	To run specific files,
# 	cd~ rspec spec/card_spec.rb