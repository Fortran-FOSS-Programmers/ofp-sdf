include ../../make.inc

SYNTAX_DIR = ../../LOPe/syntax
TRANS_DIR  = ../../fortran/trans
PP_DIR     = ../../fortran/pp

TBL     = $(SYNTAX_DIR)/LOPe.tbl
TO_SIM  = $(TRANS_DIR)/ofp-simplify
TO_FAST = $(TRANS_DIR)/ofp2fast
TO_PP   = $(TRANS_DIR)/fast2pp
PP      = $(PP_DIR)/Fortran.pp

CFLAGS = $(ST_CFLAGS) -I ../syntax
LDFLAGS = $(ST_LDFLAGS) -la stratego-lib

all : lope-lower

lope-lower : lope-lower.str
	$(ST_PATH)/strc -i lope-lower.str $(CFLAGS) $(LDFLAGS) --main io-lope-lower

check : lope-lower
	sglri -p $(TBL) -i testfile.f90 | $(TO_FAST) | lope-lower | $(TO_PP) | ast2text -p $(PP)

clean :
	rm -f lope-lower lope-lower.c
	rm -f *.o *.lo *.dep