# Write a program that accepts a list of email addresses and outputs each domain and frequency in order of
# popularity. Limit the output to only show the top 10 domains.

# Input goes here.
# Using eleven unique domains to test the row limit. The least popular domain (domain9.com) shouldn't show.
# Picked on 9 to make sure it wasn't just grabbing them in numerical order.

my @emails = (
	'dan@domain1.com','dan@domain1.com','dan@domain1.com','dan@domain1.com','dan@domain1.com','dan@domain1.com','dan@domain1.com','dan@domain1.com','dan@domain1.com','dan@domain1.com',
	'dan@domain2.com','dan@domain2.com','dan@domain2.com','dan@domain2.com','dan@domain2.com','dan@domain2.com','dan@domain2.com','dan@domain2.com','dan@domain2.com',
	'dan@domain3.com','dan@domain3.com','dan@domain3.com','dan@domain3.com','dan@domain3.com','dan@domain3.com','dan@domain3.com','dan@domain3.com',
	'dan@domain4.com','dan@domain4.com','dan@domain4.com','dan@domain4.com','dan@domain4.com','dan@domain4.com','dan@domain4.com',
	'dan@domain5.com','dan@domain5.com','dan@domain5.com','dan@domain5.com','dan@domain5.com','dan@domain5.com',
	'dan@domain6.com','dan@domain6.com','dan@domain6.com','dan@domain6.com','dan@domain6.com',
	'dan@domain7.com','dan@domain7.com','dan@domain7.com','dan@domain7.com',
	'dan@domain8.com','dan@domain8.com','dan@domain8.com',
	'dan@domain10.com','dan@domain10.com','dan@domain10.com',
	'dan@domain11.com','dan@domain11.com',
	'dan@domain9.com',
# Then some random, repeated values to test the Regex is working. And because fruit is good for you.
	'Raspberry','banana','Raspberry','banana','Raspberry','banana','Raspberry','banana','Raspberry','banana');
# Setting a value for rows to increase by one per line of output.
my $rows = 0;
# A hash to contain the output of the domains and their count.
my %domainCount;

# For each value in @emails, check to see if it meets the Regular Expression
# If it does, add a value of the domain and increase its count in the $domainCount hash for that domain by one 
# Add one more to what the value already is.

foreach(@emails){
    if ($_ =~ /@(\w+.*)/){
        $domainCount{$1}++;
    }
}

# For every entry in the %domainCount hash, sort it by numerical order.
# Set the value of $domain with the contents of %domainCount's strings.
# print a row that shows the contents of $domainCount for as many values in %domainCount
# Add one to the $rows value.
# Stop the loop when the number of rows is greater or equal to 10.

for my $domain (sort { $domainCount{$b} <=> $domainCount{$a}} keys %domainCount ){
    print "$domain - $domainCount{$domain}\n";
    $rows ++;
    last if $rows >= 10;
    
}