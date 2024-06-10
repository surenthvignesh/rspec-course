# false values -- false, nil
# truthy values -- everything else

RSpec.describe 'be matchers' do
	it 'can test for truthiness' do
		puts ''
		puts 'test for truthiness'
		expect(true). to be_truthy
		expect('Hello'). to be_truthy
		expect(5). to be_truthy
		expect(0). to be_truthy
		expect(-1). to be_truthy
		expect({3=>4}). to be_truthy
		expect([3,4]). to be_truthy
		expect([]). to be_truthy
		expect({}). to be_truthy
		expect(:symbol). to be_truthy
	end

	it 'can test for falsiness' do
		puts ''
		puts 'test for falsiness'
		expect(false). to be_falsy
		expect(nil). to be_falsy
	end

	it 'can test for nil' do
		puts ''
		puts 'test for nil'
		expect(nil).to be_nil

		my_hash = {a: 2}
		expect(my_hash[:b]).to be_nil
		expect(my_hash[:b]).to be(nil)
		expect(my_hash[:b]).to be_falsy

		expect({}.empty?).to be_truthy
		expect([10, 20, 30]).to all(be_even)
		expect([0, 1, 2]).to all(be >= 0)
		expect(["hello", 0, -10, [], 99.99, :hello, true, [1, 2, 3] ]).to all(be_truthy)
		expect([false, nil ]).to all(be_falsy)
	end
end