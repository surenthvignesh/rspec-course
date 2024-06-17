RSpec.describe 'allow method review' do
	it 'can customize return value for methods on doubles' do
		puts ''
		puts 'customize return value for methods on doubles'
		calculator = double
		# puts "Test - #{allow(calculator).to receive(:add)}"
		puts 'Receive add method.'
		# allow(calculator).to receive(:add)
		allow(calculator).to receive(:add).and_return(15)
		# puts "Receive add method - returns nil #{expect(calculator.add).to be_nil}"
		# expect(calculator.add).to be_nil


		# It doesn't bother about the arguments. It just cares about the return value
		expect(calculator.add).to eq(15)
		expect(calculator.add(3)).to eq(15)
		expect(calculator.add(-2, -3, -4)).to eq(15)
		expect(calculator.add('Hello')).to eq(15)
	end

	it 'can stub one or more methods on a real object' do
		arr =[1,2,3]
		puts ''
		puts 'can stub one or more methods on a real object'
		allow(arr).to receive(:sum).and_return(10)
		expect(arr.sum).to eq(10)

		arr.push(4)
		expect(arr).to eq([1,2,3,4])

	end

	it 'can return values in sequence' do
		puts ''
		puts 'can return values in sequence'
		mock_array = double
		allow(mock_array).to receive(:pop).and_return(:c, :b, nil)
		# [:b, :c]
		expect(mock_array.pop). to eq(:c)
		expect(mock_array.pop). to eq(:b)
		expect(mock_array.pop). to be_nil
		expect(mock_array.pop). to be_nil
		expect(mock_array.pop). to be_nil
		expect(mock_array.pop). to be_nil



	end

end