for f in ZINC_PDBQT/*.pdbqt; do
    b=`basename $f .pdbqt`
    echo Processing ligand $b
    mkdir -p $b

    vina --config conf.txt --ligand $f --out ${b}/out.pdbqt

    echo "  "
    echo "  "
    echo "  "

done
