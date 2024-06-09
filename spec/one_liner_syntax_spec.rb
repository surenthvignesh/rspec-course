RSpec.describe 'shorthand syntax' do
	subject {5}

	context 'With classic syntax' do
		puts ''
		puts 'With classic syntax'
		it 'should equal 5' do
			expect(subject).to eq(5)
		end
	end

	context 'with my one-liner syntax' do
		puts ''
		puts 'with my one-liner syntax'
		it { is_expected.to eq(5) }
	end

end