for i in CH GGS LX NX JNBR WL;
do 
bedtools intersect -a  2M_gene_denisity  -b  /project-whj/lzx/0516_chicken_recombrate/predictt_result/windows_1_10M/${i}/2M_${i}.window.intersect.bed_cal_window_result_avg_result  -wao > ${i}.2M_gene_denisity.window.intersect.bed
done
