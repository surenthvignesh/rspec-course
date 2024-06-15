RSpec.describe ' a random double' do
	it 'only allows defined methods to be invoked' do
		puts ''
		puts 'allows defined methods to be invoked'
		stuntman = double('Mr. Danger', fall_off_lader: 'Ouch', light_on_fire: true)

		puts ''
		puts "fall_off_lader - #{stuntman.fall_off_lader}"
		expect(stuntman.fall_off_lader).to eq('Ouch')

		puts ''
		puts "light_on_fire - #{stuntman.light_on_fire}"
		expect(stuntman.light_on_fire).to eq(true)


		puts ''
		puts 'Double alternate syntax - more understanding'
		stuntman = double('Mr. Danger')
		allow(stuntman).to receive(:fall_off_lader).and_return('Ouch')
		expect(stuntman.fall_off_lader).to eq('Ouch')

		puts ''
		puts 'ALternate syntax - receive messages - with hash params'
		stuntman = double('Mr. Danger')
		allow(stuntman).to receive_messages(fall_off_lader: 'Ouch', light_on_fire: true)
		allow(stuntman).to receive(:fall_off_lader).and_return('Ouch')
		allow(stuntman).to receive(:light_on_fire).and_return(true)
		expect(stuntman.light_on_fire).to be_truthy
		expect(stuntman.light_on_fire).not_to be_falsy

	end
end