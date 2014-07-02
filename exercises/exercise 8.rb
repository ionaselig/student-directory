
@students = []

def run_program
	input_students
	print_header
	print_names
	students_with_firstletter_a
	students_with_namelength_12
	sorted_cohorts
	print_footer
end

def print_header
	puts "The students of Makers Academy".center(80)
	puts "--------------".center(80)
end

def print_names
	student_counter = 0
	while student_counter < @students.count do
		# puts "at this point the counter is #{student_counter}"
		puts "#{student_counter + 1}) #{@students[student_counter][:name]} (#{@students[student_counter][:cohort]} cohort), is #{@students[student_counter][:age]} years old and likes #{@students[student_counter][:hobby]}".center(80)
		student_counter = student_counter + 1
		# if student[:name].start_with?("A")
		# if student[:name].length < 12
	end
end

def input_students
	puts "Enter the name, cohort, age and hobby of each of the Makers Academy students for the student directory."
	puts "When you're done, just hit return twice"
	# get the first name
	puts "First name: "
	name = gets.chomp.capitalize
	# while the name is not empty, repeat this code
	while !name.empty? do
		# && !age.empty? && !hobbies.empty? 
		puts "Enter the month (in numbers) of your cohort. e.g. 4 = April."
		cohort = gets.chomp

		if cohort.empty?
			cohort = :unkown
		end

		cohort = (Time.new(Time.now.year, cohort.to_i).strftime ("%B").to_sym

=begin cohort = gets.chomp.capitalize.to_sym
			if cohort.empty?
				cohort = :unkown
			end
=end

		# asking for age number value between 0-90	
		puts "Age: "
		age = gets.chomp
			while (age.to_i == 0 or age.to_i < 0 or age.to_i > 90)
				puts "Please enter a REAL age (in numbers!)"
				age = gets.chomp
			end

		puts "Hobby: "
		hobbies = gets.chomp
		# add the student hash to the array
		@students << {name: name, cohort: cohort, hobby: hobbies, age: age}
			if @students.length == 1
				puts "Now we have #{@students.length} student. Enter the next one."
			else 
				puts "Now there are #{@students.length} students. Enter the next one..."
		end
		# get another name from the user
		puts "First name: "
		name = gets.chomp.capitalize 
	end
	# return the array of students
	#students
end


def sorted_cohorts
	puts "\n "
	puts "Here are the students sorted by cohort".center(80)
	puts "--------------".center(80)
	@students.sort_by! {|sorted_students| sorted_students[:cohort]}
	print_names
end


def students_with_firstletter_a
	@students.each do |student|
	if student[:name].start_with?("A" , "a") #or student[:name].start_with?("a")
		puts "\n "
		puts "The students who have names beginning with the letter A are: #{student[:name]}"
		end
	end
end

def students_with_namelength_12
	@students.each do |student|
		if student[:name].length > 12
			puts "\n "
			puts "The students with freakishly long first names are: #{student[:name]}"
		end
	end
end

def print_footer
	puts "\n "
	puts "So overall, we have #{@students.length}... questionable students.".center(80)
	puts "\n "
end

run_program