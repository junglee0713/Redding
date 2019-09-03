IN_DIR="/scr1/users/leej39/Redding/PanPhlAn_Scripts/refseq/bacteria"
FNA_DIR="/scr1/users/leej39/Redding/PanPhlAn_Scripts/fna"
GFF_DIR="/scr1/users/leej39/Redding/PanPhlAn_Scripts/gff"

mkdir -p ${FNA_DIR}
mkdir -p ${GFF_DIR}
cd ${IN_DIR}
find . -name "*fna.gz" | xargs cp -t ${FNA_DIR}
find . -name "*gff.gz" | xargs cp -t ${GFF_DIR}
