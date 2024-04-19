for i in CH GGS WL
do
    for k in 1 10 5

    do
        bedtools intersect  -a ${i}.nsl.out.50kb.windows.sort_${k}%  -b  random_${i}_hotspots.txt.bed -wao > ${i}.nsl.out.50kb.windows.sort_${k}%_random_${i}_hotspots.txt
       bedtools intersect  -a ${i}.nsl.out.50kb.windows.sort_${k}%  -b  random_${i}_coldspots.txt.bed -wao > ${i}.nsl.out.50kb.windows.sort_${k}%_random_${i}_coldspots.txt

bedtools intersect  -a ${i}.nsl.out.50kb.windows.sort_${k}%  -b  /project-whj/lzx/00_0823_chicken_recomb_clear_up_result/03_hotspot/0722_1kb_hotspot/circles/1kb_${i}.hotspot.txt.sorted.bed.txt  -wao > ${i}.nsl.out.50kb.windows.sort_${k}%_${i}_1kb_hotspots.txt
bedtools intersect  -a ${i}.nsl.out.50kb.windows.sort_${k}%  -b  /project-whj/lzx/00_0823_chicken_recomb_clear_up_result/03_hotspot/0722_1kb_hotspot/circles/1kb_${i}.coldspot.txt.sorted.bed.txt -wao > ${i}.nsl.out.50kb.windows.sort_${k}%_${i}_1kb_coldspots.txt


 awk '{if($10 >0  )print $0}' ${i}.nsl.out.50kb.windows.sort_${k}%_random_${i}_hotspots.txt > ${i}.nsl.out.50kb.windows.sort_${k}%_random_${i}_hotspots.txt2
 awk '{if($10 >0  )print $0}'  ${i}.nsl.out.50kb.windows.sort_${k}%_random_${i}_coldspots.txt >  ${i}.nsl.out.50kb.windows.sort_${k}%_random_${i}_coldspots.txt2
 awk '{if($9 >0  )print $0}'   ${i}.nsl.out.50kb.windows.sort_${k}%_${i}_1kb_hotspots.txt >  ${i}.nsl.out.50kb.windows.sort_${k}%_${i}_1kb_hotspots.txt2
 awk '{if($9 >0  )print $0}' ${i}.nsl.out.50kb.windows.sort_${k}%_${i}_1kb_coldspots.txt > ${i}.nsl.out.50kb.windows.sort_${k}%_${i}_1kb_coldspots.txt2


     done
done
