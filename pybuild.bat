@ECHO OFF
:start
python nml_patcher.py -f "pgt.pnml" -o "pgt.nml"
nmlc pgt.nml -o pgt.grf
PAUSE
goto start