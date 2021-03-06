
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------"
end

def print(students)
	student_counter = 0
	while student_counter < students.count do
		# puts "at this point the counter is #{student_counter}"
		puts "#{students[student_counter][:name]} (#{students[student_counter][:cohort]} cohort) who is #{students[student_counter][:age]} years old and likes #{students[student_counter][:hobby]}".center(80) 
		student_counter = student_counter + 1
	end
end


def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

MONTHS = %w[january January February february March march April april May may June june July july August august September september October october November november December december]

def input_students
	puts "Please enter the names, cohorts, hobbies, ages of the students respectively"
	puts "To finish, just hit return twice"
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
		age = gets.chomp
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

students = input_students
print_header
print(students)
print_footer(students)