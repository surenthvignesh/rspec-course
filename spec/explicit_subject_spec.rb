RSpec.describe Hash do
	subject(:bob) do
		{a: 1, b: 2}
	end

	it 'has two key value pairs' do
		puts 'Subject - has two key value pairs'
		puts "#{subject}"
		expect(subject.length).to eq(2)
		
		puts 'Bob - has two key value pairs'
		puts "#{subject}"
		expect(bob.length).to eq(2)
	end

	describe 'nexted examples' do
		it 'Nexted - has two key value pairs' do
			puts '----- Nexted - -----'
			puts 'Nexted - Subject - has two key value pairs'
			puts "#{subject}"
			expect(subject.length).to eq(2)
			
			puts 'Nexted - Bob - has two key value pairs'
			puts "#{subject}"
			expect(bob.length).to eq(2)
		end
	end

end