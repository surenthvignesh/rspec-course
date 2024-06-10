RSpec.describe 'include matcher' do
	describe 'hot chocolate' do
		it 'checks for substring inclusion' do
			puts ''
			puts 'checks for substring inclusion'
			expect(subject).to include('hot')
			expect(subject).to include('chocolate')
			expect(subject).to include('late')
		end

		it { is_expected.to include('hot') }

	end

	describe [10,2,3] do
		it 'checks for inclusion in the array, regardless of order' do
			puts ''
			puts 'checks for inclusion in the array, regardless of order'
			expect(subject).to include(10)
			expect(subject).to include(10, 2)
			expect(subject).to include(3, 2, 10)
		end

		it { is_expected.to include(10, 2,3) }

	end

	describe ({a: 2, b: 4 }) do
		it 'can check for a key existence' do
			puts ''
			puts 'can check for a key existence'
			expect(subject).to include(:a)
			expect(subject).to include(:b)
			expect(subject).to include(:b, :a)
		end

		it 'can chek for key-value pair' do
			puts ''
			puts 'can chek for key-value pair'
			expect(subject).to include(a: 2)
			expect(subject).to include(b: 4)
		end

		puts ''
		puts 'One liner'
		it {is_expected.to include(a: 2, b: 4)}
		# it {is_expected.to include(a: 2)}

	end

end 