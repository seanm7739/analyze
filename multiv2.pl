
my $file = shift; 	#input result
my $dr = shift; 	#dr multi value
my $sk = shift; 	#prh
#my $dpr = 7.5;
my $dpr = 1;
my $p = shift;
$dpr = $dpr * $dr;
#system("echo $dr $sk >> ref");
#print "sh ana.sh $file $dpr $sk $dr $sk $p \n";
system("sh ana.sh $file $dpr $sk $dr $sk $p >> res");
#system("sh ana.sh $file $dpr $sk $dr $sk $p");
