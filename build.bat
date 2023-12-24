zcc +msx -create-app -O3 -DAMALLOC -subtype=msxdos main.c msxclib.c msxalib.c -bn COLD.COM -lm
del COLD.img
move /y COLD.COM bin
cd bin
copy dosformsx.DSK COLD.DSK
START /WAIT DISKMGR.exe -A -F -C COLD.DSK COLD.COM
START /WAIT DISKMGR.exe -A -F -C COLD.DSK fine.SC8
START /WAIT DISKMGR.exe -A -F -C COLD.DSK cold.SC8
START /WAIT DISKMGR.exe -A -F -C COLD.DSK mask.SC8
cd ../
