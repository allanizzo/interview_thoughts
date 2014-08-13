# coderbyte easy problems


# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 

# def FirstReverse(str)
# 	str.reverse
# end



# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 


# def FirstFactorial(num)
# 	if num == 1
# 		return 1
# 	else
# 		return FirstFactorial(num-1)*num
# 	end
# end



# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 



# Using the Ruby language, have the function LetterChanges(str)
# take the str parameter being passed and modify it using the following
# algorithm. Replace every letter in the string with the letter following
# it in the alphabet (ie. c becomes d, z becomes a). Then capitalize every
# vowel in thisnew string (a, e, i, o, u) and finally
# return this modified string. 

# def LetterChanges(str)

# 	# string passed in

# 	new_str = ""

# 	# first we need to build the string
# 	vowel_list = %w[a e i o u]

# 	str.each_char do |char|
# 		if char == "z"
# 			new_str << "a"
# 		elsif char.match(/[a-y]/)
# 			new_str << char.next
# 		else
# 			new_str << char
# 		end
# 	end

# 	next_string = ""

# 	new_str.each_char do |capitalizer|
# 		if vowel_list.include?(capitalizer)
# 			word = capitalizer.capitalize
# 			next_string << word
# 		else
# 			next_string << capitalizer	
# 		end
# 	end
# 	return next_string

# end

# p LetterChanges("eggplantsoo")




# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 



# def SimpleAdding(num)
# 	# adds up numbers from 1 to num
# 	sum = 0

# 	(1..num).each do |number|
# 		sum += number
# 	end
# 	return sum
# 	# returns the summed value (a number)
# end

#LEARNED: a range can be iterated over with .each enumerable




# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 



# SimpleSymbols is a great example of why we need a framework

# seems like a fairly easy question, we just need to understand what we need and what we are checking from

# idea is: each symbol MUST have a + on each side of it +r+ is ok +o= is not

# need to find LETTERS and the perform a check, then repeat

# we can find and slice the string?

# def SimpleSymbols(str)
# 	letter_index = 0
# 	while str[letter_index] != nil
# 		letter_index = str.index(/[a-z]/)
# 		if str[letter_index+1] != "+" || str[letter_index-1] != "+"
# 			return false
# 		else
# 			str = str[letter_index+1..-1]
# 		end
# 	end
# 	return true
# end

# what did we learn here
	# - indexing outside the range of a string or array return nil or NilClass object
	# - this is built to check for + around EVERY character, variations on this

# p SimpleSymbols("+d+")




# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 




# def CheckNums(num1,num2)
# 	if num1 == num2
# 		return -1
# 	elsif num2 > num1
# 		return true
# 	else
# 		return false
# 	end
# end
			


# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 



# def TimeConvert(num)
# 	# if num >= 60
# 	# 	num_hours = num/60
# 	# 	num_minutes = num%60
# 	# elsif num < 60
# 	# 	num_hours = 0
# 	# 	num_minutes = num
# 	if num < 60
# 		num_hours = 0
# 		num_minutes = num
# 	elsif num >= 60
# 		num_hours = num/60
# 		num_minutes = num%60
# 	end
# 	return "#{num_hours}:#{num_minutes}"
# end

# what did we learn here!!
# - integer division, 5/2 == 2, 5/6 == 0
# - INTEGER DIVISION DOES NOT ROUND UP (5/2 == 0 BUT 5.0/2 == 2.5)
# - big to small flow control vs small to big flow control
	# ^ DOESN'T MATTER HERE BECAUSE YOU ARENT CARRYING REMAINDERS OR OTHER
	#   NUMBERS TO LATER BITS OF LOGIC

# p TimeConvert(126)




# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 


# APLHABET SOUP

# def AlphabetSoup(str)
# 	array = []
# 	str.each_char do |char|
# 		array << char
# 	end
# 	# p array
# 	sorted_array = array.sort
# 	# p sorted_array
# 	join_array = sorted_array.join()
# 	return join_array
# end

# what did we learn here?
# - str.split() splits on empty characters, so we had to go through each character
# - and add it to a new array
# - otherwise its straightforward

# p AlphabetSoup("coderbyte")


# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 


# def ABCheck(str)
# 	down_str = str.downcase
# 	index = 0
# 	down_str.each_char do |char|
# 		if char == "a" && down_str[index+4] == "b"
# 			return true
# 		end
# 		index += 1
# 	end
# 	return false
# # 	perform the check

# # 	return true if the condition is met

# end

# # what did we learn here?
# # - this code works on my comp, but doesn't work in the coderbyte terminal
# # - it never returns true in the coderbyte terminal, even in cases where it "should"

# p ABCheck("Laura sobs")

# # # need to return true or false

# # # return true if "a" and "b" are separated by three non space characters

# # # xpect input strings of different cases



# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 



# def VowelCount(str)
# 	str = str.downcase
# 	vowel_count = 0
# 	str.each_char do |char|
# 		if char.match(/[a e i o u]/)
# 			vowel_count += 1
# 		end
# 	end
# 	return vowel_count
# end

# p VowelCount("hello")




# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 



# def WordCount(str)
# 	word_array = str.split(" ")
# 	return word_array.count
# end

# p WordCount("i went to mew at the park")




# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 



# check string for x and o, if there are equal number return true
# if there is unequal number return false

# def ExOh(str)
# 	x_count = 0
# 	o_count = 0
# 	str.each_char do |char|
# 		if char == "x"
# 			x_count += 1
# 		elsif char == "o"
# 			o_count += 1
# 		end
# 	end

# 	if x_count == o_count
# 		return "true"
# 	else
# 		return "false"
# 	end
# end
			
# what did we learn?
# - ternary operator makes the code better but lets leave that for now
# - otherwise its a simple problem, counting instances of a character



# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 




# def Palindrome(str)
# 	# check to see if palindrome, spaces?
# 	str = str.downcase
# 	string_wo_spaces = ""
# 	str.each_char do |char|
# 		if char.match(/[a-z]/)
# 			string_wo_spaces << char
# 		end
# 	end
# 	if string_wo_spaces == string_wo_spaces.reverse
# 		return "true"
# 	else
# 		return "false"
# 	end
# end

# what did we learn here?
# - pretty simple problem
# - had to create string without spaces by building a new string
# 	according to the match criteria
# - .match does return a MatchObject if true, so can be set for boolean criteria

# p Palindrome("never odd or even")
# p Palindrome("eye")
# p Palindrome("i went to mew in the park")





# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 






# THIS IS EXACTLY THE KIND OF PROBLEM WE NEED TO WORK ON

# determining whether sequence of numbers in array is arithmetic or geometric or
# neither

# arithmetic if each number is increasing by adding a common number
# geometric if each number is increasing by multiplying by a common number (ratio)

# need a way to check the difference between each element in the array
# then to compare those differences


# arith = [1,2,3,4,5]

# geo = [2,6,18,54]

# neither = [7,3,25,5]


# def ArithGeo(arr)


# 	# arithmetic == adding the same number each time
# 	# geometric == multiplying by the same number (factor) each time

# 	# return -1 if neither (probably goes last in flow control)

# 	# so why dont we take the first difference and then step
# 	# through the array and compare it.
# 	# p "mow"

# 	first_diff = arr[1] - arr[0]
# 	first_factor = arr[1]/arr[0]
# 	index = 0
# 	arith_bool = true
# 	geo_bool = true
# 	arr[0...-1].each do |arithCheck|
# 		if (arr[index+1] - arithCheck) != first_diff
# 			arith_bool = false
# 		end
# 		index += 1
# 	end
# 	# p arith_bool
# 	index = 0
# 	arr[0...-1].each do |geoCheck|
# 		if (arr[index+1]/geoCheck) != first_factor
# 			geo_bool = false
# 		end
# 		index += 1
# 	end

# 	if arith_bool == false and geo_bool == false
# 		return -1
# 	elsif geo_bool == true
# 		return "Geometric"
# 	elsif arith_bool == true
# 		return "Arithmetic"
# 	end
					
# 	# p geo_bool

# end

# p ArithGeo(arith)
# p ArithGeo(geo)
# p ArithGeo(neither)



# # desperately needed recap

# # - the key to this problem (as I see it) was
# # 	(1) starting with both bool values as true
# # 	(2) since the array cant be both arithmetic AND geometric but 
# # 		both can be false we can run operations to set one or both of them
# # 		to the false value and then check
# # 	(3) storing the two bool values in different variables for processing
# # 		later in the script is a very useful thing

# # 	(4) we need to do this problem AGAIN, so you really get the feel


# # yo
# # # def ArithGeo(arr)
# # # 	diff_array = []
# # # 	first_diff = arr[1]-arr[0]
# # # 	first_mult = arr[1]/arr[0]
# # # 	index = 2
# # # 	arr[2..-1].each do |ele|
# # # 		# p "ele is #{ele}"
# # # 		# p diff_array
# # # 		# p index
# # # 		# p "ele is #{ele}"
# # # 		# p "arr at index is #{arr[index]}"
# # # 		diff = arr[index] - (arr[index-1])
# # # 		# p "diff is #{diff}"
# # # 		# p diff
# # # 		diff_array << diff
# # # 		index += 1
# # # 	end
# # # 	p "diff_array is #{diff_array}"
# # # 	if diff_array.all? do |arithCheck|
# # # 		arithCheck == first_diff
# # # 		end
# # # 		return "Arithmetic"			
# # # 	end
# # # 	geo_index = 2
# # # 	if diff_array.all? do |geoCheck|
# # # 		arr[geo_index-1] == geoCheck
# # # 		end
# # # 		return "Geometric"
# # # 	end
# # # end

# # # what did we learn here?
# # # - when you do each_with_index , INDEX STARTS AT 0
# # # 	meaning if you are working with a range, and indexing
# # # 	higher up in the array, arr[2..-1] or whatever, the index in the 
# # # 	loop will start at 0
# # # - when doing funky indexes, control them manually

# # # - cant set .all? like this => if arr.all? == something else
# # # 	all returns true when none of the collection members are false or nil

# # # p ArithGeo(arith)
# # # p ArithGeo(geo)
# # # p ArithGeo(neither)



# # # arith = [1,2,3,4,5]
# # # geo = [2,4,8,16]
# # # neither = [7,3,25,5]


# # # # TRIAL 2

# # # def ArithGeo(arr)


# # # end

# # # p ArithGeo(arith)
# # # p ArithGeo(geo)
# # # p ArithGeo(neither)
# yo




# =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 




# array addition 1
# use combination function
# adds to largest number in array, true or false

# test1 = [1,2,3,100]
# test2 = [10,20,30,40,100]

# def ArrayAdditionI(arr)
# 	arr = arr.sort
# 	largest = arr.pop()
# 	combo = 1
# 	while combo <= arr.count
# 		combos = arr.combination(combo).to_a
# 		for mow in combos
# 			if arr_sum(mow) == largest
# 				return "true"
# 			end
# 		end
# 		combo += 1
# 	end
# 	return "false"
# end


# def arr_sum(arr)
# 	sum = 0
# 	for mow_mow in arr
# 		sum = sum + mow_mow
# 	end
# 	return sum
# end

# what did we learn here?

# - interesting case, I kept getting errors (void value or expecting $end)
# 	with iterator but the for loop worked fine
# 	^ will need to check up on this
# - if you use .combination(whatever), you also need to use .to_a	to get arrays of the
# 	combinations
# - MUST MUST PAY ATTENTION TO YOUR WHILE LOOPS < IS INCORRECT <= IS RIGHT
# 	^ .count is the length (not the indexes), yes, but you need the case where you
# 		get all of the combinations


# p ArrayAdditionI(test1)
# p ArrayAdditionI(test2)



# # =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 


# what do we need to return?
# 	^ the first occurrence of a word with the greatest number of repeated LETTERS
# 	seems like we
# 	- should split the string
# 	- count repeated letters in each element of the new array (just need to return count)
# 	- if no words with repeated letters return -1
# 	- how do we return the first occurence?, work this through 

# 		REMEMBER, we need to return the WORD, implies we need an index



# string = 'hullabalooo'

# def counter(str)
# 	letter_hash = {}
# 	str.each_char do |char|
# 		if letter_hash[char] != nil
# 			letter_hash[char] += 1
# 		else
# 			letter_hash[char] = 1
# 		end
# 	end
# 	if letter_hash.values.max == 1
# 		return -1
# 	else
# 		return letter_hash.values.max
# 	end
# end


# def LetterCountI(str)
# 	split_array = str.split(" ")
# 	longest_word = ""
# 	most_repeated = 0
# 	for word in split_array
# 		if counter(word) > most_repeated
# 			most_repeated = counter(word)
# 			longest_word = word
# 		end
# 	end
# 	if longest_word == ""
# 		return -1
# 	else
# 		return longest_word
# 	end
# end

# # p counter(string)
# p LetterCountI('no words')


# what did we learn here?
# - nil, nil nil, nil and hashes
# so lets say hash = {}
	# hash[whatever] == nil NOT 0
# - .keys , .values .max .min WITH HASHES
	# all valid methods.  can do hash.keys.max (if sortable by .max or .min)
		# .keys and .values are going to be useful methods for hashes
# - said i took 45 minutes, I have a hard time believing that


# # =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 


# looking to return second lowest and second greatest numbers

# why cant we:
# - clone array
# - sort
# - unshit and pop
# - take first and last?

# instead, lets store in temp_variables to be updated
# - sort array
# - have max and min
#   store in temp variable, whatever is < max but greater than the previous temp

# case where array has two numbers, what about three numbers?
# 	  ^ work this through live

# test1 = [1,2,3,4,5,6,7]
# test2 = [4,90]

# def SecondGreatLow(arr)
# 	arr = arr.sort
# 	second_lowest = arr.max
# 	second_greatest = arr.min
# 	arr.each do |ele|
# 		if ele < arr.max && ele > second_greatest
# 			second_greatest = ele
# 		end
# 	end
# 	arr.each do |ele2|
# 		if ele2 > arr.min && ele2 < second_lowest
# 			second_lowest = ele2
# 		end
# 	end
# 	return "#{second_lowest} #{second_greatest}"
# end



# p SecondGreatLow(test2)

# what did we learn here?
# - completed in 12 minutes
# - this was a good problem to beat!!
# - compared to AA interview, the level of ruby difficulty was similar
#   BUT AA words their questions a little more mysteriously

# - you devised a crappy strategy where you push and pop but then
# 	realized the right thing to do (storing in updating variables)
# 	and then did it
# - you had problems bc you were doing == instead of = in the first update variable
# - you traversed the string and built variables in two directions
# 	(1) working at the top and working its way down to the 2nd lowest
# 	(2) working at the bottom and workking its way up to the 2nd highest	



# # =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 

# divide num1 by num2
# return as string with correctly formatted commas

# so do division
# 	then convert number to string
# 	working backwards, add commas every three digits

# n1 = 400929489423
# n2 = 23948

# def DivisionStringified(num1,num2)
# 	dividend = (num1/num2).to_s
# 	index = dividend.length - 1
# 	three_counter = 0
# 	return_string = ""
# 	while index >= 0
# 		if three_counter == 3
# 			return_string = return_string + ","
# 			three_counter = 0
# 		else
# 			return_string = return_string + dividend[index]
# 			three_counter += 1
# 			index = index - 1
# 		end
# 	end
# 	return return_string.reverse
# end


# p DivisionStringified(n1,n2)

# what did we learn here
# - having trouble getting it to work in the coderbyte browser, getting fixnum
# 	conversion errors
# - good using the three count to keep track of when to enter the comma
# - building the string from reverse is probably a little goofy because we have to
#   reverse the returned string anyways but it works generally fine
# - otherwise you good


# # =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= =^.^= 

# i want this redone from scratch

def CountingMinutesI(str)

    time_arr = str.split("-")
    p time_arr
    start_time = time_arr[0] #5:38 pm
    end_time = time_arr[1]   #9:44 pm
    p end_time
    minute_count = 0
    while true
    	p "start_time is #{start_time}"
    	p "end_time is #{end_time}"
    	# sleep 0.01
      if start_time == end_time
        return minute_count
      else   
        start_time = clock_updater(start_time)
        minute_count += 1
      end 
    end   
end
      
def clock_updater(str)
  
  #input is 4:39am
  new_arr = str.split(":")
  
  mins = new_arr[1][0..1].to_i
  hours = new_arr[0].to_i
  am_pm = new_arr[1][2..3]
  mins += 1
  if mins >= 60
    hours += 1
    mins = 0
  end
  if hours == 12 && mins == 0
  	if am_pm == "am"
  		am_pm = "pm"
  	elsif am_pm == "pm"
  		am_pm = "am"
  	end
  end
  			
  if hours == 12 && mins == 60
  	hours = 1
  	mins = 0
  end
  if mins < 10
  	mins = "0#{mins}"
  end
  return "#{hours}:#{mins}#{am_pm}"
end


# p clock_updater("12:06pm")
p CountingMinutesI("1:23am-1:08am")



# start = "12:40am"
# 30.times do
	
# 	p clock_updater(start)
# 	start = clock_updater(start)
# end




