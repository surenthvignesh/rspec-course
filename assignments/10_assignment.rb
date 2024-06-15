RSpec.describe 'double' do
	it "tests the student's knowledge of the course's content" do

		# 1. Create double with the name "Database Connection"
		# The double should have a method called connect that returns the value true.
		# The double also have a method called disconnect that returns the value "Goodbye".
		# The double's methods should be assigned in the initial invocation of the double method.
		# Write two expectations, one for connect and one for disconnect, that confirms the return value of each.
		# Assign the double to the variable db.
		puts ''
		db = double("database Connection", connect: true, disconnect: "Goodbye")
		expect(db.connect).to eq(true)
		expect(db.disconnect).to eq("Goodbye")
		puts "DB Connect - #{db.connect}"
		puts "DB disconnect - #{db.disconnect}"
		# allow(db).to receive(:connect).and_return(true)
		# allow(db).to receive(:disconnect).and_return("Goodbye")

		# 2. Create a double with the name "File System"
		# Using the allow method, give the double a read method that returns the value "Romeo and Juliet".
		# Using the allow method, give the double a write method that returns the value false.

		fs = double("File System")
		puts ''
		allow(fs).to receive(:read).and_return("Romeo and Juliet")
		puts "File System read - #{fs.read}"
		allow(fs).to receive(:write).and_return(false)
		puts "File System write - #{fs.write}"

	end
end




