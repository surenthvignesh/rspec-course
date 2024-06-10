RSpec.describe 'all matcher' do
	it 'allows for aggregate checks' do
		# [3,1,5].each do |val|
		# 	expect(val).to be_odd
		# end

		puts ''
		puts 'Use predicate methods in all matcher'
		puts "all(be_odd) -- [5,7,9] -- #{expect([5,7,9]).to all(be_odd)}"
		expect([5,7,9]).to all(be_odd)

		puts ''
		puts "all(be_even) -- [4,6,8,2] -- #{expect([4,6,8,2]).to all(be_even)}"
		expect([4,6,8,2]).to all(be_even)

		expect([[], [], []]).to all(be_empty)
		expect([0, 0]).to all(be_zero)

		puts ''
		puts "all(be <= 10) -- [5, 7, 9] -- #{expect([5, 7, 9]).to all(be <= 10)}"
		expect([5, 7, 9]).to all(be <= 10)

	end

	describe [5, 7, 9] do
		puts ''
		puts 'one liner predicate all matchers'
		it { is_expected.to all(be_odd) }
		it { is_expected.to all(be < 10) }
	end
end