# coderbyte easy problems




# def FirstReverse(str)
# 	str.reverse
# end






# def FirstFactorial(num)
# 	if num == 1
# 		return 1
# 	else
# 		return FirstFactorial(num-1)*num
# 	end
# end







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









# def CheckNums(num1,num2)
# 	if num1 == num2
# 		return -1
# 	elsif num2 > num1
# 		return true
# 	else
# 		return false
# 	end
# end
			






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








# def WordCount(str)
# 	word_array = str.split(" ")
# 	return word_array.count
# end

# p WordCount("i went to mew at the park")








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





# TRIAL 1

# THIS IS EXACTLY THE KIND OF PROBLEM WE NEED TO WORK ON

# determining whether sequence of numbers in array is arithmetic or geometric or
# neither

# arithmetic if each number is increasing by adding a common number
# geometric if each number is increasing by multiplying by a common number (ratio)

# need a way to check the difference between each element in the array
# then to compare those differences


# arith = [1,2,3,4,5]
# geo = [2,4,8,16]
# neither = [7,3,25,5]

# def ArithGeo(arr)
# 	diff_array = []
# 	first_diff = arr[1]-arr[0]
# 	first_mult = arr[1]/arr[0]
# 	index = 2
# 	arr[2..-1].each do |ele|
# 		# p "ele is #{ele}"
# 		# p diff_array
# 		# p index
# 		# p "ele is #{ele}"
# 		# p "arr at index is #{arr[index]}"
# 		diff = arr[index] - (arr[index-1])
# 		# p "diff is #{diff}"
# 		# p diff
# 		diff_array << diff
# 		index += 1
# 	end
# 	p "diff_array is #{diff_array}"
# 	if diff_array.all? do |arithCheck|
# 		arithCheck == first_diff
# 		end
# 		return "Arithmetic"			
# 	end
# 	geo_index = 2
# 	if diff_array.all? do |geoCheck|
# 		arr[geo_index-1] == geoCheck
# 		end
# 		return "Geometric"
# 	end
# end

# what did we learn here?
# - when you do each_with_index , INDEX STARTS AT 0
# 	meaning if you are working with a range, and indexing
# 	higher up in the array, arr[2..-1] or whatever, the index in the 
# 	loop will start at 0
# - when doing funky indexes, control them manually

# - cant set .all? like this => if arr.all? == something else
	# all returns true when none of the collection members are false or nil

# p ArithGeo(arith)
# p ArithGeo(geo)
# p ArithGeo(neither)



arith = [1,2,3,4,5]
geo = [2,4,8,16]
neither = [7,3,25,5]


# TRIAL 2

def ArithGeo(arr)


end

p ArithGeo(arith)
p ArithGeo(geo)
p ArithGeo(neither)