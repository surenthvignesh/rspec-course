RSpec.describe 'not_to method' do
	it 'checks for the inverse of a matcher' do
		puts ''
		puts 'inverse of a matcher'
		expect(5).not_to eq(10)

		puts ''
		puts 'Equal - object identity matcher'
		expect([1,2,3]).not_to equal([1,2,3])

		puts ''
		puts 'Odd - predicate method'
		expect(10).not_to be_odd
		expect([1,2,3]).not_to be_empty

		puts ''
		puts 'Truthy & falsy - check method'
		expect(nil).not_to be_truthy
		expect(true).not_to be_falsy

		puts ''
		puts 'start_with & end_with - check method'
		expect('Philadelphia').not_to start_with('car')
		expect('Philadelphia').not_to end_with('car')

		puts ''
		puts 'respond_to - check method'
		expect(5).not_to respond_to(:length)

		puts ''
		puts 'include - check method'
		expect([:a, :c, :b]).not_to include(:d)
		expect([:a, :c, :b]).to include(:c)

		puts ''
		puts 'raise_error - check method'
		expect { 11/3 }.not_to raise_error(NameError)

	end 
end