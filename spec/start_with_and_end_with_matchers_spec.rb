RSpec.describe 'start_with and end_with matcher' do
	describe 'caterpillar' do
		it 'should check a substring at the beginning or end' do
			puts ''
			puts 'substring at the beginning - cat'
			expect(subject).to start_with('cat')

			puts ''
			puts 'substring at the end - pillar'
			expect(subject).to end_with('pillar')

			# Ruby is case sensitive - this will throw an error
			# expect(subject).to start_with('Cat')

		end
		
		puts ''
		puts 'String - One liner - start with'
		it {is_expected.to start_with('cat')}

		puts ''
		puts 'String - One liner - end with'
		it {is_expected.to end_with('pillar')}

	end

	describe [:a, :b, :c, :d] do
		it 'should check for elements at beginning or end of the array' do
			puts ''
			puts 'Array - elements at beginning - :a'
			expect(subject).to start_with(:a)
			puts ''
			puts 'Array - elements at beginning - :a, :b'
			expect(subject).to start_with(:a, :b)
			puts ''
			puts 'Array - elements at end - :d'
			expect(subject).to end_with(:d)
			puts ''
			puts 'Array - elements at end - :c, :d'
			expect(subject).to end_with(:c, :d)
		end

		puts ''
		puts 'Array - One liner - start_with'
		it {is_expected.to start_with(:a, :b)}

		puts ''
		puts 'Array - One liner - end_with'
		it {is_expected.to end_with(:c, :d)}

	end

end