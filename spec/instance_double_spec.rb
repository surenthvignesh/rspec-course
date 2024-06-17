class Person

	def a(seconds)
		sleep(seconds)
		"Hello"
	end

	# def b
	# 	"Returns value"
	# end

end


RSpec.describe Person do
	describe 'regular double' do
		it 'can implement any method' do
			puts ''
			puts 'Regular double - implement any method'
			person = double(a: 'Hello', b: 20)
			expect(person.a).to eq('Hello')
		end
	end

	describe 'instance double' do
		it 'can only implement methods that are defined on the class' do
			# person = instance_double(Person, a: 'Hello', b: 30)
			puts ''
			puts 'Instance double - implement methods that are defined on the class'
			person = instance_double(Person)
			allow(person).to receive(:a).with(4).and_return("Hello")		
			expect(person.a(4)).to eq("Hello")
		end
	end

end