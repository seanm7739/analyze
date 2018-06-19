

my $f = shift;
my $B = shift;
my $pa = shift;
my $ml;
my @array;
open FILE,"$f";
@temp=<FILE>;
close FILE;

#my @b=(0.8,1,1.2,1.4,1.6);
#my @b=(3,3.2,3.4,3.6,3.8,4);
#my @b=(1.4,1.6,1.8,2,2.2,2.4,2.6,2.8,3,3.2);
my @b=(3.2);
#my @g=(1.4,1.6,1.8,2,2.2,2.4,2.6,2.8);
#my @g=(2.2,2.4,2.6,2.8,3,3.2,3.4,3.6);
my @g=(4.2);
#my @a=(0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8);
#my @a=(0,0.1,0.2,0.3,0.4);
#my @a=(0);
my $a = shift;
#my @a=(0,0.01,0.02,0.03,0.04,0.05,0.06,0.07,0.08,0.09);
#my @a=(0);
my $p = shift;
my $s = shift;
my $up = shift;
#print "$p $up";
#print @temp;
#exit;
foreach $l(0...$#b){
foreach $k(0...$#g){
#foreach $j(0...$#a){
foreach $i(0...$B){
	$found=0;
	foreach $str(@temp){
		#print "$pa\_0-0.5\_$s\_$i\_$b[$l]\_$g[$k]\_$a\_$p\n";
		if($str =~ /$pa\_0-0.5\_$s\_$i\_$b[$l]\_$g[$k]\_$a\_$p/){
			$array[$i]=$str;
			$found=1;
		}
	}
	#if( $i==$B && $found==1 ){
	if( $i==$B || $found==0 ){
		$min=999999999;
		$bound=int($#array*$up);
		#print " $bound $up \n";
		foreach $str2(0...$bound){
			@t=split(/\s+/,$array[$str2]);
			if($t[1]!=''){
			if($t[1]<$min){
				$ml=$array[$str2];
				$min=$t[1];
			}}
		}
		print "$ml";
		@array=();
		last;
	}
}
}}
#}
