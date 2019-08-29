IN_DIR="/scr1/users/leej39/Redding/Redding_Original_Data_From_Alex/CHMI_Run_0324_Redding_cdiff-137903773/FASTQ_Generation_2019-07-02_12_02_41Z-189151974"
OUT_DIR="/scr1/users/leej39/Redding/Redding_Cleaned_Data/fastq_original"

mkdir -p ${OUT_DIR}
cd ${IN_DIR}
find . -type f | xargs cp -t ${OUT_DIR}
