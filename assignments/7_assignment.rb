Questions for this assignment
1. By default, what will subject equal?

	Instance of the class

2. How do you define a custom subject? Provide a code example.

	subject {[1,2,3]}

3. How does the described_class helper method work? What is the advantage of using it over writing the class name out?

	described_class helper method invoke the class directly. 
	Advantage of the described_class helper method is to avoid repeative class object initialization. Can invoke the class name dynamically.

4. Write an RSpec test for an array with 2 elements. 

	Declare the subject to be [1, 2].

	Write an example that uses expect(subject) to test whether the array is equal to [1, 2].

	Write an example that uses the one-liner is_expected syntax.

	Which do you prefer?


	RSpec.describe 'Array' do
		subject {[1,2]}

		context 'test array value using subject' do
			puts ''
			puts 'test array value using subject'
			it 'test' do
				expect(subject).to eq([1,2])
			end
		end

		context 'test one-liner' do
			puts ''
			puts 'test one-liner'
			it { is_expected.to eq([1,2]) }
		end

	end

5. What's the difference between include_examples and include_context?

	include_examples - Can reuse this text whenever we want in the different examples
	include_context - Can be defined in the top the context and can access all the subject, helper_methods and lazy load variables
	both remove duplications across tests.