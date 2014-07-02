def input_students
	p "Please enter the names of the students"
	p "To finish just hit return twice"
	#creates an empty array
	students = []
	name = gets.chomp
	#while then name is not empty, repeat this code
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

def print(students)
	count = 0
	while count < students.length do
	p "#{students[count][:name]} #{students[count][:cohort]} cohort" 
	count = count + 1 
end
end 

def print_footer(names)
	p "Overall we have #{names.length} mighty students"
end
#nothing will happen until we do the last bit
students = input_students
print_header
print(students)
print_footer(students)

