
# first, we print the list of students
students = [
{:name =>"Dr. Hannibal Lecter", :cohort =>:november , :hobby => "eating flesh" },
{:name =>"Darth Vader", :cohort =>:november, :hobby => "killing jedis"},
{:name =>"Nurse Ratched", :cohort =>:november, :hobby => "being a battleaxe"},
{:name =>"Michael Corleone", :cohort =>:november, :hobby => "sleeping with the fishes"},
{:name =>"Terminator", :cohort =>:november, :hobby => "saving John Connor"},
{:name =>"Freddy Krueger", :cohort =>:november, :hobby => "disturbing dreams"},
{:name =>"The Joker", :cohort =>:november, :hobby => "destroying Gotham"},
{:name =>"Joffrey Baratheon", :cohort =>:november, :hobby => "torturing Sansa"},
]

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  # get the first :name
  name = gets.chomp
  # get the cohort
  puts "Which cohort were you in?"
  cohort = gets.chomp.to_sym
  cohort.empty? ? cohort = :november : cohort
  # while the :name is not empty, repeat this code
  while !name.empty? do
    puts "What do you do for hobbies?"
      hobby = gets.chomp
    # add the student hash to the array
    students << {:name =>name, :cohort =>cohort, :hobby =>hobby}
    puts "Now we have #{students.count} students"
    # get another :name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(100)
  puts "______________".center(100)
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)".center(100)
    puts ", (Hobby: #{student[:hobby]})".center(100)
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(100)
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)

