RSpec.describe 'raise error matcher' do

	def some_method
		x
	end

	class CustomError < StandardError; end

	it 'can check for a specific error being raised' do
		puts ''
		puts 'NameError'
		expect { some_method }.to raise_error(NameError)
		puts ''
		puts 'ZeroDivisionError'
		expect { 10/0 }.to raise_error(ZeroDivisionError)
	end

	it 'can check for a user-created error' do
		puts ''
		puts 'user-created error'
		expect{ raise CustomError }.to raise_error(CustomError)
	end

end