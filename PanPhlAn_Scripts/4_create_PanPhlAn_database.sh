# Originally from Scott

PANGEN="/home/leej39/panphlan/panphlan_pangenome_generation.py"
CLADE="cdiff19"
FNA_DIR="/scr1/users/leej39/Redding/PanPhlAn_Scripts/fna"
GFF_DIR="/scr1/users/leej39/Redding/PanPhlAn_Scripts/gff"
PAN_DB="/home/leej39/panphlan/panphlan_db"

source activate panphlan
${PANGEN} \
    --clade "${CLADE}" \
    --i_fna "${FNA_DIR}" \
    --i_gff "${GFF_DIR}" \
    --output "${PAN_DB}" \
    --verbose
