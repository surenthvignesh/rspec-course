RSpec.shared_examples 'a Ruby object with 3 elements' do
	it 'returns the number of items' do
		puts 'returns the number of items'
		expect(subject.length).to eq(3)
	end
end

RSpec.describe Array do
	subject {[1,2,3]}
	puts 'Array output'
	include_examples 'a Ruby object with 3 elements'
end

RSpec.describe String do
	subject { 'abc' }
	puts ''
	puts 'String output'
	include_examples 'a Ruby object with 3 elements'
end

RSpec.describe Hash do
	subject { {a: 1, b: 2, c: 3} }
	puts ''
	puts 'Hash output'
	include_examples 'a Ruby object with 3 elements'
end


class SausageLink
	def length
		3
	end
end

RSpec.describe SausageLink do
	subject {described_class.new}
	puts ''
	puts 'SausageLink output'
	include_examples 'a Ruby object with 3 elements'
end