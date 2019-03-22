::name£º	dot2pdf/dot2png.cmd
:: Purpose: 	Batch conversion file form .dot/gv to pdf/png
:: Author:	https://github.com/HaoxinGuo
:: Revision: 	March 2019 - initial version
echo start the processing
for %%I in (*.dot) do (dot -Tpdf %%I -o %%~nI.pdf)
::for %%I in (*.dot) do (dot -Tpng %%I -o %%~nI.png)