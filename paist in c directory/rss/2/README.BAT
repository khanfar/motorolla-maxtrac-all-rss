@echo OFF
IF NOT EXIST readme.txt GOTO ERROR

MORE <readme.txt
GOTO END

:ERROR
echo README.BAT: Cannot Find File README.TXT In Current Directory !!!
GOTO END

:END
