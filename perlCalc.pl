use strict;
use warnings;

#Comment -- perl does not support block comments

my ($num1, $num2, $ans, $choice, $cont);

{do{
	&menu;
	if($choice == 6){
		last; #terminates the loop. Although the last keyword does not support
		#the do-while loop. The way it works here is by wrapping the while loop
		# in the context of the block, which exits this loop(block) when it reaches the 
		#last keyword.
	}
	print "Do you want to perform another calculation?";
	$cont = readline STDIN;
	chomp $cont;
}while($cont eq 'y');}

sub menu {
	print "1. ADD\n",
	"2. SUBTRACT\n",
	"3. MULTIPLY\n",
	"4. DIVIDE\n",
	"5. REMAINDER\n",
	"6. EXIT\n";

	print "What is your choice?\n";
	$choice = readline STDIN;

	if($choice == 1){
		&add;
	}
	elsif($choice == 2){
		&subtract;
	}
	elsif($choice == 3){
		&multiply;
	}
	elsif($choice == 4){
		&divide;
	}
	elsif($choice == 5){
		&remainder;
	}
	elsif($choice == 6){
		&exit;
	}
	else{
		print "Menu option not available.\n";
	}
}

sub add{
	print "Enter the first number\n";
	$num1 = readline STDIN;
	print "Enter the second number\n";
	$num2 = readline STDIN;
	chomp $num1;
	chomp $num2;

	$ans = $num1 + $num2;
	print "$num1  +  $num2  =  $ans\n";
	print "Your answer is $ans\n";
}
sub subtract{
	print "Enter the first number\n";
	$num1 = readline STDIN;
	print "Enter the second number\n";
	$num2 = readline STDIN;
	chomp $num1;
	chomp $num2;

	$ans = $num1 - $num2;
	print "$num1  -  $num2  =  $ans\n";
	print "Your answer is $ans\n";
}
sub multiply{
	print "Enter the first number\n";
	$num1 = readline STDIN;
	print "Enter the second number\n";
	$num2 = readline STDIN;
	chomp $num1;
	chomp $num2;

	$ans = $num1 * $num2;
	print "$num1  *  $num2  =  $ans\n";
	print "Your answer is $ans\n";
}
sub divide{
	print "Enter the first number\n";
	$num1 = readline STDIN;
	print "Enter the second number\n";
	$num2 = readline STDIN;
	chomp $num1;
	chomp $num2;

	$ans = $num1 / $num2;
	print "$num1  /  $num2  =  $ans\n";
	print "Your answer is $ans\n";
}
sub remainder{
	print "Enter the first number\n";
	$num1 = readline STDIN;
	print "Enter the second number\n";
	$num2 = readline STDIN;
	chomp $num1;
	chomp $num2;

	$ans = $num1 % $num2;
	print "$num1  %  $num2  =  $ans\n";
	print "Your remainder is $ans\n";
}
sub exit{
	print "You've exited the program.";
}

