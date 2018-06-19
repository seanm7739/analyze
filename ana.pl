
my $f = shift;
my $B = shift;
my $b = shift;
my $g = shift;
my $a = shift;
my $p = shift;
my $s = shift;
my $dr = shift;
my $sk = shift;

#print "$f $B $b $g $a $p $s $dr $sk \n";
#exit;
#system("cat $f | grep '_$p' > temp");
system("cat $f | grep '_$s\_$B\_$b\_$g\_$a\_$p' > temp");
#print "_$s\_$B\_$b\_$g\_$a\_$p";

open FILE,"temp";
@tmp=<FILE>;
close FILE;
my $sum;
my $time;
my $t2;
my $t3;
my $count=0;
foreach $str(@tmp){
        @t=split(" ",$str);
        if($t[1]>-9999999){
	#	print $t[1];
                $sum=$sum+$t[1];
		$time=$time+$t[2];
		$t2=$t2+$t[3];
		$t3=$t3+$t[4];
                $count++;
        }
}

#print "$sum $time\n";
$sum=$sum/$count;
$time=$time/$count;
$t2=$t2/$count;
$t3=$t3/$count;
print "$dr $sk $sum $time $t2 $t3 (c=$count)\n";
