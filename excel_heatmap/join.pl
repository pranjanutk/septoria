use strict;
my %hash;
my %h;
my %g;
while (<>){
	$_=~s///g;
	chomp $_;
	my @cr = split ("\t", $_);
	$hash{$cr[0]}{$cr[-1]} = "$cr[1]\t$cr[2]";
	$h{$cr[-1]}++;
	$g{$cr[0]}++;
}

my @x = keys %h;

#print @x;
print "gene\t";
foreach my $line (@x){
	print "logFC($line)\tpval($line)\t";
}
print "\n";
while (my ($key, $val) = each (%g)){
	print "$key\t";
	foreach my $line (@x){
		my $h = $hash{$key}{$line};
		if (!$h){
			$h="0\tNA";
		}
		print $h . "\t";
	} 
	print "\n";
}
