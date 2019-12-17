puts 'You have 5 attempts to guess the word'
puts 'The word is a month of the year'
database=['january','february','march','april','may','june','july','august','september','october','november','december']
random_no=rand(12)

required=database[random_no]
puts required

i=0
hint=''
for i in 0..required.size-1 do
 hint+='X'
end
puts hint


count=0
i=0
while i<5
	flag=true
    guess=gets
    for j in 0..required.size-1 do
	    if required[j]==guess[0] 
	        if  hint[j]=='X'
	       		count+=1
	       		hint[j]=guess[0]
	       		flag=false
	       	end
	    end
    end
     if(count>=required.size)
		break
	 end
	  if flag
	     i+=1
	  end
	
end


cnt=false
for i in 0..database[random_no].size-1 do
 if hint[i]=='X'
 	cnt=true;
 	break
end
end
if cnt
	puts 'You have lost the game'
else 
	puts 'You have won the game'
end
