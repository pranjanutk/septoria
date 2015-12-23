use strict;

my ($annofile, $genefile) = @ARGV;

open (ANNO, $annofile) or die ("cannot find annotation file");

my %hanno = ();
while (<ANNO>){
	$_=~s/\s*$//;
	my @splitline = split ("\t", $_);
	$hanno{$splitline[1]} = $_; 
}

close (ANNO);



open (GENE, $genefile) or die ("cannot open $genefile");

while (<GENE>){
	chomp $_;
	my @splitline = split ("\t", $_);
	print "$_\t$hanno{$splitline[0]}\n";

}
