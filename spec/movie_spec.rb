class Actor
	def initialize(name)
		@name = name
	end

	def ready?
		sleep(3)
		true
	end

	def act
		"I'm going to act'"
	end

	def fall_off_ladder
		"Call my agent! No way"
	end

	def light_on_fire
		false
	end
end


class Movie
	attr_reader :actor
	
	def initialize(actor)
		@actor = actor
	end

	def start_shooting
		if actor.ready?
			puts ''
			puts "actor.act - #{actor.act}"
			puts "actor.fall_off_ladder - #{actor.fall_off_ladder}"
			puts "actor.light_on_fire - #{actor.light_on_fire}"
			puts "actor.act_again - #{actor.act}"
			puts ''
		end
	end
end

# actor = Actor.new('Brad pitt')
# movie = Movie.new(actor)
# movie.start_shooting


RSpec.describe Movie do

	let(:stuntman) { double("Mr. Danger", ready?: true, act: 'Any string al all', fall_off_ladder: "Sure, lets do it", light_on_fire: true) }
	subject { described_class.new(stuntman) }

	describe '#start shooting method' do
		it 'expects an actor to do 3 actions' do
			puts ''
			puts 'expects an actor to do 4 actions'
			# expect(stuntman).to receive(:ready?)
			# expect(stuntman).to receive(:act)
			# expect(stuntman).to receive(:fall_off_ladder)
			# expect(stuntman).to receive(:light_on_fire)

			puts ''
			puts "Receive counts - once, exactly, at_most, at_least"
			# expect(stuntman).to receive(:light_on_fire).once
			# expect(stuntman).to receive(:light_on_fire).exactly(1).times
			expect(stuntman).to receive(:light_on_fire).at_most(1).times

			# expect(stuntman).to receive(:act).twice
			# expect(stuntman).to receive(:act).exactly(2).times
			# expect(stuntman).to receive(:act).at_most(2).times
			expect(stuntman).to receive(:act).at_least(2).times

			subject.start_shooting
		end
	end

end







