# step1
 python ped2fa.py   ld.0827-121sample.chr1-39_20230306.Galgal7b.SNP.filtered.PASS.geno02maf005.vcf.recode-502502.ped   ld.0827-121sample.chr1-39_20230306.Galgal7b.SNP.filtered.PASS.geno02maf005.vcf.recode-502502.fa 
# step2
 sed -i "s/I/N/g" ld.0827-121sample.chr1-39_20230306.Galgal7b.SNP.filtered.PASS.geno02maf005.vcf.recode-502502.fa 
# step3
 mafft  --thread 40  --auto ld.0827-121sample.chr1-39_20230306.Galgal7b.SNP.filtered.PASS.geno02maf005.vcf.recode-502502.fa  > ld.0827-121sample.chr1-39_20230306.Galgal7b.SNP.filtered.PASS.geno02maf005.vcf.recode-502502_aligned.fa 
# step4
 iqtree -s ld.0827-121sample.chr1-39_20230306.Galgal7b.SNP.filtered.PASS.geno02maf005.vcf.recode-502502_aligned.fa  -m TEST   -st DNA   -bb 1000 -nt AUTO 
