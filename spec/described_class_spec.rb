class Prince
	attr_reader :name

	def initialize(name)
		@name = name
	end
end


RSpec.describe Prince do 
	subject {described_class.new('Boris')}
	let(:louis) {described_class.new('Louis')}

	it 'Get the subject name' do
		puts ''
		puts "Get the subject name - Name is #{subject.name}"
		expect(subject.name).to eq('Boris')
	end

	it 'check the let variable value' do
		puts ''
		puts "check the let variable value - Name is #{louis.name}"
		expect(louis.name).to eq('Louis')
	end

end