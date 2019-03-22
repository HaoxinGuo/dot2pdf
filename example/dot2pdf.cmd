echo start the processing
for %%I in (*.dot) do (dot -Tpdf %%I -o %%~nI.pdf)