CHARACTER :: cvar
INQUIRE (UNIT=5, ACCESS=cvar, ACTION=cvar, ASYNCHRONOUS=cvar)
INQUIRE (BLANK=cvar, UNIT=6, ERR=13)
13 END PROGRAM