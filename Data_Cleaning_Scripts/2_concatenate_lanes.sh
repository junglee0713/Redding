IN_DIR="/scr1/users/leej39/Redding/Redding_Cleaned_Data/fastq_original"
OUT_DIR="/scr1/users/leej39/Redding/Redding_Cleaned_Data/concatenated_fastq"

mkdir -p ${OUT_DIR}
cd ${IN_DIR}

for i in {1..48}; do
    SAMPLE_ID="S${i}"
    OUT_FASTQ_FP="${OUT_DIR}/${SAMPLE_ID}_R1.fastq.gz"
    echo $(dir *_"${SAMPLE_ID}"_*R1_001.fastq.gz) | xargs cat > ${OUT_FASTQ_FP}
done    
