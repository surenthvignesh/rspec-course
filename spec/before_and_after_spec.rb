RSpec.describe 'before and after hooks' do

	before(:context) do
		puts ''
		puts 'Before context'
	end

	after(:context) do
		puts ''
		puts 'After context'
	end

	before(:example) do
		puts ''
		puts 'Before example'
	end

	after(:example) do
		puts ''
		puts 'After example'
	end

	it 'is jsut an random example' do
		puts ''
		expect(5*4).to eq(20)
	end

	it 'is jsut another random example' do
		puts ''
		expect(3-2).to eq(1)
	end
end