
my $f = shift;
#my @pa = (2,2.1,2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,3);
#my @pa = (0.6,0.7,0.8,0.9,3.5,4,4.5,5,5.5,6,6.5,7,7.5,8,8.5,9,9.5,10);
my @pa = (0.8,1,1.2,1.4,1.6,1.8,2,2.2,2.4,2.6,2.8,3);
#my @pa = (1,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9);
#my @pb = (10,15,20,30,40,50,60);
#my @pb = (30,40,50,60);
my @pb = (30);
open FILE,"$f";
@tmp=<FILE>;
close FILE;
foreach $i(0...$#pa){
foreach $j(0...$#pb){
$count=0;
$sum=0;
foreach $str(@tmp){
        @t=split('\s+',$str);
        if(($t[0]==$pa[$i])&&($t[1]==$pb[$j])&&($t[2]>-9999999)){
        #       print $t[1];
                $sum=$sum+$t[2];
                $count++;
        }
}
if($count){
	$sum=$sum/$count;
	#print "$sum $time\n";
	print "$pa[$i] $pb[$j] $sum (c=$count)\n";
}
}}

#print "$sum $time\n";

