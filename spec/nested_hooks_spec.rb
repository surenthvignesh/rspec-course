RSpec.describe 'nested hooks' do
	before(:context) do
		puts ''
		puts 'OUTER Before Context'
	end

	before(:example) do
		puts ''
		puts 'OUTER Before Example'
	end

	it 'does basic math' do
		puts ''
		puts 'does basic math'
		expect(1+1).to eq(2)
	end

	context 'with condition A' do
		before(:context) do
			puts ''
			puts 'INNER Before Context'
		end

		before(:example) do
			puts ''
			puts 'INNER Before Example'
		end

		it 'does somemore basic math' do
			puts ''
			puts 'does somemore basic math'
			expect(1+5).to eq(6)
		end

		it 'does Subtraction' do
			puts ''
			puts 'does somemore basic math'
			expect(10-5).to eq(5)
		end	
	end

end