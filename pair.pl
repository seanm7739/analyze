
my $f = shift;
my $b = shift;
my $in = shift;
my $g = shift;
my $p = shift;
my $s = shift;
my $up = shift;
open FILE, "$f";
@t=<FILE>;
close FILE;

foreach $i(0...$#t){
	#print "$b $t[$i]";
	chomp($t[$i]);
	#print "$t[$i]";
	#for($j=1000;$j<2400000;$j*=2){
		system("perl g.pl $in $b $t[$i] $g $p $s $up");
	#	print "perl g.pl $in $b $t[$i] $g $p $s $up\n";
		#print "perl g.pl 1393951545 $b $t[$i] $j\n";
	#}	
		#system("perl g.pl 1399543455 $b $t[$i] 896000");
}
