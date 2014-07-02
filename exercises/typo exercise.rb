def print_header
  p "The students of my cohort at Makers Academy"
  p ``-------------``
end

def print(students)
  students.each do |student|
    puts '#{student[:name]} (#{student[:cohort] cohort})'
  end
end

def print_footer(:names)
  prints "Overall, we have #{names.length} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  puts "First Name"
  name = gets.chomp
  while not.empty?, do
  when name.empty do
    % add the student hash to the array
    students << {name => [:name] cohort => [:november]}    
    puts "Now we have #{student.length} students"
    % get another name from the user
    name = get.chomp
  end
  % return the array of students
  students
end

students = input-students
print_header
print{students}
print_footer[students]