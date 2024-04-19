#!/usr/bin/perl -w
$file=$ARGV[0];
open IN, "$file" || die "$_!";
while (<IN>){
	chomp;
	@line=split /\s+/;
#	chomp($line[4]);
	if ($line[3]==0){
		print "$line[0]\t$line[1]\t$line[2]\t$line[3]\t$line[4]\t0\n";
	}else{
		print "$line[0]\t$line[1]\t$line[2]\t$line[3]\t$line[4]\t$line[4]\n";
	}
}
close IN;
