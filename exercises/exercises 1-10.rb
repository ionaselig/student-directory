
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

def input_students
	puts "Please enter the names, hobbies, ages of the students respectively"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get the first name
	puts "First name: "
	name = gets.chomp
	puts "Age: "
	age = gets.chomp
	puts "Hobby: "
	hobbies = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# && !age.empty? && !hobbies.empty? 
		# add the student hash to the array
		students << {:name => name, :cohort => :June, :hobby => hobbies, :age => age}
		puts "There are #{students.length} entered. Now enter the next one."
		# get another name from the user
		puts "First name: "
		name = gets.chomp
		puts "Age: "
		age = gets.chomp
		puts "Hobby: "
		hobbies = gets.chomp
	end
	# return the array of students
	students
end

students = input_students
print_header
print(students)
print_footer(students)