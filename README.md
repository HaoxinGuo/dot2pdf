# dot2pdf
#批量处理gz/dot文件生成需要的PDF/PNG文件
整理了批量转换文件的操作方法。
## graphviz介绍
graphviz是一款快速绘图的软件，可以绘制各种想要的图（**流程图，UML图**）等，只需关注内容，而不需要关注排版，适合需要大量绘制流程图、UML图的工作人员。
## git介绍
Git是目前世界上最先进的分布式版本控制系统（没有之一）。可以结合github做大量的工作。
## graphviz+latex
近来做Opensees相关Element和Integrator的总结，需要绘制大量的图，故采用graphviz进行作图，由于图片数量大，希望能够批量处理这些文件，供LaTeX调用，节约时间，故利用git以及cmd写了批处理的程序。
## dot2pdf
git版本代码如下：
```bash
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
```
cmd版本如下：
```shell
::name：	dot2pdf/dot2png.cmd
:: Purpose: 	Batch conversion file form .dot/gv to pdf/png
:: Author:	https://github.com/HaoxinGuo
:: Revision: 	March 2019 - initial version
echo start the processing
for %%I in (*.dot) do (dot -Tpdf %%I -o %%~nI.pdf)
::for %%I in (*.dot) do (dot -Tpng %%I -o %%~nI.png
```
更多介绍可以转到我的github:[HaoxinGuo](https://github.com/HaoxinGuo/dot2pdf)

