#!/bin/sh

for i in `seq -w 0 55`; do
	for j in model0$i/ca_fields/fl_???_proc_man.sav; do var1=${j%%???_proc_man.sav};
            cp $j compiledData/fl_0$i"_${j#$var1}";
    done
done