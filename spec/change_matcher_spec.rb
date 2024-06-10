RSpec.describe 'change matcher' do
	subject {[1,2,3,4,5]}

	it 'checks that a method changes object state' do
		puts ''
		puts 'method changes object state'
		puts 'Subject length before - 3'
		puts 'Subject length after - 4'
		# expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
		expect { subject.push(4) }.to change { subject.length }.by(1)

	end

	it 'accepts negative arguments' do
		puts ''
		puts 'accepts negative arguments'
		puts "Subject - #{subject}"
		puts 'Subject length before - 5'
		puts 'Subject length after - 4'
		# expect { subject.pop }.to change {subject.length}.from(5).to(4)
		expect { subject.pop }.to change {subject.length}.by(-1)


		# expect {subject.pop}.to change {subject.length}.by(-1)
		# expect {subject.pop}.to change {subject.length}.from(5).to(4)
	end

end