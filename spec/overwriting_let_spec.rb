class ProgrammingLanguage
	attr_reader :name
	def initialize(name = 'Ruby')
		@name = name
	end
end


RSpec.describe ProgrammingLanguage do
	let(:language) {ProgrammingLanguage.new("Python")}

	it 'should store the name of the language' do
		puts ''
		puts "language name - #{language.name}"
		expect(language.name).to eq('Python')
		puts ''
	end

	context 'with no initialize argument' do
		let(:language) {ProgrammingLanguage.new}

		it 'should default to ruby as the name' do
			puts ''
			puts "Overwriting language name - #{language.name}"
			expect(language.name).to eq('Ruby')
		end
	end

	context 'Check the language final value without Overwriting' do

		it 'should return to python as the name' do
			puts ''
			puts "Overwriting language name - #{language.name}"
			expect(language.name).to eq('Python')
		end
	end

end