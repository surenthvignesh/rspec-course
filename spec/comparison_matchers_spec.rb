RSpec.describe 'comparison' do
	it 'allows for comparison' do
		puts''
		puts 'allows for comparison'
		expect(10).to be > 8
		expect(8).to be < 18
		
		expect(1).to be >= -1
		expect(1).to be >= 1
		
		expect(22).to be <= 100
		expect(22).to be <= 22
	end

	describe 100 do
		puts ''
		subject {100}
		# subject {described_class}
		puts 'compare with subject'
		it { is_expected.to be > 90 }
		it { is_expected.to be >= 100 }
		it { is_expected.to be <= 500 }
		it { is_expected.to be <= 100 }
	end

end