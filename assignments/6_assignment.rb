RSpec.describe Array do
	subject(:sally) do
		['Element-1' , 'Element-2']
	end

	it 'test the subject length' do
		puts "Subject length - #{subject.length}. Subject is #{subject}"
		expect(subject.length).to eq(2)
		puts ''

		puts 'Removing one element from the subject'
		subject.pop()
		puts "Subject length - #{subject.length}. Subject is #{subject}"
		expect(subject.length).to eq(1)
	end

	it 'Check that the sally is equal to the original Array' do
		puts "Check that the sally is equal to the original Array - #{expect(sally).to eq(subject)}"
		expect(sally).to eq(subject)
	end

end