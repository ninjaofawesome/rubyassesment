#######1. Arrays########

# Section A 

array = ["Blake","Ashley","Jeff"]

array << "Hannah"

puts array # Section B

puts array[1] #Section C (pls note, this will return "ashley")

puts array[2] #Section D

########2. Hashes#######

instructor = {:name =>"Ashley", :age => 27}

instructor[:location] = "NYC" #Section A

puts instructor #Section B

puts instructor[:name] #Section C

puts instructor[27] = :age #Section D  (although technically correct in that it prints out the key name, 
	                                   #not sure if it was what you were looking for.)

#####3. Nested Structures######

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

school[:founded_in] = 2013 #Section A

#Section B.  Not correct.
	school.each do |key, value|
		if key == [:students]
			:students[:name] = "Hannah"
		end
	end

#this could work though..  possibly?  (Its not going through a nested array properly.)

school[:students] = [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"},
    {:name => "Gustavo Frieng", :grade => "unknown"}
  ]


#Section C.  Technically, this would do the trick, but its not an ideal answer.  
# Also, can't figure out how this would work with ANY name. 
school[:students] = [ 
    {:name => "Marissa", :grade => "B"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"},
    {:name => "Gustavo Frieng", :grade => "unknown"}
  ]

#Section D.  Not correct either.
school.each do |key, value|
	key(:students).each do value => {[:semester] = "summer"}
end

#Section E. Also technically not correct, but it gets the desired answer.
# Create a solution that would work for any teacher given, then give it the teacher "Ashley" 
#- meaning change the name to Ashley for any instructor?  Or just make it so each instructor might be better than Blake?
school[:instructors] = [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being almost better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ]

# # Section F. Technically not correct either, but it works.

school[:students] => [ 
    {:name => "Marissa", :grade => "B"},
    {:name => "Frank", :grade => "F"},
    {:name => "Sophie", :grade => "C"},
    {:name => "Gustavo Frieng", :grade => "unknown"}
  ]

#Sections G-I, could not complete in allotted timeframe.

####4. Methods#####

class Happy_funtime_school

SCHOOL = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being almost better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name => "Frank", :grade => "F"},
    {:name => "Sophie", :grade => "C"},
    {:name => "Gustavo Frieng", :grade => "unknown"}
  ]
  :founded_in => 2013 
}

#Section A. Does not work.
def get_grade
	SCHOOL.each do |key, value|
		if value = Array.each do |hash_value, hash_name|
			hash_value.each do|name, attribute|
				attribute.each do |student_grade, grade_value|
					if student_grade == [:grade]
						puts [:grade] => grade_value
					end
				end
			end	
		end
	end		
end

end

#Sections B-D, could not complete within allotted timeframe.



end

flatiron = Happy_funtime_school.new
puts flatiron.get_grade.inspect



#####5. Object Orientation #####
#Section A.
class School
# 	#section B and C.
	attr_accessor :name, :location, :students, :instructors
	attr_reader :ranking
	
	def initialize(name, location, ranking, students, instructors)
		@name = name
		@location = location
		@ranking = ranking
		@students = students
		@instructors = instructors
	end

# 	# Section D
	def set_ranking
		ranking = "beyond your wildest dreams"
	end

	def add_student

	end

end
flatiron = School.new("flatiron", "Brooklyn", "amazing", "28", "2")
puts flatiron.ranking

# Sections E-H, could not complete in allotted timeframe.

####6. Classes #####

#could not complete in allotted timeframe.

######7. Self######

# a. hello
# b. Student
# c. I don't think it should print anything, its just initialized in a method and not called to do anything.  
#    Second answer: it might just print Student somewhere in the class?
# d. Student
# e. goodbye












