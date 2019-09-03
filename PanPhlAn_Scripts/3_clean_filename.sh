# rename fna files: keep only GCF-number (remove all behind first dot)

FNA_DIR="/scr1/users/leej39/Redding/PanPhlAn_Scripts/fna"
GFF_DIR="/scr1/users/leej39/Redding/PanPhlAn_Scripts/gff"

cd ${FNA_DIR}
for FILE in *.fna.gz; do
    mv "${FILE}" "${FILE%%.*}.fna.gz"
done

cd ${GFF_DIR}
for FILE in *.gff.gz; do
    mv "${FILE}" "${FILE%%.*}.gff.gz"
done
