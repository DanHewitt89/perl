# Brief
#
# Write a program that outputs the numbers from 1 to 100. For multiples of three output "Fizz" instead of 
# the number and for multiples of seven output "Buzz". For numbers which are multiples of both three and
# seven output "FizzBuzz".

# Multiples of both 3 and 7 are:
# 21,42,63,84

# If it divides by 21, it will divide into 3 and 7.

for my $n (1..100) {
    # For every number between one and one hundred, print that number, unless...
		!($n % 3)	?	print "Fizz\n"		:	# ... the number is divisible by 3, then print Fizz
		!($n % 7)	?	print "Buzz\n"		:	# ... the number is divisible by 7, then print Buzz
		!($n % 21)	?	print "FizzBuzz\n"	:	# ... the number is divisible by 3 and 5, then print FizzBuzz
						print "$n\n";			# ... none of the above, then just print the number
}

# Ternary operators
# "if (condition) statement1 else statement2" is equal to "(condition) ? statement1 : statement2"
#
# Example:
# $my_result = ($y == 5) ? "y is indeed 5" : "y is not 5";
# print "My result is: $my_result\n";

# Working with examples I found online, I found the code was using 'say' rather than 'print'. I changed
# this back to print, finding that only versions of perl > 5.10.0 supported it. It looks like 'say'
# would automatically insert the linebreak but is functionally similar.