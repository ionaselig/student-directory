#cleaning p using array
# students = [
#  {:name => "Dave Hole in One", :cohort => :june},
#  {:name => "Eddie the Clamberer", :cohort => :june},
#  {:name => "Catharina Rover", :cohort => :june},
#  {:name => "Igor the Melodic", :cohort => :june},
#  {:name => "Marco the Bro", :cohort => :june},
#  {:name => "Lisa Waterbaby", :cohort => :june},
#  {:name => "Michiel all ears", :cohort => :june},
#  {:name => "Jean Big Screen", :cohort => :june},
#  {:name => "Nicola Roadrunner", :cohort => :june},
#  {:name => "Jennie the Wanderer", :cohort => :june},
#  {:name => "Iona VoiceBox", :cohort => :june},
#  {:name => "Nikesh Jammin Chilli", :cohort => :june},
#  {:name => "Chole bendy", :cohort => :june},
#  {:name => "Toan Ice Cool", :cohort => :june},
#  {:name => "Jamie Uniball", :cohort => :june},
#  {:name => "Peter Hoy", :cohort => :june},
#  {:name => "Talal Olympian", :cohort => :june},
#  {:name => "Charlie String", :cohort => :june},
#  {:name => "Charlotte flat",:cohort => :june},
#  {:name => "Thomas Bolt", :cohort => :june},
#  {:name => "Zoe da Vinci", :cohort => :june],
#  {:name => "Hannah Climb Every Mountain", :cohort => :june],
#  {:name => "Joe Kerb Crawler", :cohort => :june],
#  {:name => "Alex Dr. Beats", :cohort => :june],
#  {:name => "Jeremy who?", :cohort => :june]
# ]#cleaning p using array
def input_students
	p "Please enter the names of the students"
	p "To finish just hit return twice"
	#creates an empty array
	students = []
	name = gets.chomp
	#whiile then name is not empty, repeat this code
	while !name.empty? do
	#add the student hash to the array
	students << {:name => name, :cohort => :june}
	p "Now we have #{students.length} students"
	#get another name from the user
	name = gets.chomp
end
#return array of students
students
end

def print_header
	p "The students of my cohort at Makers Academy"
	p "------------------------"
end

def print_with_index(students)
	students.each do |student|
	p "#{student[:name]} (#{student[:cohort]} cohort)"
	end
def print_'starts_with_-i(a)'
	students each do | student|
		collect|name|'A'*


end

def print_footer(names)
	p "Overall we have #{names.length} mighty students"
end
#nothing will happen until we do the last bit
students = input_students
print_header
print(students)
print_footer(students)

