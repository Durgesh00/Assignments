class Superclass

	public
	def super_class_public_method
    p "I am in super public class  "
	end

	protected
	def super_class_protected_method
    p "I am in super protected class  "
	end


	private
	def super_class_private_method
    p "I am in super private class  "
	end
end


class Baseclass < Superclass
  def base_class_method
     #super_class_public_method
     #super_class_protected_method
     super_class_private_method
     Superclass.new.super_class_protected_method
     Superclass.new.super_class_private_method
	end   

end


class Subchild <Baseclass
  def sub_child_method
  	 #super_class_public_method
     #super_class_protected_method
     #super_class_private_method
  end
end
super_obj=Baseclass.new
super_obj.base_class_method

super_obj1=Subchild.new
super_obj1.sub_child_method