# Predicate methods return only boolean value - true or false
# ? at the end of the method name is predicate method
# Examples
puts 0.zero?
puts 1.zero?

puts ''
puts 2.even?
puts 3.even?

puts ''
puts 1.odd?
puts 16.odd?

puts ''
puts [].empty?
puts [2].empty?


RSpec.describe 'predicate methods and predicate matchers' do
	it 'can be tested with ruby methods' do
		puts ''
		puts 'can be tested with ruby methods'
		result = 16/2
		expect(result.even?).to eq(true)
	end

	it 'can be tested with predicate matchers' do
		puts ''
		puts 'can be tested with predicate matchers'
		# result = 16/2
		# puts ''
		# puts 'Check for even'
		expect(16/2).to be_even
		expect(16/3).not_to be_even
		expect(16/3).to be_odd

		expect(0).to be_zero
		expect([]).to be_empty
		expect(nil).to be_nil

	end

	describe 0 do
		# subject {1}
		puts ''
		puts 'check the predicate method with described class'
		it { is_expected.to be_zero }
		# it { is_expected.not_to be_zero }
		# expect(subject).to eq(1)
	end

end