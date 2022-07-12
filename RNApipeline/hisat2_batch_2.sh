#!/bin/sh 
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --time=04:00:00
#SBATCH --job-name=hisat2_batch_2

module load gcc/7.3.0 hisat2

hisat2 -p 16 --rg-id=N080611_Dex --rg SM:N080611_Dex --rg PL:ILLUMINA -x/scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/RNA_REF_INDEX/grch38_snp_tran/genome_snp_tran --rna-strandness RF -1 /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/fastq/N080611_Dex_r1.fastq.gz -2 /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/fastq/N080611_Dex_r2.fastq.gz -S /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/A7_HISAT_Alligned/N080611_Dex.sam

hisat2 -p 16 --rg-id=N080611_untreated --rg SM:N080611_untreated --rg PL:ILLUMINA -x/scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/RNA_REF_INDEX/grch38_snp_tran/genome_snp_tran --rna-strandness RF -1 /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/fastq/N080611_untreated_r1.fastq.gz -2 /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/fastq/N080611_untreated_r2.fastq.gz -S /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/A7_HISAT_Alligned/N080611_untreated.sam

exit
