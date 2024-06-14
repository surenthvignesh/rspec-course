RSpec.describe 'equality mathcers' do
	let(:a) { 3.0 }
	let(:b) { 3 }

	describe 'eq matcher' do
		it 'test for value and ignores type' do
			puts ''
			puts 'eq matcher'
			expect(a).to eq(3)
			expect(b).to eq(3.0)
			expect(a).to eq(b)
		end
	end

	describe 'eql matcher' do
		it 'test for the value including same type' do
			puts ''
			puts 'eql matcher'
			expect(a).not_to eql(3)
			expect(b).not_to eql(3.0)
			expect(a).not_to eql(b)


			expect(a).to eql(3.0)
			expect(b).to eql(3)
		end
	end

	describe 'equal and be matcher' do
		let(:c) { [1,2,3] }
		let(:d) { [1,2,3] }
		let(:e) { c }

		it 'cares about object identity' do
			puts ''
			puts 'Cares about object identity -'
			expect(c).to eq(d)
			expect(c).to eql(d)

			# expect(c).to equal(d) # throws an errors says that "Compared using equal?, which compares object identity, but expected and actual are not the same object"
			# equal - compares the object identity. Cares about the object identity
			expect(c).to equal(e)
			puts ''
			puts 'campares with be matcher'
			expect(c).to be(e)
			puts ''
			puts 'campares not_to with be matcher'
			expect(c).not_to equal(d)
			puts ''
			puts 'campares not_to with equal matcher'
			expect(c).not_to equal([1,2,3,])
		end

		# eq 			- checks for the same values
		# eql 		- checks for the same values and its type
		# equal 	- checks for the same values and its object identity

	end

end