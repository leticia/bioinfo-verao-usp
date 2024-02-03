#!/bin/bash
pastaOrigem=/content/ZINC\_MOL2
pasta=/content/ZINC\_MOL2\_min
mkdir $pasta

for n in $pastaOrigem/*.mol2
do
  arquivo=$(basename -- $n)
  obabel -imol -omol --minimize --log --crit 1e-06 --ff MMFF94s --steps 1000 --rvdw 10 --rele 10 --freq 10 --sd --newton -i mol2 $n -o mol2 -O $pasta/${arquivo%.mol2}.mol2
done
