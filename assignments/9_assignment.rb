Questions for this assignment
1. Write a compound expectation that asserts the string firetruck starts with the substring "fire" and ends with the substring "truck".
	
	RSpec.describe 'firetruck' do
		it 'start_with and end_with - compound asserts' do
			puts ''
			puts '1. start_with and end_with - compound asserts'
			expect(subject).to start_with('fire').and end_with('truck')
		end
	end

2. Write a compound expectation that asserts that the number 20 is even and that it responds to the times mthod.
	
	RSpec.describe 20 do
		it 'even and responds_to - compound asserts' do
			puts ''
			puts '2. even and responds_to - compound asserts'
			expect(subject).to be_even.and respond_to(:times)
		end
	end

3. Write a compound expectation that asserts that the array [4, 8, 15, 16, 23, 42] includes the value 42 and starts with the values 4, 8, and 15.

	RSpec.describe [4, 8, 15, 16, 23, 42] do
		it 'includes and starts_with -m compound asserts' do
			puts ''
			puts '3. includes and starts_with - compound asserts'
			expect(subject).to include(42).and start_with([4, 8])
			expect(subject).to include(42).and start_with(4, 8)
		end
	end
