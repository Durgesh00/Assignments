class Superclass
	def method
		p "i am in super class"
	end
end

module IncludedModule
	def method
		p "In included module"
	end
end

module SingletonModule
	def method
   p "Singleton Module"
   #super
	end
end


class Demo < Superclass
	include IncludedModule
	def method
		p "i am in demo class"
	end
end
