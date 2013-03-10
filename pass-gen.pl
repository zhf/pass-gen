#!/usr/bin/perl

sub randomPassword {
	my $password;
	my $_rand;

	my $password_length = $_[0];
	if (!$password_length) {
		$password_length = 8;
	}

	my @chars = split(" ",
	"a b c d e f g h j k l m n p q r s t u v w x y z 
	 A B C D E F G H J K L M N P Q R S T U V W X Y Z
	 2 3 4 5 6 7 8 9 
	 $ @ = + % & *");
	my $num_chars = @chars;

	srand;

	for (my $i=0; $i <= $password_length ;$i++) {
	 $_rand = int(rand $num_chars);
	 $password .= $chars[$_rand];
	}
	return $password;
}

for (my $j=0; $j < 5; $j++) {
	print "\n\t";
	print randomPassword($ARGV[0]);
	print "\n";
}

print "\n";
