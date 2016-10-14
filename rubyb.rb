#1)Create a function(nameless method) that takes a string as an argument and adds the phrase "Only in America!" to the end of it
	#version1
#def american(string)
	country = "Only in America"
		puts "The best are #{country}"


	#version2
def OnlyInAmerica arg
	arg = arg + " Only in America!"
	puts arg
end


#2)Create a function(method) to find the maximum value in an array of numbers. For instance: [100,10,-1000] should return 100. Do not use Ruby's built-in .max function.

	# version1
[3, 100, 5, 1, 55, 9, 23, 13, 15, 33, 57].chunk { |n|
  n.even?
}.each { |even, ary|
  p [even, ary]
}					#this require a bit of research since I can't use .max built-in function
							#also by saying function, do you mean method? 
#version2

array = [3,72,20,42,6,11,100,5]		# An array without .max but not a function
array.sort.last

#3)Create a function(method) that takes two arguments - 
#both of them arrays. Inside of the function, combine the arrays using the items from the first array as keys and the second array as values.
 
	#version1
def hello_message_with_an_options_hash(name_parts = {})
  first_name = name_parts.fetch(:first_name)
  last_name = name_parts.fetch(:last_name)
 "Hello, #{first_name} #{last_name}"
end

def hello_message_with_keyword_arguments(first_name, last_name)
  "Hello, #{first_name} #{last_name}"
end

hello_message_with_an_options_hash(first_name: "Peter", last_name: "Bruke")
hello_message_with_keyword_arguments("Peter", "Bruke")



	
	#version2
# arr = [[3,4],[5,6]]
# arr.each do |(a,b)|
#   puts "#{a} #{b}"
# end

#4)Write a program that prints the numbers from 1 to 100, except:for multiples of three print "Fizz" instead of the number
																#for multiples of five print "Buzz"
											   #Print "FizzBuzz" for numbers that are multiples of both 3 and 5.
# 	#version1
# (1..100).each do |x|
# 	m3 = x.module(3) == 0			#START off with (). each do then use modlue for both 3 and 5
# 	m5 = x.module(5) == 0			#After that use m3 and m5 for fizz/buzz then combine for FizzBuzz
		
# 			puts case 
# 		when (m3 and m5) then
# 			'FizzBuzz'
# 		when m3 then 'Fizz'
# 		when m5 then 'Buzz'
# 			else x
# 	end	
# end

# 	#version2
# (1..100).each{|i|					# for this x(variable) with += for 3 and 5
# 	x = ''							# writing "FizzBuzz" Not require here
# 	x += 'Fizz' if i%3==0
# 	x += 'Buzz' if i%5==0
# 	puts(x.empty? ? i : x);
# }

	#verison3
1.upto(100) do |i|
	if i % 5 == 0 and i % 3 == 0
		puts "FizzBuzz"				#1. "upto" (100) to go from 1 to 100 and use i after the code is done "puts i"
	elsif i % 5 == 0 
		puts "Buzz"					#have 5 and 3 equal to 0 then use elsif to apply for FizzBuzz and Buzz/Fizz
	elsif i % 3 == 0
		puts "Fizz"
	else
		puts i 
	end
end
		
		










