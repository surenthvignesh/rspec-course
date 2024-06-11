class HotChocolate
	def drink
		'Delicious'
	end

	def discard
		'PLOP!'
	end

	def purchase(number)
		"Awesome, I just purchased #{number} more hot chocolate beverages!"
	end
end

# class Coffee
# 	def drink; end
# 	def discard; end
# 	def purchase(number); end
# end

RSpec.describe HotChocolate do
	it 'confirms that an object can respond to a method' do
		puts ''
		puts 'object can respond to a method'
		expect(subject).to respond_to(:drink)
		expect(subject).to respond_to(:discard)
		expect(subject).to respond_to(:drink, :discard, :purchase)
	end

	it 'confirms an object can respond to a method with arguments' do
		expect(subject).to respond_to(:purchase)
		puts ''
		# puts "Purchase - #{subject.purchase(1)}"
		expect(subject).to respond_to(:purchase).with(1).arguments
	end

	puts ''
	puts 'One liner syntax'
	it { is_expected.to respond_to(:purchase, :discard) }
	it { is_expected.to respond_to(:purchase).with(1).arguments }

end