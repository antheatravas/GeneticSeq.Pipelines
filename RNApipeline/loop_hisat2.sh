#!/bin/sh
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --time=04:00:00
#SBATCH --job-name=loop_hisat2

module load gcc/7.3.0 hisat2

REFGENOME=/scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/RNA_REF_INDEX/grch38_snp_tran/genome_snp_tran 
FASTQ=/scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/fastq
FQFILES=($(ls $FASTQ | grep r1.fastq.gz | sed 's/_r1.fastq.gz//' ))
OUTMAIN=/scratch/l/lcl_uotmmg3003/lcl_uotmmg3003s2058/Assignment_7/A7_HISAT_Alligned

for FILENAME in ${FQFILES[@]}
do
hisat2 -p 16 --rg-id=$FILENAME --rg SM:$FILENAME --rg PL:ILLUMINA -x $REFGENOME --rna-strandness RF -1 $FASTQC/${FILENAME}_r1.fastq.gz -2 $FASTQC/${FILENAME}_r2.fastq.gz -S $OUTMAIN/${FILENAME}.sam
done

