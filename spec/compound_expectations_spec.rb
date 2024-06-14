RSpec.describe 25 do
	it 'can test for multiple matchers' do
		puts ''
		puts 'and method - multiple matchers'
		# expect(subject).to be_odd
		# expect(subject).to be > 20

		expect(subject).to be_odd.and be > 20
	end

	puts ''
	puts 'and method - One liner syntax'
	it { is_expected.to be_odd.and (be > 20).and (be <= 50) }

end

RSpec.describe 'caterpillar' do
	it 'supports multiple matchers on a single line' do
		puts ''
		puts 'supports multiple matchers on a single line'
		expect(subject).to start_with('cat').and end_with('lar').and eq('caterpillar')
	end

	puts ''
	puts 'supports multiple matchers on a single line - One liner syntax'
	it {is_expected.to start_with('cat').and end_with('lar')}
end

RSpec.describe [:usa, :canada, :mexico] do
	it 'or - sample method - can check for multiple possibilites' do
		puts ''
		puts 'or - sample method'
		expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico)
	end

end