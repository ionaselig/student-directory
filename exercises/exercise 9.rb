require 'pry'

@line_width = 50

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------"
end

def print_footer(students)
	if students.length == 1
	 p "We have #{students.length} great student"
	else p "Overall, we have #{students.length} great students"
	end
end 

def print (students)
	count = 0 
	cohorts = students.map {|student| student[:cohort]}.uniq.sort  
	cohorts.each do |month| 
		puts "The students in the #{month} cohort are: "
		students.each do |student|
			if student [:cohort] == month		
			puts "#{student[:name]} (#{student[:cohort]} cohort) who is #{student[:age]} years old and likes #{student[:hobby]}".center(@line_width) 
				
			end
		end
	end
end

MONTHS = %w[january January February february March march April april May may June june July july August august September september October october November november December december]
	
def input_students	
	puts "Please enter the names, cohorts, hobbies, ages of the students respectively"
	puts "To finish, just hit enter twice"
	students = []
	puts "First name: "
	name = gets.chomp.capitalize
	while !name.empty? do
		
		puts "Cohort: "
		cohort = gets.chomp.capitalize
		while !MONTHS.include? cohort
			puts "Error, please return cohort month"
			cohort = gets.chomp.capitalize
		end

		puts "Age: "
		age = gets.gsub(/\n/, "")
		while age.to_i <= 4
			puts "Error, please input age greater than 4 as a numerical value"	
			age = gets.chomp
		end 	
		
		puts "Hobby: "
		hobbies = gets.chomp
		if hobbies.empty? 
			hobbies = "unknown" 
		end 

		students << {:name => name, :cohort => cohort, :hobby => hobbies, :age => age}
		puts "There are #{students.length} entered. Now enter the next one."
		# get another name from the user
		puts "First name: "
		name = gets.chomp
	end
	# return the array of students
	students
end

#students = [
#   {:name => "Eddie the Clamberer", :cohort => :july, :age => 29},
#   {:name => "Catharina Rover", :cohort => :june, :age => 30},
#   {:name => "Igor the Melodic", :cohort => :april, :age => 27},
#   {:name => "Marco the Bro", :cohort => :august, :age => 28},
#   {:name => "Lisa Waterbaby", :cohort => :june, :age => 22},
#   {:name => "Michiel all ears", :cohort => :june, :age => 27},
#   {:name => "Jean Big Screen", :cohort => :may, :age => 28},
#   {:name => "Nicola Roadrunner", :cohort => :june, :age => 26},
#   {:name => "Jennie the Wanderer", :cohort => :november, :age => 31},
#   {:name => "Iona VoiceBox", :cohort => :june, :age => 23},
#   {:name => "Nikesh Jammin Chilli", :cohort => :december, :age => 29}
# ]

students = input_students
print_header
print(students)
print_footer(students)