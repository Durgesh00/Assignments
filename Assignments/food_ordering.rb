#Implement a food ordering portal with following functionalities:
#1. Accept Order
#2. Display Order status
#3. Check Food Item is available for ordering
#4. Change status of order

class Portal
	@@menu={"Pizzas"=>150,"Burgers"=>100,"Butter-Chicken"=>300,"Chicken-Tikka"=>250}
  @@menu_cnt={"Pizzas"=>5,"Burgers"=>10,"Butter-Chicken"=>3,"Chicken-Tikka"=>2}
  
	  def initialize()
	  	 @status=false
	     @ordered_item={}
	  end


	  def display_menu
			@@menu.each do |key,value|
			puts"Food_Item:#{key},'       ',Price:,#{value}"
	    end
	  end


	  def check_item
	       print "Enter the name of the item you want to check"
	       item=gets.chomp
	       puts ' '
		     if @@menu_cnt[item]>0
		       	print "Yes the item is available"
		     else 
	       	print "Sorry! The item is not available"
	       end
	  end

	  def check_status
	   if @status
	   	puts 'Your Order has been placed'
	   else 
	   	puts 'Your Order is pending'
	   end
	  end


	  def Accept_order
	  	flag = true
	  	while(flag)
			  	puts "Enter the item you want to order"
			  	item = gets.chomp
			  	puts item
	       
           flag3=false
          @@menu.each do |key,value|
          	if key==item
          		flag3=true
          	end

          if flag3
				  	if @@menu_cnt[item]==0

				  		puts "Sorry the item is not available"
				  		puts ' '
				  	else 
				  		puts "Item added to your bag"
				  		puts ' '
				  		@@menu_cnt[item]-=1
		         
				  		flag1=false
				  		if @ordered_item.key(:item)
				  		@ordered_item.each do |key,value|
				  			if key==item
				  				flag1=true
				  			end
				  		end
				  	end
		        end
				  		if flag1
				  		 @ordered_item[item]+=1
				  		else
				  		 @ordered_item[item]=1 
		          end
		        else 
		        	print 'You entered a invalid item '

		        end
			  	
			  	puts "Do you Want to order more(y/n)"
			  	id=gets.chomp
			  	if id=='n'
			  		flag=false
	        end
	    end
	    if @ordered_item.size
	    	@status=true
	    end
	  end


end

cust=Portal.new


flag2=true
while flag2
	puts "=======-------Select From the following-------========"
	puts "1.Display Menu"
	puts "2.Check Order Status"
	puts "3.Check Availability Of Item"
	puts "4.Accept Order"
  option=gets.to_i
  case option
  when 1
  	cust.display_menu
  when 2
  	cust.check_status
  when 3
  	cust.check_item
  when 4
  	cust.Accept_order
  else 
  	print "Invalid Input !!!!"
  end
  print "If You Want to Continue(y/n)"
  puts ''
  id=gets.chomp
  if id=='n'
  	flag2=false
  end
 end