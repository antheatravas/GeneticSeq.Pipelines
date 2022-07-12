#!/bin/sh 
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --time=04:00:00
#SBATCH --job-name=hisat2_batch_3

module load gcc/7.3.0 hisat2

hisat2 -p 16 --rg-id=N61311_Dex --rg SM:N61311_Dex --rg PL:ILLUMINA -x/scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/RNA_REF_INDEX/grch38_snp_tran/genome_snp_tran --rna-strandness RF -1 /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/fastq/N61311_Dex_r1.fastq.gz  -2 /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/fastq/N61311_Dex_r2.fastq.gz -S /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/A7_HISAT_Alligned/N61311_Dex.sam

hisat2 -p 16 --rg-id=N61311_untreated --rg SM:N61311_untreated --rg PL:ILLUMINA -x/scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/RNA_REF_INDEX/grch38_snp_tran/genome_snp_tran --rna-strandness RF -1 /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/fastq/N61311_untreated_r1.fastq.gz -2 /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/fastq/N61311_untreated_r2.fastq.gz -S /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/A7_HISAT_Alligned/N61311_untreated.sam

exit
