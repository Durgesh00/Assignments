class Maths
	def Sum
		p "I am sum"
	end
end

M1=Maths.new #Here maths is working as an object as it is calling a new method defined in maths class inherited from "class" class
M2=Maths.new

def M1.multiplication #Singleton Class
  p "i am in multiplication"
end

M1.multiplication
M1.Sum
M2.Sum
#M2.multiplication

puts ''
Singleton_class=(class << M1 ; self ;end)#Singleton class defined for object M1
print Singleton_class.method_defined?(:multiplication)
puts ''
print Singleton_class.superclass