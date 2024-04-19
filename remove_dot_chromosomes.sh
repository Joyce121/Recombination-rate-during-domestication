for i in WL CH GGS LX NX JNBR 


do 

awk '{if($1<34 && $1!=16 && $1!=29 && $1!=30 && $1!=31 && $1!=32 && $5>0)print $0}' ${i}_chr1-39_maf05geno02.txt > ${i}_chr1-39_maf05geno02.txt.filter



awk '{print $0"\t"$3-$2}' ${i}_chr1-39_maf05geno02.txt.filter > ${i}_chr1-39_maf05geno02.txt.filter.bed

done
