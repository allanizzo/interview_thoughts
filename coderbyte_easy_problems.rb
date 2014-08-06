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
			


def TimeConvert(num)
	# if num >= 60
	# 	num_hours = num/60
	# 	num_minutes = num%60
	# elsif num < 60
	# 	num_hours = 0
	# 	num_minutes = num
	if num < 60
		num_hours = 0
		num_minutes = num
	elsif num >= 60
		num_hours = num/60
		num_minutes = num%60
	end
	return "#{num_hours}:#{num_minutes}"
end

# what did we learn here!!
# - integer division, 5/2 == 2, 5/6 == 0
# - INTEGER DIVISION DOES NOT ROUND UP (5/2 == 0 BUT 5.0/2 == 2.5)
# - big to small flow control vs small to big flow control
	# ^ DOESN'T MATTER HERE BECAUSE YOU ARENT CARRYING REMAINDERS OR OTHER
	#   NUMBERS TO LATER BITS OF LOGIC

# p TimeConvert(126)












