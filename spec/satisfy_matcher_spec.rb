RSpec.describe ' Satisfy matcher' do
	subject { 'racecar' }

	# Failing spec
	# subject { 'racecars' }

	it 'is a palindrome' do
		puts ''
		puts 'palindrome'
		expect(subject).to satisfy { |value| value == value.reverse }
	end

	it 'can accept a custom error message' do
		expect(subject).to satisfy('be a palindrome') do |value|
			puts "#{value}"
			value == value.reverse
		end
	end

end