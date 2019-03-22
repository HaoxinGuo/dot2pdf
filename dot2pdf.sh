#this file is transverse dot file to pdf for Batch processing
#writen by guohaoxin
for f in *.dot; 
do  
	echo $f; #printf the file name in the gui
	t=$(basename include/$f .dot); # define the variable 
	echo $t>>list.txt; #printf the file list to the txt file for check
    dot -Tpdf $f -o $t.pdf;	 #dot2pdf
	#dot -Tpng $f -o $t.png;	 #dot2png
done
