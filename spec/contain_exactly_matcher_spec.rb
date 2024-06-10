RSpec.describe 'contain_exactly matchet' do
	subject {[1,2,3]}

	describe 'long form syntax' do
		it 'should check for the presence of all elements' do
			puts ''
			puts 'presence of all elements'
			expect(subject).to contain_exactly(1,2,3)
			expect(subject).to contain_exactly(3,2,1)
			expect(subject).to contain_exactly(2,1,3)
			
			# expect(subject).to contain_exactly(2,1)
			# expect(subject).to contain_exactly(1,2,3,4)
		end
	end

	puts ''
	puts 'One liner codes'
	it { is_expected.to contain_exactly(1,2,3) }
	it { is_expected.to contain_exactly(3,2,1) }
	it { is_expected.to contain_exactly(2,1,3) }
end