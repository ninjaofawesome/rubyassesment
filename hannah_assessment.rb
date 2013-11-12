####Section One: Arrays####

array = ["Blake", "Ashley", "jeff"]
<< "Hannah"

array.index[1]

array.index[2]

#####Section Two: Hashes#####

instructor = {:name =>"ashley" :age=>27}
instructor{:location} = "NYC"

print instructor

instructor.values_at('ashley')

instructor[:age]


########Section three: Nested structures #############
school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

school{:founded_in} = 2013

:students{:name, :grade} = "Gustavo", "D"

:students = :students.delete_if {|value, key| value == "Billy"}

:students{:semester} = "Summer"

:instructors[1] [:subject] = "being almost better than Blake"

:students[2] [:grade] = "F"

instructors[2] [:subject]return

school[:founded_in]print

puts school

########Section Four: Methods##########

school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

def grade(name)
  school[:students].each do |student|
    if student[:name] == name
      return student[:grade]
    end
  end
end


def change(name, new_subject)
  school[:instructors].each do |instructor|
    if instructor[:name]  == name
      instructor[:subject] = new_subject
    end
  end
end

change("Blake", "Being Terrible")

def new_student(name, grade)
  school[:students] << {:name=>name, :grade=>grade}
end    

new_student("hannah","A+")


def key_value(key, value)
  school.push(key,value)
end

key_value("ranking", 1)

#######Section Five: Object Orientation########



def School
  def initialize()
    @name = "Happy Funtime School"
    @location = "NYC"
    @ranking = 1
    @instructors = [{:name=>"Blake", :subject=>"being awesome" }, 
                    {:name=>"Ashley", :subject=>"being better than blake"},
                    {:name=>"Jeff", :subject=>"karaoke"}]
    @students = [{:name => "Marissa", :grade => "B"},
                 {:name=>"Billy", :grade => "F"},
                 {:name => "Frank", :grade => "A"},
                 {:name => "Sophie", :grade => "C"}]
  }
    @semester = "Fall"
  end

  attr_accessor name, location, instructors, students, season
  attr_reader ranking


  def ranking
     if rankings == 1
      puts rankings = school[0]
  end

  def new_student(name, grade, season)
    school[:students] << {:name=>name, :grade=>grade, :semester=>season}
  end  

  def failing_student(flunk)
    if school[:students] == flunk
      delete_if flunk = name
  end

end

school.name()
school.locations()
school.rankings()
school.instructors()
school.student()

new_student("Hannah", "A+", "Fall")

failing_student.flunk("Hannah")

#######Classes########


school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

def Student
  :students.to_s
end

def find_student
  puts "What Student are you looking for?"
  answer = gets.chomp
  @name = answer == :students[:name]
  puts "Ah yes, #{:name}! Stellar student if there ever was one."
end

end

######Self#######

a. hello
b. say_hello
c. Nothing, if the class student is new (which I'm assuming each instance in this case is, not that it is building on the example before).
d. say_hello?
e. "goodbye"