# Reducing boilerplate codes

RSpec.describe Hash do 
	# let(:my_hash) { {} }
	# let(:subject) { Hash.new }
	it 'should start off empty' do
		# puts subject
		# puts subject.class
		# subject['s'] = 1
		expect(subject.length).to eq(0)
		subject['key'] = 'value'
		puts subject
		expect(subject.length).to eq(1)
	end

	it 'is isolated between examples' do
		puts subject.length
		expect(subject.length).to eq(0)
	end

end