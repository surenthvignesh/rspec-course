RSpec.describe Array do 

	it 'should return the subject length' do
		puts "Subject length is #{subject.length}. Subject is #{subject}"
		puts subject.class
		expect(subject.length).to eq(0)
		subject.push('test')
		puts "Subject length is #{subject.length}. Subject is #{subject}"
		expect(subject.length).to eq(1)
	end

end