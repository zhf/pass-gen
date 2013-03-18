#!/usr/bin/perl

@simple_chars = split(" ",
"a b c d e f g h j k m n p q r s t u v w x y 
 3 4 5 6 7 8 9");

@regular_chars = split(" ",
"a b c d e f g h j k m n p q r s t u v w x y 
 A B C D E F G H J K M N P Q R S T U V W X Y 
 3 4 5 6 7 8 9");

@strong_chars = split(" ",
"a b c d e f g h j k m n p q r s t u v w x y 
 A B C D E F G H J K M N P Q R S T U V W X Y 
 3 4 5 6 7 8 9 
 $ @ = + % & *");

$password_length = $ARGV[0];
if (!$password_length) {
	$password_length = 10;
}

sub randomPassword {
	my $password;
	my $_rand;

	my @chars = @{$_[0]};
	my $num_chars = @chars;

	srand;

	for (my $i=0; $i < $password_length; $i++) {
	 $_rand = int(rand $num_chars);
	 $password .= $chars[$_rand];
	}
	return $password;
}

for (my $j=0; $j < 5; $j++) {
	print "\n\t";
	print randomPassword(\@simple_chars), "\t", randomPassword(\@regular_chars), "\t", randomPassword(\@strong_chars);
	print "\n";
}

print "\n";
