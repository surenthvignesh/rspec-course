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
			puts ''
		end
	end
end


actor = Actor.new('Brad pitt')
movie = Movie.new(actor)

movie.start_shooting