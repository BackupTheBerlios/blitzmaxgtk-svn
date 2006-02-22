Rem
	This file is part of the BlitzMax GTK-modules.
	The BlitzMax GTK-modules are free software; you can redistribute and/or modify
	them under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	at your option) any later version.
	
	The BlitzMax GTK-modules are distributed in the hope that they will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with the BlitzMax GTK-modules; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
End Rem
'SciLexer.h - Constants 
Const SCLEX_CONTAINER = 0
Const SCLEX_NULL = 1
Const SCLEX_PYTHON = 2
Const SCLEX_CPP = 3
Const SCLEX_HTML = 4
Const SCLEX_XML = 5
Const SCLEX_PERL = 6
Const SCLEX_SQL = 7
Const SCLEX_VB = 8
Const SCLEX_PROPERTIES = 9
Const SCLEX_ERRORLIST = 10
Const SCLEX_MAKEFILE = 11
Const SCLEX_BATCH = 12
Const SCLEX_XCODE = 13
Const SCLEX_LATEX = 14
Const SCLEX_LUA = 15
Const SCLEX_DIFF = 16
Const SCLEX_CONF = 17
Const SCLEX_PASCAL = 18
Const SCLEX_AVE = 19
Const SCLEX_ADA = 20
Const SCLEX_LISP = 21
Const SCLEX_RUBY = 22
Const SCLEX_EIFFEL = 23
Const SCLEX_EIFFELKW = 24
Const SCLEX_TCL = 25
Const SCLEX_NNCRONTAB = 26
Const SCLEX_BULLANT = 27
Const SCLEX_VBSCRIPT = 28
Const SCLEX_BAAN = 31
Const SCLEX_MATLAB = 32
Const SCLEX_SCRIPTOL = 33
Const SCLEX_ASM = 34
Const SCLEX_CPPNOCASE = 35
Const SCLEX_FORTRAN = 36
Const SCLEX_F77 = 37
Const SCLEX_CSS = 38
Const SCLEX_POV = 39
Const SCLEX_LOUT = 40
Const SCLEX_ESCRIPT = 41
Const SCLEX_PS = 42
Const SCLEX_NSIS = 43
Const SCLEX_MMIXAL = 44
Const SCLEX_CLW = 45
Const SCLEX_CLWNOCASE = 46
Const SCLEX_LOT = 47
Const SCLEX_YAML = 48
Const SCLEX_TEX = 49
Const SCLEX_METAPOST = 50
Const SCLEX_POWERBASIC = 51
Const SCLEX_FORTH = 52
Const SCLEX_ERLANG = 53
Const SCLEX_OCTAVE = 54
Const SCLEX_MSSQL = 55
Const SCLEX_VERILOG = 56
Const SCLEX_KIX = 57
Const SCLEX_GUI4CLI = 58
Const SCLEX_SPECMAN = 59
Const SCLEX_AU3 = 60
Const SCLEX_APDL = 61
Const SCLEX_BASH = 62
Const SCLEX_ASN1 = 63
Const SCLEX_VHDL = 64
Const SCLEX_CAML = 65
Const SCLEX_BLITZBASIC = 66
Const SCLEX_PUREBASIC = 67
Const SCLEX_BLITZMAX = 67
Const SCLEX_HASKELL = 68
Const SCLEX_PHPSCRIPT = 69
Const SCLEX_TADS3 = 70
Const SCLEX_REBOL = 71
Const SCLEX_SMALLTALK = 72
Const SCLEX_FLAGSHIP = 73
Const SCLEX_CSOUND = 74
Const SCLEX_FREEBASIC = 75
Const SCLEX_AUTOMATIC = 1000
Const SCE_P_DEFAULT = 0
Const SCE_P_COMMENTLINE = 1
Const SCE_P_NUMBER = 2
Const SCE_P_STRING = 3
Const SCE_P_CHARACTER = 4
Const SCE_P_WORD = 5
Const SCE_P_TRIPLE = 6
Const SCE_P_TRIPLEDOUBLE = 7
Const SCE_P_CLASSNAME = 8
Const SCE_P_DEFNAME = 9
Const SCE_P_OPERATOR = 10
Const SCE_P_IDENTIFIER = 11
Const SCE_P_COMMENTBLOCK = 12
Const SCE_P_STRINGEOL = 13
Const SCE_C_DEFAULT = 0
Const SCE_C_COMMENT = 1
Const SCE_C_COMMENTLINE = 2
Const SCE_C_COMMENTDOC = 3
Const SCE_C_NUMBER = 4
Const SCE_C_WORD = 5
Const SCE_C_STRING = 6
Const SCE_C_CHARACTER = 7
Const SCE_C_UUID = 8
Const SCE_C_PREPROCESSOR = 9
Const SCE_C_OPERATOR = 10
Const SCE_C_IDENTIFIER = 11
Const SCE_C_STRINGEOL = 12
Const SCE_C_VERBATIM = 13
Const SCE_C_REGEX = 14
Const SCE_C_COMMENTLINEDOC = 15
Const SCE_C_WORD2 = 16
Const SCE_C_COMMENTDOCKEYWORD = 17
Const SCE_C_COMMENTDOCKEYWORDERROR = 18
Const SCE_C_GLOBALCLASS = 19
Const SCE_H_DEFAULT = 0
Const SCE_H_TAG = 1
Const SCE_H_TAGUNKNOWN = 2
Const SCE_H_ATTRIBUTE = 3
Const SCE_H_ATTRIBUTEUNKNOWN = 4
Const SCE_H_NUMBER = 5
Const SCE_H_DOUBLESTRING = 6
Const SCE_H_SINGLESTRING = 7
Const SCE_H_OTHER = 8
Const SCE_H_COMMENT = 9
Const SCE_H_ENTITY = 10
Const SCE_H_TAGEND = 11
Const SCE_H_XMLSTART = 12
Const SCE_H_XMLEND = 13
Const SCE_H_SCRIPT = 14
Const SCE_H_ASP = 15
Const SCE_H_ASPAT = 16
Const SCE_H_CDATA = 17
Const SCE_H_QUESTION = 18
Const SCE_H_VALUE = 19
Const SCE_H_XCCOMMENT = 20
Const SCE_H_SGML_DEFAULT = 21
Const SCE_H_SGML_COMMAND = 22
Const SCE_H_SGML_1ST_PARAM = 23
Const SCE_H_SGML_DOUBLESTRING = 24
Const SCE_H_SGML_SIMPLESTRING = 25
Const SCE_H_SGML_ERROR = 26
Const SCE_H_SGML_SPECIAL = 27
Const SCE_H_SGML_ENTITY = 28
Const SCE_H_SGML_COMMENT = 29
Const SCE_H_SGML_1ST_PARAM_COMMENT = 30
Const SCE_H_SGML_BLOCK_DEFAULT = 31
Const SCE_HJ_START = 40
Const SCE_HJ_DEFAULT = 41
Const SCE_HJ_COMMENT = 42
Const SCE_HJ_COMMENTLINE = 43
Const SCE_HJ_COMMENTDOC = 44
Const SCE_HJ_NUMBER = 45
Const SCE_HJ_WORD = 46
Const SCE_HJ_KEYWORD = 47
Const SCE_HJ_DOUBLESTRING = 48
Const SCE_HJ_SINGLESTRING = 49
Const SCE_HJ_SYMBOLS = 50
Const SCE_HJ_STRINGEOL = 51
Const SCE_HJ_REGEX = 52
Const SCE_HJA_START = 55
Const SCE_HJA_DEFAULT = 56
Const SCE_HJA_COMMENT = 57
Const SCE_HJA_COMMENTLINE = 58
Const SCE_HJA_COMMENTDOC = 59
Const SCE_HJA_NUMBER = 60
Const SCE_HJA_WORD = 61
Const SCE_HJA_KEYWORD = 62
Const SCE_HJA_DOUBLESTRING = 63
Const SCE_HJA_SINGLESTRING = 64
Const SCE_HJA_SYMBOLS = 65
Const SCE_HJA_STRINGEOL = 66
Const SCE_HJA_REGEX = 67
Const SCE_HB_START = 70
Const SCE_HB_DEFAULT = 71
Const SCE_HB_COMMENTLINE = 72
Const SCE_HB_NUMBER = 73
Const SCE_HB_WORD = 74
Const SCE_HB_STRING = 75
Const SCE_HB_IDENTIFIER = 76
Const SCE_HB_STRINGEOL = 77
Const SCE_HBA_START = 80
Const SCE_HBA_DEFAULT = 81
Const SCE_HBA_COMMENTLINE = 82
Const SCE_HBA_NUMBER = 83
Const SCE_HBA_WORD = 84
Const SCE_HBA_STRING = 85
Const SCE_HBA_IDENTIFIER = 86
Const SCE_HBA_STRINGEOL = 87
Const SCE_HP_START = 90
Const SCE_HP_DEFAULT = 91
Const SCE_HP_COMMENTLINE = 92
Const SCE_HP_NUMBER = 93
Const SCE_HP_STRING = 94
Const SCE_HP_CHARACTER = 95
Const SCE_HP_WORD = 96
Const SCE_HP_TRIPLE = 97
Const SCE_HP_TRIPLEDOUBLE = 98
Const SCE_HP_CLASSNAME = 99
Const SCE_HP_DEFNAME = 100
Const SCE_HP_OPERATOR = 101
Const SCE_HP_IDENTIFIER = 102
Const SCE_HPHP_COMPLEX_VARIABLE = 104
Const SCE_HPA_START = 105
Const SCE_HPA_DEFAULT = 106
Const SCE_HPA_COMMENTLINE = 107
Const SCE_HPA_NUMBER = 108
Const SCE_HPA_STRING = 109
Const SCE_HPA_CHARACTER = 110
Const SCE_HPA_WORD = 111
Const SCE_HPA_TRIPLE = 112
Const SCE_HPA_TRIPLEDOUBLE = 113
Const SCE_HPA_CLASSNAME = 114
Const SCE_HPA_DEFNAME = 115
Const SCE_HPA_OPERATOR = 116
Const SCE_HPA_IDENTIFIER = 117
Const SCE_HPHP_DEFAULT = 118
Const SCE_HPHP_HSTRING = 119
Const SCE_HPHP_SIMPLESTRING = 120
Const SCE_HPHP_WORD = 121
Const SCE_HPHP_NUMBER = 122
Const SCE_HPHP_VARIABLE = 123
Const SCE_HPHP_COMMENT = 124
Const SCE_HPHP_COMMENTLINE = 125
Const SCE_HPHP_HSTRING_VARIABLE = 126
Const SCE_HPHP_OPERATOR = 127
Const SCE_PL_DEFAULT = 0
Const SCE_PL_ERROR = 1
Const SCE_PL_COMMENTLINE = 2
Const SCE_PL_POD = 3
Const SCE_PL_NUMBER = 4
Const SCE_PL_WORD = 5
Const SCE_PL_STRING = 6
Const SCE_PL_CHARACTER = 7
Const SCE_PL_PUNCTUATION = 8
Const SCE_PL_PREPROCESSOR = 9
Const SCE_PL_OPERATOR = 10
Const SCE_PL_IDENTIFIER = 11
Const SCE_PL_SCALAR = 12
Const SCE_PL_ARRAY = 13
Const SCE_PL_HASH = 14
Const SCE_PL_SYMBOLTABLE = 15
Const SCE_PL_VARIABLE_INDEXER = 16
Const SCE_PL_REGEX = 17
Const SCE_PL_REGSUBST = 18
Const SCE_PL_LONGQUOTE = 19
Const SCE_PL_BACKTICKS = 20
Const SCE_PL_DATASECTION = 21
Const SCE_PL_HERE_DELIM = 22
Const SCE_PL_HERE_Q = 23
Const SCE_PL_HERE_QQ = 24
Const SCE_PL_HERE_QX = 25
Const SCE_PL_STRING_Q = 26
Const SCE_PL_STRING_QQ = 27
Const SCE_PL_STRING_QX = 28
Const SCE_PL_STRING_QR = 29
Const SCE_PL_STRING_QW = 30
Const SCE_PL_POD_VERB = 31
Const SCE_RB_DEFAULT = 0
Const SCE_RB_ERROR = 1
Const SCE_RB_COMMENTLINE = 2
Const SCE_RB_POD = 3
Const SCE_RB_NUMBER = 4
Const SCE_RB_WORD = 5
Const SCE_RB_STRING = 6
Const SCE_RB_CHARACTER = 7
Const SCE_RB_CLASSNAME = 8
Const SCE_RB_DEFNAME = 9
Const SCE_RB_OPERATOR = 10
Const SCE_RB_IDENTIFIER = 11
Const SCE_RB_REGEX = 12
Const SCE_RB_GLOBAL = 13
Const SCE_RB_SYMBOL = 14
Const SCE_RB_MODULE_NAME = 15
Const SCE_RB_INSTANCE_VAR = 16
Const SCE_RB_CLASS_VAR = 17
Const SCE_RB_BACKTICKS = 18
Const SCE_RB_DATASECTION = 19
Const SCE_RB_HERE_DELIM = 20
Const SCE_RB_HERE_Q = 21
Const SCE_RB_HERE_QQ = 22
Const SCE_RB_HERE_QX = 23
Const SCE_RB_STRING_Q = 24
Const SCE_RB_STRING_QQ = 25
Const SCE_RB_STRING_QX = 26
Const SCE_RB_STRING_QR = 27
Const SCE_RB_STRING_QW = 28
Const SCE_RB_WORD_DEMOTED = 29
Const SCE_RB_STDIN = 30
Const SCE_RB_STDOUT = 31
Const SCE_RB_STDERR = 40
Const SCE_RB_UPPER_BOUND = 41
Const SCE_B_DEFAULT = 0
Const SCE_B_COMMENT = 1
Const SCE_B_NUMBER = 2
Const SCE_B_KEYWORD = 3
Const SCE_B_STRING = 4
Const SCE_B_PREPROCESSOR = 5
Const SCE_B_OPERATOR = 6
Const SCE_B_IDENTIFIER = 7
Const SCE_B_DATE = 8
Const SCE_B_STRINGEOL = 9
Const SCE_B_KEYWORD2 = 10
Const SCE_B_KEYWORD3 = 11
Const SCE_B_KEYWORD4 = 12
Const SCE_B_CONSTANT = 13
Const SCE_B_ASM = 14
Const SCE_B_LABEL = 15
Const SCE_B_ERROR = 16
Const SCE_B_HEXNUMBER = 17
Const SCE_B_BINNUMBER = 18
Const SCE_B_MULTILINECOMMENT = 19
Const SCE_PROPS_DEFAULT = 0
Const SCE_PROPS_COMMENT = 1
Const SCE_PROPS_SECTION = 2
Const SCE_PROPS_ASSIGNMENT = 3
Const SCE_PROPS_DEFVAL = 4
Const SCE_L_DEFAULT = 0
Const SCE_L_COMMAND = 1
Const SCE_L_TAG = 2
Const SCE_L_MATH = 3
Const SCE_L_COMMENT = 4
Const SCE_LUA_DEFAULT = 0
Const SCE_LUA_COMMENT = 1
Const SCE_LUA_COMMENTLINE = 2
Const SCE_LUA_COMMENTDOC = 3
Const SCE_LUA_NUMBER = 4
Const SCE_LUA_WORD = 5
Const SCE_LUA_STRING = 6
Const SCE_LUA_CHARACTER = 7
Const SCE_LUA_LITERALSTRING = 8
Const SCE_LUA_PREPROCESSOR = 9
Const SCE_LUA_OPERATOR = 10
Const SCE_LUA_IDENTIFIER = 11
Const SCE_LUA_STRINGEOL = 12
Const SCE_LUA_WORD2 = 13
Const SCE_LUA_WORD3 = 14
Const SCE_LUA_WORD4 = 15
Const SCE_LUA_WORD5 = 16
Const SCE_LUA_WORD6 = 17
Const SCE_LUA_WORD7 = 18
Const SCE_LUA_WORD8 = 19
Const SCE_ERR_DEFAULT = 0
Const SCE_ERR_PYTHON = 1
Const SCE_ERR_GCC = 2
Const SCE_ERR_MS = 3
Const SCE_ERR_CMD = 4
Const SCE_ERR_BORLAND = 5
Const SCE_ERR_PERL = 6
Const SCE_ERR_NET = 7
Const SCE_ERR_LUA = 8
Const SCE_ERR_CTAG = 9
Const SCE_ERR_DIFF_CHANGED = 10
Const SCE_ERR_DIFF_ADDITION = 11
Const SCE_ERR_DIFF_DELETION = 12
Const SCE_ERR_DIFF_MESSAGE = 13
Const SCE_ERR_PHP = 14
Const SCE_ERR_ELF = 15
Const SCE_ERR_IFC = 16
Const SCE_ERR_IFORT = 17
Const SCE_ERR_ABSF = 18
Const SCE_ERR_TIDY = 19
Const SCE_ERR_JAVA_STACK = 20
Const SCE_BAT_DEFAULT = 0
Const SCE_BAT_COMMENT = 1
Const SCE_BAT_WORD = 2
Const SCE_BAT_LABEL = 3
Const SCE_BAT_HIDE = 4
Const SCE_BAT_COMMAND = 5
Const SCE_BAT_IDENTIFIER = 6
Const SCE_BAT_OPERATOR = 7
Const SCE_MAKE_DEFAULT = 0
Const SCE_MAKE_COMMENT = 1
Const SCE_MAKE_PREPROCESSOR = 2
Const SCE_MAKE_IDENTIFIER = 3
Const SCE_MAKE_OPERATOR = 4
Const SCE_MAKE_TARGET = 5
Const SCE_MAKE_IDEOL = 9
Const SCE_DIFF_DEFAULT = 0
Const SCE_DIFF_COMMENT = 1
Const SCE_DIFF_COMMAND = 2
Const SCE_DIFF_HEADER = 3
Const SCE_DIFF_POSITION = 4
Const SCE_DIFF_DELETED = 5
Const SCE_DIFF_ADDED = 6
Const SCE_CONF_DEFAULT = 0
Const SCE_CONF_COMMENT = 1
Const SCE_CONF_NUMBER = 2
Const SCE_CONF_IDENTIFIER = 3
Const SCE_CONF_EXTENSION = 4
Const SCE_CONF_PARAMETER = 5
Const SCE_CONF_STRING = 6
Const SCE_CONF_OPERATOR = 7
Const SCE_CONF_IP = 8
Const SCE_CONF_DIRECTIVE = 9
Const SCE_AVE_DEFAULT = 0
Const SCE_AVE_COMMENT = 1
Const SCE_AVE_NUMBER = 2
Const SCE_AVE_WORD = 3
Const SCE_AVE_STRING = 6
Const SCE_AVE_ENUM = 7
Const SCE_AVE_STRINGEOL = 8
Const SCE_AVE_IDENTIFIER = 9
Const SCE_AVE_OPERATOR = 10
Const SCE_AVE_WORD1 = 11
Const SCE_AVE_WORD2 = 12
Const SCE_AVE_WORD3 = 13
Const SCE_AVE_WORD4 = 14
Const SCE_AVE_WORD5 = 15
Const SCE_AVE_WORD6 = 16
Const SCE_ADA_DEFAULT = 0
Const SCE_ADA_WORD = 1
Const SCE_ADA_IDENTIFIER = 2
Const SCE_ADA_NUMBER = 3
Const SCE_ADA_DELIMITER = 4
Const SCE_ADA_CHARACTER = 5
Const SCE_ADA_CHARACTEREOL = 6
Const SCE_ADA_STRING = 7
Const SCE_ADA_STRINGEOL = 8
Const SCE_ADA_LABEL = 9
Const SCE_ADA_COMMENTLINE = 10
Const SCE_ADA_ILLEGAL = 11
Const SCE_BAAN_DEFAULT = 0
Const SCE_BAAN_COMMENT = 1
Const SCE_BAAN_COMMENTDOC = 2
Const SCE_BAAN_NUMBER = 3
Const SCE_BAAN_WORD = 4
Const SCE_BAAN_STRING = 5
Const SCE_BAAN_PREPROCESSOR = 6
Const SCE_BAAN_OPERATOR = 7
Const SCE_BAAN_IDENTIFIER = 8
Const SCE_BAAN_STRINGEOL = 9
Const SCE_BAAN_WORD2 = 10
Const SCE_LISP_DEFAULT = 0
Const SCE_LISP_COMMENT = 1
Const SCE_LISP_NUMBER = 2
Const SCE_LISP_KEYWORD = 3
Const SCE_LISP_KEYWORD_KW = 4
Const SCE_LISP_SYMBOL = 5
Const SCE_LISP_STRING = 6
Const SCE_LISP_STRINGEOL = 8
Const SCE_LISP_IDENTIFIER = 9
Const SCE_LISP_OPERATOR = 10
Const SCE_LISP_SPECIAL = 11
Const SCE_LISP_MULTI_COMMENT = 12
Const SCE_EIFFEL_DEFAULT = 0
Const SCE_EIFFEL_COMMENTLINE = 1
Const SCE_EIFFEL_NUMBER = 2
Const SCE_EIFFEL_WORD = 3
Const SCE_EIFFEL_STRING = 4
Const SCE_EIFFEL_CHARACTER = 5
Const SCE_EIFFEL_OPERATOR = 6
Const SCE_EIFFEL_IDENTIFIER = 7
Const SCE_EIFFEL_STRINGEOL = 8
Const SCE_NNCRONTAB_DEFAULT = 0
Const SCE_NNCRONTAB_COMMENT = 1
Const SCE_NNCRONTAB_TASK = 2
Const SCE_NNCRONTAB_SECTION = 3
Const SCE_NNCRONTAB_KEYWORD = 4
Const SCE_NNCRONTAB_MODIFIER = 5
Const SCE_NNCRONTAB_ASTERISK = 6
Const SCE_NNCRONTAB_NUMBER = 7
Const SCE_NNCRONTAB_STRING = 8
Const SCE_NNCRONTAB_ENVIRONMENT = 9
Const SCE_NNCRONTAB_IDENTIFIER = 10
Const SCE_FORTH_DEFAULT = 0
Const SCE_FORTH_COMMENT = 1
Const SCE_FORTH_COMMENT_ML = 2
Const SCE_FORTH_IDENTIFIER = 3
Const SCE_FORTH_CONTROL = 4
Const SCE_FORTH_KEYWORD = 5
Const SCE_FORTH_DEFWORD = 6
Const SCE_FORTH_PREWORD1 = 7
Const SCE_FORTH_PREWORD2 = 8
Const SCE_FORTH_NUMBER = 9
Const SCE_FORTH_STRING = 10
Const SCE_FORTH_LOCALE = 11
Const SCE_MATLAB_DEFAULT = 0
Const SCE_MATLAB_COMMENT = 1
Const SCE_MATLAB_COMMAND = 2
Const SCE_MATLAB_NUMBER = 3
Const SCE_MATLAB_KEYWORD = 4
Const SCE_MATLAB_STRING = 5
Const SCE_MATLAB_OPERATOR = 6
Const SCE_MATLAB_IDENTIFIER = 7
Const SCE_MATLAB_DOUBLEQUOTESTRING = 8
Const SCE_SCRIPTOL_DEFAULT = 0
Const SCE_SCRIPTOL_WHITE = 1
Const SCE_SCRIPTOL_COMMENTLINE = 2
Const SCE_SCRIPTOL_PERSISTENT = 3
Const SCE_SCRIPTOL_CSTYLE = 4
Const SCE_SCRIPTOL_COMMENTBLOCK = 5
Const SCE_SCRIPTOL_NUMBER = 6
Const SCE_SCRIPTOL_STRING = 7
Const SCE_SCRIPTOL_CHARACTER = 8
Const SCE_SCRIPTOL_STRINGEOL = 9
Const SCE_SCRIPTOL_KEYWORD = 10
Const SCE_SCRIPTOL_OPERATOR = 11
Const SCE_SCRIPTOL_IDENTIFIER = 12
Const SCE_SCRIPTOL_TRIPLE = 13
Const SCE_SCRIPTOL_CLASSNAME = 14
Const SCE_SCRIPTOL_PREPROCESSOR = 15
Const SCE_ASM_DEFAULT = 0
Const SCE_ASM_COMMENT = 1
Const SCE_ASM_NUMBER = 2
Const SCE_ASM_STRING = 3
Const SCE_ASM_OPERATOR = 4
Const SCE_ASM_IDENTIFIER = 5
Const SCE_ASM_CPUINSTRUCTION = 6
Const SCE_ASM_MATHINSTRUCTION = 7
Const SCE_ASM_REGISTER = 8
Const SCE_ASM_DIRECTIVE = 9
Const SCE_ASM_DIRECTIVEOPERAND = 10
Const SCE_ASM_COMMENTBLOCK = 11
Const SCE_ASM_CHARACTER = 12
Const SCE_ASM_STRINGEOL = 13
Const SCE_ASM_EXTINSTRUCTION = 14
Const SCE_F_DEFAULT = 0
Const SCE_F_COMMENT = 1
Const SCE_F_NUMBER = 2
Const SCE_F_STRING1 = 3
Const SCE_F_STRING2 = 4
Const SCE_F_STRINGEOL = 5
Const SCE_F_OPERATOR = 6
Const SCE_F_IDENTIFIER = 7
Const SCE_F_WORD = 8
Const SCE_F_WORD2 = 9
Const SCE_F_WORD3 = 10
Const SCE_F_PREPROCESSOR = 11
Const SCE_F_OPERATOR2 = 12
Const SCE_F_LABEL = 13
Const SCE_F_CONTINUATION = 14
Const SCE_CSS_DEFAULT = 0
Const SCE_CSS_TAG = 1
Const SCE_CSS_CLASS = 2
Const SCE_CSS_PSEUDOCLASS = 3
Const SCE_CSS_UNKNOWN_PSEUDOCLASS = 4
Const SCE_CSS_OPERATOR = 5
Const SCE_CSS_IDENTIFIER = 6
Const SCE_CSS_UNKNOWN_IDENTIFIER = 7
Const SCE_CSS_VALUE = 8
Const SCE_CSS_COMMENT = 9
Const SCE_CSS_ID = 10
Const SCE_CSS_IMPORTANT = 11
Const SCE_CSS_DIRECTIVE = 12
Const SCE_CSS_DOUBLESTRING = 13
Const SCE_CSS_SINGLESTRING = 14
Const SCE_CSS_IDENTIFIER2 = 15
Const SCE_CSS_ATTRIBUTE = 16
Const SCE_POV_DEFAULT = 0
Const SCE_POV_COMMENT = 1
Const SCE_POV_COMMENTLINE = 2
Const SCE_POV_NUMBER = 3
Const SCE_POV_OPERATOR = 4
Const SCE_POV_IDENTIFIER = 5
Const SCE_POV_STRING = 6
Const SCE_POV_STRINGEOL = 7
Const SCE_POV_DIRECTIVE = 8
Const SCE_POV_BADDIRECTIVE = 9
Const SCE_POV_WORD2 = 10
Const SCE_POV_WORD3 = 11
Const SCE_POV_WORD4 = 12
Const SCE_POV_WORD5 = 13
Const SCE_POV_WORD6 = 14
Const SCE_POV_WORD7 = 15
Const SCE_POV_WORD8 = 16
Const SCE_LOUT_DEFAULT = 0
Const SCE_LOUT_COMMENT = 1
Const SCE_LOUT_NUMBER = 2
Const SCE_LOUT_WORD = 3
Const SCE_LOUT_WORD2 = 4
Const SCE_LOUT_WORD3 = 5
Const SCE_LOUT_WORD4 = 6
Const SCE_LOUT_STRING = 7
Const SCE_LOUT_OPERATOR = 8
Const SCE_LOUT_IDENTIFIER = 9
Const SCE_LOUT_STRINGEOL = 10
Const SCE_ESCRIPT_DEFAULT = 0
Const SCE_ESCRIPT_COMMENT = 1
Const SCE_ESCRIPT_COMMENTLINE = 2
Const SCE_ESCRIPT_COMMENTDOC = 3
Const SCE_ESCRIPT_NUMBER = 4
Const SCE_ESCRIPT_WORD = 5
Const SCE_ESCRIPT_STRING = 6
Const SCE_ESCRIPT_OPERATOR = 7
Const SCE_ESCRIPT_IDENTIFIER = 8
Const SCE_ESCRIPT_BRACE = 9
Const SCE_ESCRIPT_WORD2 = 10
Const SCE_ESCRIPT_WORD3 = 11
Const SCE_PS_DEFAULT = 0
Const SCE_PS_COMMENT = 1
Const SCE_PS_DSC_COMMENT = 2
Const SCE_PS_DSC_VALUE = 3
Const SCE_PS_NUMBER = 4
Const SCE_PS_NAME = 5
Const SCE_PS_KEYWORD = 6
Const SCE_PS_LITERAL = 7
Const SCE_PS_IMMEVAL = 8
Const SCE_PS_PAREN_ARRAY = 9
Const SCE_PS_PAREN_DICT = 10
Const SCE_PS_PAREN_PROC = 11
Const SCE_PS_TEXT = 12
Const SCE_PS_HEXSTRING = 13
Const SCE_PS_BASE85STRING = 14
Const SCE_PS_BADSTRINGCHAR = 15
Const SCE_NSIS_DEFAULT = 0
Const SCE_NSIS_COMMENT = 1
Const SCE_NSIS_STRINGDQ = 2
Const SCE_NSIS_STRINGLQ = 3
Const SCE_NSIS_STRINGRQ = 4
Const SCE_NSIS_FUNCTION = 5
Const SCE_NSIS_VARIABLE = 6
Const SCE_NSIS_LABEL = 7
Const SCE_NSIS_USERDEFINED = 8
Const SCE_NSIS_SECTIONDEF = 9
Const SCE_NSIS_SUBSECTIONDEF = 10
Const SCE_NSIS_IFDEFINEDEF = 11
Const SCE_NSIS_MACRODEF = 12
Const SCE_NSIS_STRINGVAR = 13
Const SCE_NSIS_NUMBER = 14
Const SCE_NSIS_SECTIONGROUP = 15
Const SCE_NSIS_PAGEEX = 16
Const SCE_NSIS_FUNCTIONDEF = 17
Const SCE_NSIS_COMMENTBOX = 18
Const SCE_MMIXAL_LEADWS = 0
Const SCE_MMIXAL_COMMENT = 1
Const SCE_MMIXAL_LABEL = 2
Const SCE_MMIXAL_OPCODE = 3
Const SCE_MMIXAL_OPCODE_PRE = 4
Const SCE_MMIXAL_OPCODE_VALID = 5
Const SCE_MMIXAL_OPCODE_UNKNOWN = 6
Const SCE_MMIXAL_OPCODE_POST = 7
Const SCE_MMIXAL_OPERANDS = 8
Const SCE_MMIXAL_NUMBER = 9
Const SCE_MMIXAL_REF = 10
Const SCE_MMIXAL_CHAR = 11
Const SCE_MMIXAL_STRING = 12
Const SCE_MMIXAL_REGISTER = 13
Const SCE_MMIXAL_HEX = 14
Const SCE_MMIXAL_OPERATOR = 15
Const SCE_MMIXAL_SYMBOL = 16
Const SCE_MMIXAL_INCLUDE = 17
Const SCE_CLW_DEFAULT = 0
Const SCE_CLW_LABEL = 1
Const SCE_CLW_COMMENT = 2
Const SCE_CLW_STRING = 3
Const SCE_CLW_USER_IDENTIFIER = 4
Const SCE_CLW_INTEGER_CONSTANT = 5
Const SCE_CLW_REAL_CONSTANT = 6
Const SCE_CLW_PICTURE_STRING = 7
Const SCE_CLW_KEYWORD = 8
Const SCE_CLW_COMPILER_DIRECTIVE = 9
Const SCE_CLW_RUNTIME_EXPRESSIONS = 10
Const SCE_CLW_BUILTIN_PROCEDURES_FUNCTION = 11
Const SCE_CLW_STRUCTURE_DATA_TYPE = 12
Const SCE_CLW_ATTRIBUTE = 13
Const SCE_CLW_STANDARD_EQUATE = 14
Const SCE_CLW_ERROR = 15
Const SCE_CLW_DEPRECATED = 16
Const SCE_LOT_DEFAULT = 0
Const SCE_LOT_HEADER = 1
Const SCE_LOT_BREAK = 2
Const SCE_LOT_SET = 3
Const SCE_LOT_PASS = 4
Const SCE_LOT_FAIL = 5
Const SCE_LOT_ABORT = 6
Const SCE_YAML_DEFAULT = 0
Const SCE_YAML_COMMENT = 1
Const SCE_YAML_IDENTIFIER = 2
Const SCE_YAML_KEYWORD = 3
Const SCE_YAML_NUMBER = 4
Const SCE_YAML_REFERENCE = 5
Const SCE_YAML_DOCUMENT = 6
Const SCE_YAML_TEXT = 7
Const SCE_YAML_ERROR = 8
Const SCE_TEX_DEFAULT = 0
Const SCE_TEX_SPECIAL = 1
Const SCE_TEX_GROUP = 2
Const SCE_TEX_SYMBOL = 3
Const SCE_TEX_COMMAND = 4
Const SCE_TEX_TEXT = 5
Const SCE_METAPOST_DEFAULT = 0
Const SCE_METAPOST_SPECIAL = 1
Const SCE_METAPOST_GROUP = 2
Const SCE_METAPOST_SYMBOL = 3
Const SCE_METAPOST_COMMAND = 4
Const SCE_METAPOST_TEXT = 5
Const SCE_METAPOST_EXTRA = 6
Const SCE_ERLANG_DEFAULT = 0
Const SCE_ERLANG_COMMENT = 1
Const SCE_ERLANG_VARIABLE = 2
Const SCE_ERLANG_NUMBER = 3
Const SCE_ERLANG_KEYWORD = 4
Const SCE_ERLANG_STRING = 5
Const SCE_ERLANG_OPERATOR = 6
Const SCE_ERLANG_ATOM = 7
Const SCE_ERLANG_FUNCTION_NAME = 8
Const SCE_ERLANG_CHARACTER = 9
Const SCE_ERLANG_MACRO = 10
Const SCE_ERLANG_RECORD = 11
Const SCE_ERLANG_SEPARATOR = 12
Const SCE_ERLANG_NODE_NAME = 13
Const SCE_ERLANG_UNKNOWN = 31
Const SCE_MSSQL_DEFAULT = 0
Const SCE_MSSQL_COMMENT = 1
Const SCE_MSSQL_LINE_COMMENT = 2
Const SCE_MSSQL_NUMBER = 3
Const SCE_MSSQL_STRING = 4
Const SCE_MSSQL_OPERATOR = 5
Const SCE_MSSQL_IDENTIFIER = 6
Const SCE_MSSQL_VARIABLE = 7
Const SCE_MSSQL_COLUMN_NAME = 8
Const SCE_MSSQL_STATEMENT = 9
Const SCE_MSSQL_DATATYPE = 10
Const SCE_MSSQL_SYSTABLE = 11
Const SCE_MSSQL_GLOBAL_VARIABLE = 12
Const SCE_MSSQL_FUNCTION = 13
Const SCE_MSSQL_STORED_PROCEDURE = 14
Const SCE_MSSQL_DEFAULT_PREF_DATATYPE = 15
Const SCE_MSSQL_COLUMN_NAME_2 = 16
Const SCE_V_DEFAULT = 0
Const SCE_V_COMMENT = 1
Const SCE_V_COMMENTLINE = 2
Const SCE_V_COMMENTLINEBANG = 3
Const SCE_V_NUMBER = 4
Const SCE_V_WORD = 5
Const SCE_V_STRING = 6
Const SCE_V_WORD2 = 7
Const SCE_V_WORD3 = 8
Const SCE_V_PREPROCESSOR = 9
Const SCE_V_OPERATOR = 10
Const SCE_V_IDENTIFIER = 11
Const SCE_V_STRINGEOL = 12
Const SCE_V_USER = 19
Const SCE_KIX_DEFAULT = 0
Const SCE_KIX_COMMENT = 1
Const SCE_KIX_STRING1 = 2
Const SCE_KIX_STRING2 = 3
Const SCE_KIX_NUMBER = 4
Const SCE_KIX_VAR = 5
Const SCE_KIX_MACRO = 6
Const SCE_KIX_KEYWORD = 7
Const SCE_KIX_FUNCTIONS = 8
Const SCE_KIX_OPERATOR = 9
Const SCE_KIX_IDENTIFIER = 31
Const SCE_GC_DEFAULT = 0
Const SCE_GC_COMMENTLINE = 1
Const SCE_GC_COMMENTBLOCK = 2
Const SCE_GC_GLOBAL = 3
Const SCE_GC_EVENT = 4
Const SCE_GC_ATTRIBUTE = 5
Const SCE_GC_CONTROL = 6
Const SCE_GC_COMMAND = 7
Const SCE_GC_STRING = 8
Const SCE_GC_OPERATOR = 9
Const SCE_SN_DEFAULT = 0
Const SCE_SN_CODE = 1
Const SCE_SN_COMMENTLINE = 2
Const SCE_SN_COMMENTLINEBANG = 3
Const SCE_SN_NUMBER = 4
Const SCE_SN_WORD = 5
Const SCE_SN_STRING = 6
Const SCE_SN_WORD2 = 7
Const SCE_SN_WORD3 = 8
Const SCE_SN_PREPROCESSOR = 9
Const SCE_SN_OPERATOR = 10
Const SCE_SN_IDENTIFIER = 11
Const SCE_SN_STRINGEOL = 12
Const SCE_SN_REGEXTAG = 13
Const SCE_SN_SIGNAL = 14
Const SCE_SN_USER = 19
Const SCE_AU3_DEFAULT = 0
Const SCE_AU3_COMMENT = 1
Const SCE_AU3_COMMENTBLOCK = 2
Const SCE_AU3_NUMBER = 3
Const SCE_AU3_FUNCTION = 4
Const SCE_AU3_KEYWORD = 5
Const SCE_AU3_MACRO = 6
Const SCE_AU3_STRING = 7
Const SCE_AU3_OPERATOR = 8
Const SCE_AU3_VARIABLE = 9
Const SCE_AU3_SENT = 10
Const SCE_AU3_PREPROCESSOR = 11
Const SCE_AU3_SPECIAL = 12
Const SCE_AU3_EXPAND = 13
Const SCE_AU3_COMOBJ = 14
Const SCE_APDL_DEFAULT = 0
Const SCE_APDL_COMMENT = 1
Const SCE_APDL_COMMENTBLOCK = 2
Const SCE_APDL_NUMBER = 3
Const SCE_APDL_STRING = 4
Const SCE_APDL_OPERATOR = 5
Const SCE_APDL_WORD = 6
Const SCE_APDL_PROCESSOR = 7
Const SCE_APDL_COMMAND = 8
Const SCE_APDL_SLASHCOMMAND = 9
Const SCE_APDL_STARCOMMAND = 10
Const SCE_APDL_ARGUMENT = 11
Const SCE_APDL_FUNCTION = 12
Const SCE_SH_DEFAULT = 0
Const SCE_SH_ERROR = 1
Const SCE_SH_COMMENTLINE = 2
Const SCE_SH_NUMBER = 3
Const SCE_SH_WORD = 4
Const SCE_SH_STRING = 5
Const SCE_SH_CHARACTER = 6
Const SCE_SH_OPERATOR = 7
Const SCE_SH_IDENTIFIER = 8
Const SCE_SH_SCALAR = 9
Const SCE_SH_PARAM = 10
Const SCE_SH_BACKTICKS = 11
Const SCE_SH_HERE_DELIM = 12
Const SCE_SH_HERE_Q = 13
Const SCE_ASN1_DEFAULT = 0
Const SCE_ASN1_COMMENT = 1
Const SCE_ASN1_IDENTIFIER = 2
Const SCE_ASN1_STRING = 3
Const SCE_ASN1_OID = 4
Const SCE_ASN1_SCALAR = 5
Const SCE_ASN1_KEYWORD = 6
Const SCE_ASN1_ATTRIBUTE = 7
Const SCE_ASN1_DESCRIPTOR = 8
Const SCE_ASN1_TYPE = 9
Const SCE_ASN1_OPERATOR = 10
Const SCE_VHDL_DEFAULT = 0
Const SCE_VHDL_COMMENT = 1
Const SCE_VHDL_COMMENTLINEBANG = 2
Const SCE_VHDL_NUMBER = 3
Const SCE_VHDL_STRING = 4
Const SCE_VHDL_OPERATOR = 5
Const SCE_VHDL_IDENTIFIER = 6
Const SCE_VHDL_STRINGEOL = 7
Const SCE_VHDL_KEYWORD = 8
Const SCE_VHDL_STDOPERATOR = 9
Const SCE_VHDL_ATTRIBUTE = 10
Const SCE_VHDL_STDFUNCTION = 11
Const SCE_VHDL_STDPACKAGE = 12
Const SCE_VHDL_STDTYPE = 13
Const SCE_VHDL_USERWORD = 14
Const SCE_CAML_DEFAULT = 0
Const SCE_CAML_IDENTIFIER = 1
Const SCE_CAML_TAGNAME = 2
Const SCE_CAML_KEYWORD = 3
Const SCE_CAML_KEYWORD2 = 4
Const SCE_CAML_LINENUM = 5
Const SCE_CAML_OPERATOR = 6
Const SCE_CAML_NUMBER = 7
Const SCE_CAML_CHAR = 8
Const SCE_CAML_STRING = 9
Const SCE_CAML_COMMENT = 10
Const SCE_CAML_COMMENT1 = 11
Const SCE_CAML_COMMENT2 = 12
Const SCE_CAML_COMMENT3 = 13
Const SCE_HA_DEFAULT = 0
Const SCE_HA_IDENTIFIER = 1
Const SCE_HA_KEYWORD = 2
Const SCE_HA_NUMBER = 3
Const SCE_HA_STRING = 4
Const SCE_HA_CHARACTER = 5
Const SCE_HA_CLASS = 6
Const SCE_HA_MODULE = 7
Const SCE_HA_CAPITAL = 8
Const SCE_HA_DATA = 9
Const SCE_HA_IMPORT = 10
Const SCE_HA_OPERATOR = 11
Const SCE_HA_INSTANCE = 12
Const SCE_HA_COMMENTLINE = 13
Const SCE_HA_COMMENTBLOCK = 14
Const SCE_HA_COMMENTBLOCK2 = 15
Const SCE_HA_COMMENTBLOCK3 = 16
Const SCE_T3_DEFAULT = 0
Const SCE_T3_X_DEFAULT = 1
Const SCE_T3_PREPROCESSOR = 2
Const SCE_T3_BLOCK_COMMENT = 3
Const SCE_T3_LINE_COMMENT = 4
Const SCE_T3_OPERATOR = 5
Const SCE_T3_KEYWORD = 6
Const SCE_T3_NUMBER = 7
Const SCE_T3_IDENTIFIER = 8
Const SCE_T3_S_STRING = 9
Const SCE_T3_D_STRING = 10
Const SCE_T3_X_STRING = 11
Const SCE_T3_LIB_DIRECTIVE = 12
Const SCE_T3_MSG_PARAM = 13
Const SCE_T3_HTML_TAG = 14
Const SCE_T3_HTML_DEFAULT = 15
Const SCE_T3_HTML_STRING = 16
Const SCE_T3_USER1 = 17
Const SCE_T3_USER2 = 18
Const SCE_T3_USER3 = 19
Const SCE_REBOL_DEFAULT = 0
Const SCE_REBOL_COMMENTLINE = 1
Const SCE_REBOL_COMMENTBLOCK = 2
Const SCE_REBOL_PREFACE = 3
Const SCE_REBOL_OPERATOR = 4
Const SCE_REBOL_CHARACTER = 5
Const SCE_REBOL_QUOTEDSTRING = 6
Const SCE_REBOL_BRACEDSTRING = 7
Const SCE_REBOL_NUMBER = 8
Const SCE_REBOL_PAIR = 9
Const SCE_REBOL_TUPLE = 10
Const SCE_REBOL_BINARY = 11
Const SCE_REBOL_MONEY = 12
Const SCE_REBOL_ISSUE = 13
Const SCE_REBOL_TAG = 14
Const SCE_REBOL_FILE = 15
Const SCE_REBOL_EMAIL = 16
Const SCE_REBOL_URL = 17
Const SCE_REBOL_DATE = 18
Const SCE_REBOL_TIME = 19
Const SCE_REBOL_IDENTIFIER = 20
Const SCE_REBOL_WORD = 21
Const SCE_REBOL_WORD2 = 22
Const SCE_REBOL_WORD3 = 23
Const SCE_REBOL_WORD4 = 24
Const SCE_REBOL_WORD5 = 25
Const SCE_REBOL_WORD6 = 26
Const SCE_REBOL_WORD7 = 27
Const SCE_REBOL_WORD8 = 28
Const SCE_SQL_DEFAULT = 0
Const SCE_SQL_COMMENT = 1
Const SCE_SQL_COMMENTLINE = 2
Const SCE_SQL_COMMENTDOC = 3
Const SCE_SQL_NUMBER = 4
Const SCE_SQL_WORD = 5
Const SCE_SQL_STRING = 6
Const SCE_SQL_CHARACTER = 7
Const SCE_SQL_SQLPLUS = 8
Const SCE_SQL_SQLPLUS_PROMPT = 9
Const SCE_SQL_OPERATOR = 10
Const SCE_SQL_IDENTIFIER = 11
Const SCE_SQL_SQLPLUS_COMMENT = 13
Const SCE_SQL_COMMENTLINEDOC = 15
Const SCE_SQL_WORD2 = 16
Const SCE_SQL_COMMENTDOCKEYWORD = 17
Const SCE_SQL_COMMENTDOCKEYWORDERROR = 18
Const SCE_SQL_USER1 = 19
Const SCE_SQL_USER2 = 20
Const SCE_SQL_USER3 = 21
Const SCE_SQL_USER4 = 22
Const SCE_ST_DEFAULT = 0
Const SCE_ST_STRING = 1
Const SCE_ST_NUMBER = 2
Const SCE_ST_COMMENT = 3
Const SCE_ST_SYMBOL = 4
Const SCE_ST_BINARY = 5
Const SCE_ST_BOOL = 6
Const SCE_ST_SELF = 7
Const SCE_ST_SUPER = 8
Const SCE_ST_NIL = 9
Const SCE_ST_GLOBAL = 10
Const SCE_ST_RETURN = 11
Const SCE_ST_SPECIAL = 12
Const SCE_ST_KWSEND = 13
Const SCE_ST_ASSIGN = 14
Const SCE_ST_CHARACTER = 15
Const SCE_ST_SPEC_SEL = 16
Const SCE_FS_DEFAULT = 0
Const SCE_FS_COMMENT = 1
Const SCE_FS_COMMENTLINE = 2
Const SCE_FS_COMMENTDOC = 3
Const SCE_FS_COMMENTLINEDOC = 4
Const SCE_FS_COMMENTDOCKEYWORD = 5
Const SCE_FS_COMMENTDOCKEYWORDERROR = 6
Const SCE_FS_KEYWORD = 7
Const SCE_FS_KEYWORD2 = 8
Const SCE_FS_KEYWORD3 = 9
Const SCE_FS_KEYWORD4 = 10
Const SCE_FS_NUMBER = 11
Const SCE_FS_STRING = 12
Const SCE_FS_PREPROCESSOR = 13
Const SCE_FS_OPERATOR = 14
Const SCE_FS_IDENTIFIER = 15
Const SCE_FS_DATE = 16
Const SCE_FS_STRINGEOL = 17
Const SCE_FS_CONSTANT = 18
Const SCE_FS_ASM = 19
Const SCE_FS_LABEL = 20
Const SCE_FS_ERROR = 21
Const SCE_FS_HEXNUMBER = 22
Const SCE_FS_BINNUMBER = 23
Const SCE_CSOUND_DEFAULT = 0
Const SCE_CSOUND_COMMENT = 1
Const SCE_CSOUND_NUMBER = 2
Const SCE_CSOUND_OPERATOR = 3
Const SCE_CSOUND_INSTR = 4
Const SCE_CSOUND_IDENTIFIER = 5
Const SCE_CSOUND_OPCODE = 6
Const SCE_CSOUND_HEADERSTMT = 7
Const SCE_CSOUND_USERKEYWORD = 8
Const SCE_CSOUND_COMMENTBLOCK = 9
Const SCE_CSOUND_PARAM = 10
Const SCE_CSOUND_ARATE_VAR = 11
Const SCE_CSOUND_KRATE_VAR = 12
Const SCE_CSOUND_IRATE_VAR = 13
Const SCE_CSOUND_GLOBAL_VAR = 14
Const SCE_CSOUND_STRINGEOL = 15
Const SCLEX_ASP = 29
Const SCLEX_PHP = 30
