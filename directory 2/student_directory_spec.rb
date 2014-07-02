require 'student directory'

describe "start student directory TDD from scratch"
context "Core of the program" do 

	it 'Print Header' do
		expect (self).to eq "Welcome to the Student Directory of Makers Academy"
		print_header
	end

	it 