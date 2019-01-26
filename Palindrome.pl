# Write	a program that checks whether a string is a palindrome or not

chomp(my $str = "tacocat");

# If the string is equal to the reversed string, output the string and that it's a palindrome.

if ( $str eq reverse($str) ) {
    print "Your string is '$str'.\n";
    print "That's a palindrome!\n";
}

# If the string is anything else, it's not a palindrome. Output the string and that it's not a palindrome.
else {
	print "Your string is $str.\n";
    print "That's NOT a palindrome!\n";
}

=Another way to do this would be to negate the statement with an 'elsif' instead.

chomp(my $str = "tacocaat");

if ( $str eq reverse($str) ) {
    print "Your string is '$str'.\n";
    print "That's a palindrome!\n";
}

elsif ( $str ne reverse($str)	)	{
	print "Your string is $str.\n";
    print "That's NOT a palindrome!\n";
}
=cut