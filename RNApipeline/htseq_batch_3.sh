#!/bin/sh 
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --time=04:00:00
#SBATCH --job-name=htseq_batch_3

module load anaconda3/5.2.0 htseq/0.11.1


htseq-count --format bam --order name --mode intersection-strict --stranded reverse --minaqual 1 --type exon --idattr gene_id /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/A7_HISAT_Alligned/N61311_Dex.bam /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/RNA_REF_DIR/Homo_sapiens.GRCh38.86.gtf > N61311_Dex.tsv

htseq-count --format bam --order name --mode intersection-strict --stranded reverse --minaqual 1 --type exon --idattr gene_id /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/A7_HISAT_Alligned/N61311_untreated.bam /scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/RNA_REF_DIR/Homo_sapiens.GRCh38.86.gtf > N61311_untreated.tsv


exit
