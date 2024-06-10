class ProfessionalWrestler
	attr_reader :name, :finishing_move

	def initialize(name, finishing_move)
		@name = name
		@finishing_move = finishing_move
	end
end

RSpec.describe 'have attributes matcher' do
	describe ProfessionalWrestler.new('Stone cold', 'stunner') do
		it 'checks for object attribute and proper values' do
			puts ''
			puts 'checks for object attribute and proper values - name'
			expect(subject).to have_attributes(name: 'Stone cold')
			puts 'checks for object attribute and proper values - finishing_move'
			expect(subject).to have_attributes(finishing_move: 'stunner')
		end

		puts 'One liner'
		it { is_expected.to have_attributes(name: 'Stone cold') }
		it { is_expected.to have_attributes(finishing_move: 'stunner') }
	end


end