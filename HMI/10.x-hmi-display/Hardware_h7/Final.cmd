@echo off
title Finalizing Outputs    X-Layers Edition    v2.2  by A_D

echo ----------------------------------------- Clearing root dir ...
for /r %%x in (*.Dat) do (echo Delete "%%x"
del "%%x"
)

for /r %%x in (*.PrjPCBStructure) do (echo Delete "%%x"
del "%%x"
)

for /r %%x in (*.htm) do (echo Delete "%%x"
del "%%x"
)
echo ----------------------------------------- Clearing "__Previews" dir ...
if not exist __Previews/*.* goto PreviewsDirClear

cd __Previews
for /r %%x in (*.PcbDocPreview) do (echo Delete "%%x"
del "%%x"
)
for /r %%x in (*.SchDocPreview) do (echo Delete "%%x"
del "%%x"
)
cd ..
rd __Previews

:PreviewsDirClear
echo ----------------------------------------- Clearing "_Logs" dir ...
if not exist _Logs/*.* goto LogsClearEnd

cd _Logs
for /r %%x in (*.LOG) do (echo Delete "%%x"
del "%%x"
)
cd ..
rd _Logs

:LogsClearEnd
echo ----------------------------------------- Clearing "_Outputs" dir ...
if not exist _Outputs/*.* goto LayerSetEnd

cd _Outputs

if exist "Status Report.Txt" (echo Delete "Status Report.Txt"
del "Status Report.Txt")

for /r %%x in (*.PcbDoc) do (echo Delete "%%x"
del "%%x"
)

echo ----------------------------------------- Clearing "_Outputs\Gerbers" dir ...
if not exist Gerbers/*.* goto LayerSetEnd

cd Gerbers

for /r %%x in (*.apr) do (echo Delete "%%x"
del "%%x"
)
for /r %%x in (*.DRR) do (echo Delete "%%x"
del "%%x"
)
for /r %%x in (*.EXTREP) do (echo Delete "%%x"
del "%%x"
)
for /r %%x in (*.LDP) do (echo Delete "%%x"
del "%%x"
)
for /r %%x in (*.REP) do (echo Delete "%%x"
del "%%x"
)
for /r %%x in (*.RUL) do (echo Delete "%%x"
del "%%x"
)
for /r %%x in (*.APR_LIB) do (echo Delete "%%x"
del "%%x"
)

:LayerSetEnd
echo ----------------------------------------- End.
echo Press any key to EXIT.
pause>nul