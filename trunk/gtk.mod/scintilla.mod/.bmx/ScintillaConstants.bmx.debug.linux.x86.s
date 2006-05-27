	format	ELF
	extrn	__bb_blitz_blitz
	extrn	bbOnDebugEnterScope
	extrn	bbOnDebugLeaveScope
	extrn	bbStringClass
	public	__bb_scintilla_ScintillaConstants
	section	"code" executable
__bb_scintilla_ScintillaConstants:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_2333],0
	je	_2334
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_2334:
	mov	dword [_2333],1
	push	ebp
	push	_3
	call	dword [bbOnDebugEnterScope]
	add	esp,8
	call	__bb_blitz_blitz
	mov	ebx,0
_1:
	call	dword [bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" writeable align 8
	align	4
_2333:
	dd	0
_4:
	db	"ScintillaConstants",0
_5:
	db	"INVALID_POSITION",0
_6:
	db	"i",0
	align	4
_7:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
_8:
	db	"SCI_START",0
	align	4
_9:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,48
_10:
	db	"SCI_OPTIONAL_START",0
	align	4
_11:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	51,48,48,48
_12:
	db	"SCI_LEXER_START",0
	align	4
_13:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,48
_14:
	db	"SCI_ADDTEXT",0
	align	4
_15:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,49
_16:
	db	"SCI_ADDSTYLEDTEXT",0
	align	4
_17:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,50
_18:
	db	"SCI_INSERTTEXT",0
	align	4
_19:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,51
_20:
	db	"SCI_CLEARALL",0
	align	4
_21:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,52
_22:
	db	"SCI_CLEARDOCUMENTSTYLE",0
	align	4
_23:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,53
_24:
	db	"SCI_GETLENGTH",0
	align	4
_25:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,54
_26:
	db	"SCI_GETCHARAT",0
	align	4
_27:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,55
_28:
	db	"SCI_GETCURRENTPOS",0
	align	4
_29:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,56
_30:
	db	"SCI_GETANCHOR",0
	align	4
_31:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,48,57
_32:
	db	"SCI_GETSTYLEAT",0
	align	4
_33:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,48
_34:
	db	"SCI_REDO",0
	align	4
_35:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,49
_36:
	db	"SCI_SETUNDOCOLLECTION",0
	align	4
_37:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,50
_38:
	db	"SCI_SELECTALL",0
	align	4
_39:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,51
_40:
	db	"SCI_SETSAVEPOINT",0
	align	4
_41:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,52
_42:
	db	"SCI_GETSTYLEDTEXT",0
	align	4
_43:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,53
_44:
	db	"SCI_CANREDO",0
	align	4
_45:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,54
_46:
	db	"SCI_MARKERLINEFROMHANDLE",0
	align	4
_47:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,55
_48:
	db	"SCI_MARKERDELETEHANDLE",0
	align	4
_49:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,56
_50:
	db	"SCI_GETUNDOCOLLECTION",0
	align	4
_51:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,49,57
_52:
	db	"SCWS_INVISIBLE",0
	align	4
_53:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	48
_54:
	db	"SCWS_VISIBLEALWAYS",0
	align	4
_55:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	49
_56:
	db	"SCWS_VISIBLEAFTERINDENT",0
	align	4
_57:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	50
_58:
	db	"SCI_GETVIEWWS",0
	align	4
_59:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,48
_60:
	db	"SCI_SETVIEWWS",0
	align	4
_61:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,49
_62:
	db	"SCI_POSITIONFROMPOINT",0
	align	4
_63:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,50
_64:
	db	"SCI_POSITIONFROMPOINTCLOSE",0
	align	4
_65:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,51
_66:
	db	"SCI_GOTOLINE",0
	align	4
_67:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,52
_68:
	db	"SCI_GOTOPOS",0
	align	4
_69:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,53
_70:
	db	"SCI_SETANCHOR",0
	align	4
_71:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,54
_72:
	db	"SCI_GETCURLINE",0
	align	4
_73:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,55
_74:
	db	"SCI_GETENDSTYLED",0
	align	4
_75:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,56
_76:
	db	"SC_EOL_CRLF",0
_77:
	db	"SC_EOL_CR",0
_78:
	db	"SC_EOL_LF",0
_79:
	db	"SCI_CONVERTEOLS",0
	align	4
_80:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,50,57
_81:
	db	"SCI_GETEOLMODE",0
	align	4
_82:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,48
_83:
	db	"SCI_SETEOLMODE",0
	align	4
_84:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,49
_85:
	db	"SCI_STARTSTYLING",0
	align	4
_86:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,50
_87:
	db	"SCI_SETSTYLING",0
	align	4
_88:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,51
_89:
	db	"SCI_GETBUFFEREDDRAW",0
	align	4
_90:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,52
_91:
	db	"SCI_SETBUFFEREDDRAW",0
	align	4
_92:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,53
_93:
	db	"SCI_SETTABWIDTH",0
	align	4
_94:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,54
_95:
	db	"SCI_GETTABWIDTH",0
	align	4
_96:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,49
_97:
	db	"SC_CP_UTF8",0
	align	4
_98:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	54,53,48,48,49
_99:
	db	"SC_CP_DBCS",0
_100:
	db	"SCI_SETCODEPAGE",0
	align	4
_101:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,55
_102:
	db	"SCI_SETUSEPALETTE",0
	align	4
_103:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,51,57
_104:
	db	"MARKER_MAX",0
	align	4
_105:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,49
_106:
	db	"SC_MARK_CIRCLE",0
_107:
	db	"SC_MARK_ROUNDRECT",0
_108:
	db	"SC_MARK_ARROW",0
_109:
	db	"SC_MARK_SMALLRECT",0
	align	4
_110:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	51
_111:
	db	"SC_MARK_SHORTARROW",0
	align	4
_112:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	52
_113:
	db	"SC_MARK_EMPTY",0
	align	4
_114:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	53
_115:
	db	"SC_MARK_ARROWDOWN",0
	align	4
_116:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	54
_117:
	db	"SC_MARK_MINUS",0
	align	4
_118:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	55
_119:
	db	"SC_MARK_PLUS",0
	align	4
_120:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	56
_121:
	db	"SC_MARK_VLINE",0
	align	4
_122:
	dd	bbStringClass
	dd	2147483647
	dd	1
	dw	57
_123:
	db	"SC_MARK_LCORNER",0
	align	4
_124:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,48
_125:
	db	"SC_MARK_TCORNER",0
	align	4
_126:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,49
_127:
	db	"SC_MARK_BOXPLUS",0
	align	4
_128:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,50
_129:
	db	"SC_MARK_BOXPLUSCONNECTED",0
	align	4
_130:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,51
_131:
	db	"SC_MARK_BOXMINUS",0
	align	4
_132:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,52
_133:
	db	"SC_MARK_BOXMINUSCONNECTED",0
	align	4
_134:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,53
_135:
	db	"SC_MARK_LCORNERCURVE",0
	align	4
_136:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,54
_137:
	db	"SC_MARK_TCORNERCURVE",0
	align	4
_138:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,55
_139:
	db	"SC_MARK_CIRCLEPLUS",0
	align	4
_140:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,56
_141:
	db	"SC_MARK_CIRCLEPLUSCONNECTED",0
	align	4
_142:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	49,57
_143:
	db	"SC_MARK_CIRCLEMINUS",0
	align	4
_144:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,48
_145:
	db	"SC_MARK_CIRCLEMINUSCONNECTED",0
	align	4
_146:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,49
_147:
	db	"SC_MARK_BACKGROUND",0
	align	4
_148:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,50
_149:
	db	"SC_MARK_DOTDOTDOT",0
	align	4
_150:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,51
_151:
	db	"SC_MARK_ARROWS",0
	align	4
_152:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,52
_153:
	db	"SC_MARK_PIXMAP",0
	align	4
_154:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,53
_155:
	db	"SC_MARK_FULLRECT",0
	align	4
_156:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,54
_157:
	db	"SC_MARK_CHARACTER",0
	align	4
_158:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	49,48,48,48,48
_159:
	db	"SC_MARKNUM_FOLDEREND",0
_160:
	db	"SC_MARKNUM_FOLDEROPENMID",0
_161:
	db	"SC_MARKNUM_FOLDERMIDTAIL",0
	align	4
_162:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,55
_163:
	db	"SC_MARKNUM_FOLDERTAIL",0
	align	4
_164:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,56
_165:
	db	"SC_MARKNUM_FOLDERSUB",0
	align	4
_166:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	50,57
_167:
	db	"SC_MARKNUM_FOLDER",0
	align	4
_168:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,48
_169:
	db	"SC_MARKNUM_FOLDEROPEN",0
_170:
	db	"SC_MASK_FOLDERS",0
	align	4
_171:
	dd	bbStringClass
	dd	2147483647
	dd	9
	dw	45,51,51,53,53,52,52,51,50
_172:
	db	"SCI_MARKERDEFINE",0
	align	4
_173:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,48
_174:
	db	"SCI_MARKERSETFORE",0
	align	4
_175:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,49
_176:
	db	"SCI_MARKERSETBACK",0
	align	4
_177:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,50
_178:
	db	"SCI_MARKERADD",0
	align	4
_179:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,51
_180:
	db	"SCI_MARKERDELETE",0
	align	4
_181:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,52
_182:
	db	"SCI_MARKERDELETEALL",0
	align	4
_183:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,53
_184:
	db	"SCI_MARKERGET",0
	align	4
_185:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,54
_186:
	db	"SCI_MARKERNEXT",0
	align	4
_187:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,55
_188:
	db	"SCI_MARKERPREVIOUS",0
	align	4
_189:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,56
_190:
	db	"SCI_MARKERDEFINEPIXMAP",0
	align	4
_191:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,52,57
_192:
	db	"SCI_MARKERADDSET",0
	align	4
_193:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,54
_194:
	db	"SC_MARGIN_SYMBOL",0
_195:
	db	"SC_MARGIN_NUMBER",0
_196:
	db	"SCI_SETMARGINTYPEN",0
	align	4
_197:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,48
_198:
	db	"SCI_GETMARGINTYPEN",0
	align	4
_199:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,49
_200:
	db	"SCI_SETMARGINWIDTHN",0
	align	4
_201:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,50
_202:
	db	"SCI_GETMARGINWIDTHN",0
	align	4
_203:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,51
_204:
	db	"SCI_SETMARGINMASKN",0
	align	4
_205:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,52
_206:
	db	"SCI_GETMARGINMASKN",0
	align	4
_207:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,53
_208:
	db	"SCI_SETMARGINSENSITIVEN",0
	align	4
_209:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,54
_210:
	db	"SCI_GETMARGINSENSITIVEN",0
	align	4
_211:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,52,55
_212:
	db	"STYLE_DEFAULT",0
	align	4
_213:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,50
_214:
	db	"STYLE_LINENUMBER",0
	align	4
_215:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,51
_216:
	db	"STYLE_BRACELIGHT",0
	align	4
_217:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,52
_218:
	db	"STYLE_BRACEBAD",0
	align	4
_219:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,53
_220:
	db	"STYLE_CONTROLCHAR",0
	align	4
_221:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,54
_222:
	db	"STYLE_INDENTGUIDE",0
	align	4
_223:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,55
_224:
	db	"STYLE_CALLTIP",0
	align	4
_225:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,56
_226:
	db	"STYLE_LASTPREDEFINED",0
	align	4
_227:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	51,57
_228:
	db	"STYLE_MAX",0
	align	4
_229:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,55
_230:
	db	"SC_CHARSET_ANSI",0
_231:
	db	"SC_CHARSET_DEFAULT",0
_232:
	db	"SC_CHARSET_BALTIC",0
	align	4
_233:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,56,54
_234:
	db	"SC_CHARSET_CHINESEBIG5",0
	align	4
_235:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,51,54
_236:
	db	"SC_CHARSET_EASTEUROPE",0
	align	4
_237:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	50,51,56
_238:
	db	"SC_CHARSET_GB2312",0
	align	4
_239:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,51,52
_240:
	db	"SC_CHARSET_GREEK",0
	align	4
_241:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,54,49
_242:
	db	"SC_CHARSET_HANGUL",0
	align	4
_243:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,57
_244:
	db	"SC_CHARSET_MAC",0
	align	4
_245:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,55
_246:
	db	"SC_CHARSET_OEM",0
	align	4
_247:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	50,53,53
_248:
	db	"SC_CHARSET_RUSSIAN",0
	align	4
_249:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	50,48,52
_250:
	db	"SC_CHARSET_CYRILLIC",0
	align	4
_251:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	49,50,53,49
_252:
	db	"SC_CHARSET_SHIFTJIS",0
	align	4
_253:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,56
_254:
	db	"SC_CHARSET_SYMBOL",0
_255:
	db	"SC_CHARSET_TURKISH",0
	align	4
_256:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,54,50
_257:
	db	"SC_CHARSET_JOHAB",0
	align	4
_258:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,51,48
_259:
	db	"SC_CHARSET_HEBREW",0
	align	4
_260:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,55,55
_261:
	db	"SC_CHARSET_ARABIC",0
	align	4
_262:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,55,56
_263:
	db	"SC_CHARSET_VIETNAMESE",0
	align	4
_264:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,54,51
_265:
	db	"SC_CHARSET_THAI",0
	align	4
_266:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	50,50,50
_267:
	db	"SC_CHARSET_8859_15",0
	align	4
_268:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,48,48
_269:
	db	"SCI_STYLECLEARALL",0
	align	4
_270:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,48
_271:
	db	"SCI_STYLESETFORE",0
	align	4
_272:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,49
_273:
	db	"SCI_STYLESETBACK",0
	align	4
_274:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,50
_275:
	db	"SCI_STYLESETBOLD",0
	align	4
_276:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,51
_277:
	db	"SCI_STYLESETITALIC",0
	align	4
_278:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,52
_279:
	db	"SCI_STYLESETSIZE",0
	align	4
_280:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,53
_281:
	db	"SCI_STYLESETFONT",0
	align	4
_282:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,54
_283:
	db	"SCI_STYLESETEOLFILLED",0
	align	4
_284:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,55
_285:
	db	"SCI_STYLERESETDEFAULT",0
	align	4
_286:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,56
_287:
	db	"SCI_STYLESETUNDERLINE",0
	align	4
_288:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,53,57
_289:
	db	"SC_CASE_MIXED",0
_290:
	db	"SC_CASE_UPPER",0
_291:
	db	"SC_CASE_LOWER",0
_292:
	db	"SCI_STYLESETCASE",0
	align	4
_293:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,54,48
_294:
	db	"SCI_STYLESETCHARACTERSET",0
	align	4
_295:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,54,54
_296:
	db	"SCI_STYLESETHOTSPOT",0
	align	4
_297:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,57
_298:
	db	"SCI_SETSELFORE",0
	align	4
_299:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,54,55
_300:
	db	"SCI_SETSELBACK",0
	align	4
_301:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,54,56
_302:
	db	"SCI_SETCARETFORE",0
	align	4
_303:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,54,57
_304:
	db	"SCI_ASSIGNCMDKEY",0
	align	4
_305:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,48
_306:
	db	"SCI_CLEARCMDKEY",0
	align	4
_307:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,49
_308:
	db	"SCI_CLEARALLCMDKEYS",0
	align	4
_309:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,50
_310:
	db	"SCI_SETSTYLINGEX",0
	align	4
_311:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,51
_312:
	db	"SCI_STYLESETVISIBLE",0
	align	4
_313:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,52
_314:
	db	"SCI_GETCARETPERIOD",0
	align	4
_315:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,53
_316:
	db	"SCI_SETCARETPERIOD",0
	align	4
_317:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,54
_318:
	db	"SCI_SETWORDCHARS",0
	align	4
_319:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,55
_320:
	db	"SCI_BEGINUNDOACTION",0
	align	4
_321:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,56
_322:
	db	"SCI_ENDUNDOACTION",0
	align	4
_323:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,55,57
_324:
	db	"INDIC_MAX",0
_325:
	db	"INDIC_PLAIN",0
_326:
	db	"INDIC_SQUIGGLE",0
_327:
	db	"INDIC_TT",0
_328:
	db	"INDIC_DIAGONAL",0
_329:
	db	"INDIC_STRIKE",0
_330:
	db	"INDIC_HIDDEN",0
_331:
	db	"INDIC_BOX",0
_332:
	db	"INDIC_ROUNDBOX",0
_333:
	db	"INDIC0_MASK",0
_334:
	db	"INDIC1_MASK",0
	align	4
_335:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,52
_336:
	db	"INDIC2_MASK",0
_337:
	db	"INDICS_MASK",0
	align	4
_338:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	50,50,52
_339:
	db	"SCI_INDICSETSTYLE",0
	align	4
_340:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,56,48
_341:
	db	"SCI_INDICGETSTYLE",0
	align	4
_342:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,56,49
_343:
	db	"SCI_INDICSETFORE",0
	align	4
_344:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,56,50
_345:
	db	"SCI_INDICGETFORE",0
	align	4
_346:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,56,51
_347:
	db	"SCI_SETWHITESPACEFORE",0
	align	4
_348:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,56,52
_349:
	db	"SCI_SETWHITESPACEBACK",0
	align	4
_350:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,56,53
_351:
	db	"SCI_SETSTYLEBITS",0
	align	4
_352:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,48
_353:
	db	"SCI_GETSTYLEBITS",0
	align	4
_354:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,49
_355:
	db	"SCI_SETLINESTATE",0
	align	4
_356:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,50
_357:
	db	"SCI_GETLINESTATE",0
	align	4
_358:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,51
_359:
	db	"SCI_GETMAXLINESTATE",0
	align	4
_360:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,52
_361:
	db	"SCI_GETCARETLINEVISIBLE",0
	align	4
_362:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,53
_363:
	db	"SCI_SETCARETLINEVISIBLE",0
	align	4
_364:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,54
_365:
	db	"SCI_GETCARETLINEBACK",0
	align	4
_366:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,55
_367:
	db	"SCI_SETCARETLINEBACK",0
	align	4
_368:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,56
_369:
	db	"SCI_STYLESETCHANGEABLE",0
	align	4
_370:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,48,57,57
_371:
	db	"SCI_AUTOCSHOW",0
	align	4
_372:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,48
_373:
	db	"SCI_AUTOCCANCEL",0
	align	4
_374:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,49
_375:
	db	"SCI_AUTOCACTIVE",0
	align	4
_376:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,50
_377:
	db	"SCI_AUTOCPOSSTART",0
	align	4
_378:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,51
_379:
	db	"SCI_AUTOCCOMPLETE",0
	align	4
_380:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,52
_381:
	db	"SCI_AUTOCSTOPS",0
	align	4
_382:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,53
_383:
	db	"SCI_AUTOCSETSEPARATOR",0
	align	4
_384:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,54
_385:
	db	"SCI_AUTOCGETSEPARATOR",0
	align	4
_386:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,55
_387:
	db	"SCI_AUTOCSELECT",0
	align	4
_388:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,48,56
_389:
	db	"SCI_AUTOCSETCANCELATSTART",0
	align	4
_390:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,48
_391:
	db	"SCI_AUTOCGETCANCELATSTART",0
	align	4
_392:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,49
_393:
	db	"SCI_AUTOCSETFILLUPS",0
	align	4
_394:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,50
_395:
	db	"SCI_AUTOCSETCHOOSESINGLE",0
	align	4
_396:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,51
_397:
	db	"SCI_AUTOCGETCHOOSESINGLE",0
	align	4
_398:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,52
_399:
	db	"SCI_AUTOCSETIGNORECASE",0
	align	4
_400:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,53
_401:
	db	"SCI_AUTOCGETIGNORECASE",0
	align	4
_402:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,54
_403:
	db	"SCI_USERLISTSHOW",0
	align	4
_404:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,55
_405:
	db	"SCI_AUTOCSETAUTOHIDE",0
	align	4
_406:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,56
_407:
	db	"SCI_AUTOCGETAUTOHIDE",0
	align	4
_408:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,49,57
_409:
	db	"SCI_AUTOCSETDROPRESTOFWORD",0
	align	4
_410:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,48
_411:
	db	"SCI_AUTOCGETDROPRESTOFWORD",0
	align	4
_412:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,49
_413:
	db	"SCI_REGISTERIMAGE",0
	align	4
_414:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,53
_415:
	db	"SCI_CLEARREGISTEREDIMAGES",0
	align	4
_416:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,56
_417:
	db	"SCI_AUTOCGETTYPESEPARATOR",0
	align	4
_418:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,53
_419:
	db	"SCI_AUTOCSETTYPESEPARATOR",0
	align	4
_420:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,54
_421:
	db	"SCI_AUTOCSETMAXWIDTH",0
	align	4
_422:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,56
_423:
	db	"SCI_AUTOCGETMAXWIDTH",0
	align	4
_424:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,57
_425:
	db	"SCI_AUTOCSETMAXHEIGHT",0
	align	4
_426:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,49,48
_427:
	db	"SCI_AUTOCGETMAXHEIGHT",0
	align	4
_428:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,49,49
_429:
	db	"SCI_SETINDENT",0
	align	4
_430:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,50
_431:
	db	"SCI_GETINDENT",0
	align	4
_432:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,51
_433:
	db	"SCI_SETUSETABS",0
	align	4
_434:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,52
_435:
	db	"SCI_GETUSETABS",0
	align	4
_436:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,53
_437:
	db	"SCI_SETLINEINDENTATION",0
	align	4
_438:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,54
_439:
	db	"SCI_GETLINEINDENTATION",0
	align	4
_440:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,55
_441:
	db	"SCI_GETLINEINDENTPOSITION",0
	align	4
_442:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,56
_443:
	db	"SCI_GETCOLUMN",0
	align	4
_444:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,50,57
_445:
	db	"SCI_SETHSCROLLBAR",0
	align	4
_446:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,48
_447:
	db	"SCI_GETHSCROLLBAR",0
	align	4
_448:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,49
_449:
	db	"SCI_SETINDENTATIONGUIDES",0
	align	4
_450:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,50
_451:
	db	"SCI_GETINDENTATIONGUIDES",0
	align	4
_452:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,51
_453:
	db	"SCI_SETHIGHLIGHTGUIDE",0
	align	4
_454:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,52
_455:
	db	"SCI_GETHIGHLIGHTGUIDE",0
	align	4
_456:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,53
_457:
	db	"SCI_GETLINEENDPOSITION",0
	align	4
_458:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,54
_459:
	db	"SCI_GETCODEPAGE",0
	align	4
_460:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,55
_461:
	db	"SCI_GETCARETFORE",0
	align	4
_462:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,56
_463:
	db	"SCI_GETUSEPALETTE",0
	align	4
_464:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,51,57
_465:
	db	"SCI_GETREADONLY",0
	align	4
_466:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,48
_467:
	db	"SCI_SETCURRENTPOS",0
	align	4
_468:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,49
_469:
	db	"SCI_SETSELECTIONSTART",0
	align	4
_470:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,50
_471:
	db	"SCI_GETSELECTIONSTART",0
	align	4
_472:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,51
_473:
	db	"SCI_SETSELECTIONEND",0
	align	4
_474:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,52
_475:
	db	"SCI_GETSELECTIONEND",0
	align	4
_476:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,53
_477:
	db	"SCI_SETPRINTMAGNIFICATION",0
	align	4
_478:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,54
_479:
	db	"SCI_GETPRINTMAGNIFICATION",0
	align	4
_480:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,55
_481:
	db	"SC_PRINT_NORMAL",0
_482:
	db	"SC_PRINT_INVERTLIGHT",0
_483:
	db	"SC_PRINT_BLACKONWHITE",0
_484:
	db	"SC_PRINT_COLOURONWHITE",0
_485:
	db	"SC_PRINT_COLOURONWHITEDEFAULTBG",0
_486:
	db	"SCI_SETPRINTCOLOURMODE",0
	align	4
_487:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,56
_488:
	db	"SCI_GETPRINTCOLOURMODE",0
	align	4
_489:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,52,57
_490:
	db	"SCFIND_WHOLEWORD",0
_491:
	db	"SCFIND_MATCHCASE",0
_492:
	db	"SCFIND_WORDSTART",0
	align	4
_493:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	49,48,52,56,53,55,54
_494:
	db	"SCFIND_REGEXP",0
	align	4
_495:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	50,48,57,55,49,53,50
_496:
	db	"SCFIND_POSIX",0
	align	4
_497:
	dd	bbStringClass
	dd	2147483647
	dd	7
	dw	52,49,57,52,51,48,52
_498:
	db	"SCI_FINDTEXT",0
	align	4
_499:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,48
_500:
	db	"SCI_FORMATRANGE",0
	align	4
_501:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,49
_502:
	db	"SCI_GETFIRSTVISIBLELINE",0
	align	4
_503:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,50
_504:
	db	"SCI_GETLINE",0
	align	4
_505:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,51
_506:
	db	"SCI_GETLINECOUNT",0
	align	4
_507:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,52
_508:
	db	"SCI_SETMARGINLEFT",0
	align	4
_509:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,53
_510:
	db	"SCI_GETMARGINLEFT",0
	align	4
_511:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,54
_512:
	db	"SCI_SETMARGINRIGHT",0
	align	4
_513:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,55
_514:
	db	"SCI_GETMARGINRIGHT",0
	align	4
_515:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,56
_516:
	db	"SCI_GETMODIFY",0
	align	4
_517:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,53,57
_518:
	db	"SCI_SETSEL",0
	align	4
_519:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,48
_520:
	db	"SCI_GETSELTEXT",0
	align	4
_521:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,49
_522:
	db	"SCI_GETTEXTRANGE",0
	align	4
_523:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,50
_524:
	db	"SCI_HIDESELECTION",0
	align	4
_525:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,51
_526:
	db	"SCI_POINTXFROMPOSITION",0
	align	4
_527:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,52
_528:
	db	"SCI_POINTYFROMPOSITION",0
	align	4
_529:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,53
_530:
	db	"SCI_LINEFROMPOSITION",0
	align	4
_531:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,54
_532:
	db	"SCI_POSITIONFROMLINE",0
	align	4
_533:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,55
_534:
	db	"SCI_LINESCROLL",0
	align	4
_535:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,56
_536:
	db	"SCI_SCROLLCARET",0
	align	4
_537:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,54,57
_538:
	db	"SCI_REPLACESEL",0
	align	4
_539:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,48
_540:
	db	"SCI_SETREADONLY",0
	align	4
_541:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,49
_542:
	db	"SCI_NULL",0
	align	4
_543:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,50
_544:
	db	"SCI_CANPASTE",0
	align	4
_545:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,51
_546:
	db	"SCI_CANUNDO",0
	align	4
_547:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,52
_548:
	db	"SCI_EMPTYUNDOBUFFER",0
	align	4
_549:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,53
_550:
	db	"SCI_UNDO",0
	align	4
_551:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,54
_552:
	db	"SCI_CUT",0
	align	4
_553:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,55
_554:
	db	"SCI_COPY",0
	align	4
_555:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,56
_556:
	db	"SCI_PASTE",0
	align	4
_557:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,55,57
_558:
	db	"SCI_CLEAR",0
	align	4
_559:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,48
_560:
	db	"SCI_SETTEXT",0
	align	4
_561:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,49
_562:
	db	"SCI_GETTEXT",0
	align	4
_563:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,50
_564:
	db	"SCI_GETTEXTLENGTH",0
	align	4
_565:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,51
_566:
	db	"SCI_GETDIRECTFUNCTION",0
	align	4
_567:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,52
_568:
	db	"SCI_GETDIRECTPOINTER",0
	align	4
_569:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,53
_570:
	db	"SCI_SETOVERTYPE",0
	align	4
_571:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,54
_572:
	db	"SCI_GETOVERTYPE",0
	align	4
_573:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,55
_574:
	db	"SCI_SETCARETWIDTH",0
	align	4
_575:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,56
_576:
	db	"SCI_GETCARETWIDTH",0
	align	4
_577:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,56,57
_578:
	db	"SCI_SETTARGETSTART",0
	align	4
_579:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,48
_580:
	db	"SCI_GETTARGETSTART",0
	align	4
_581:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,49
_582:
	db	"SCI_SETTARGETEND",0
	align	4
_583:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,50
_584:
	db	"SCI_GETTARGETEND",0
	align	4
_585:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,51
_586:
	db	"SCI_REPLACETARGET",0
	align	4
_587:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,52
_588:
	db	"SCI_REPLACETARGETRE",0
	align	4
_589:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,53
_590:
	db	"SCI_SEARCHINTARGET",0
	align	4
_591:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,55
_592:
	db	"SCI_SETSEARCHFLAGS",0
	align	4
_593:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,56
_594:
	db	"SCI_GETSEARCHFLAGS",0
	align	4
_595:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,49,57,57
_596:
	db	"SCI_CALLTIPSHOW",0
	align	4
_597:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,48
_598:
	db	"SCI_CALLTIPCANCEL",0
	align	4
_599:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,49
_600:
	db	"SCI_CALLTIPACTIVE",0
	align	4
_601:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,50
_602:
	db	"SCI_CALLTIPPOSSTART",0
	align	4
_603:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,51
_604:
	db	"SCI_CALLTIPSETHLT",0
	align	4
_605:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,52
_606:
	db	"SCI_CALLTIPSETBACK",0
	align	4
_607:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,53
_608:
	db	"SCI_CALLTIPSETFORE",0
	align	4
_609:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,54
_610:
	db	"SCI_CALLTIPSETFOREHLT",0
	align	4
_611:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,48,55
_612:
	db	"SCI_CALLTIPUSESTYLE",0
	align	4
_613:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,49,50
_614:
	db	"SCI_VISIBLEFROMDOCLINE",0
	align	4
_615:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,48
_616:
	db	"SCI_DOCLINEFROMVISIBLE",0
	align	4
_617:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,49
_618:
	db	"SCI_WRAPCOUNT",0
	align	4
_619:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,51,53
_620:
	db	"SC_FOLDLEVELBASE",0
	align	4
_621:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	49,48,50,52
_622:
	db	"SC_FOLDLEVELWHITEFLAG",0
	align	4
_623:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,57,54
_624:
	db	"SC_FOLDLEVELHEADERFLAG",0
	align	4
_625:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	56,49,57,50
_626:
	db	"SC_FOLDLEVELBOXHEADERFLAG",0
	align	4
_627:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	49,54,51,56,52
_628:
	db	"SC_FOLDLEVELBOXFOOTERFLAG",0
	align	4
_629:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	51,50,55,54,56
_630:
	db	"SC_FOLDLEVELCONTRACTED",0
	align	4
_631:
	dd	bbStringClass
	dd	2147483647
	dd	5
	dw	54,53,53,51,54
_632:
	db	"SC_FOLDLEVELUNINDENT",0
	align	4
_633:
	dd	bbStringClass
	dd	2147483647
	dd	6
	dw	49,51,49,48,55,50
_634:
	db	"SC_FOLDLEVELNUMBERMASK",0
	align	4
_635:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,57,53
_636:
	db	"SCI_SETFOLDLEVEL",0
	align	4
_637:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,50
_638:
	db	"SCI_GETFOLDLEVEL",0
	align	4
_639:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,51
_640:
	db	"SCI_GETLASTCHILD",0
	align	4
_641:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,52
_642:
	db	"SCI_GETFOLDPARENT",0
	align	4
_643:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,53
_644:
	db	"SCI_SHOWLINES",0
	align	4
_645:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,54
_646:
	db	"SCI_HIDELINES",0
	align	4
_647:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,55
_648:
	db	"SCI_GETLINEVISIBLE",0
	align	4
_649:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,56
_650:
	db	"SCI_SETFOLDEXPANDED",0
	align	4
_651:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,50,57
_652:
	db	"SCI_GETFOLDEXPANDED",0
	align	4
_653:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,51,48
_654:
	db	"SCI_TOGGLEFOLD",0
	align	4
_655:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,51,49
_656:
	db	"SCI_ENSUREVISIBLE",0
	align	4
_657:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,51,50
_658:
	db	"SC_FOLDFLAG_LINEBEFORE_EXPANDED",0
_659:
	db	"SC_FOLDFLAG_LINEBEFORE_CONTRACTED",0
_660:
	db	"SC_FOLDFLAG_LINEAFTER_EXPANDED",0
_661:
	db	"SC_FOLDFLAG_LINEAFTER_CONTRACTED",0
_662:
	db	"SC_FOLDFLAG_LEVELNUMBERS",0
_663:
	db	"SC_FOLDFLAG_BOX",0
_664:
	db	"SCI_SETFOLDFLAGS",0
	align	4
_665:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,51,51
_666:
	db	"SCI_ENSUREVISIBLEENFORCEPOLICY",0
	align	4
_667:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,51,52
_668:
	db	"SCI_SETTABINDENTS",0
	align	4
_669:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,48
_670:
	db	"SCI_GETTABINDENTS",0
	align	4
_671:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,49
_672:
	db	"SCI_SETBACKSPACEUNINDENTS",0
	align	4
_673:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,50
_674:
	db	"SCI_GETBACKSPACEUNINDENTS",0
	align	4
_675:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,51
_676:
	db	"SC_TIME_FOREVER",0
	align	4
_677:
	dd	bbStringClass
	dd	2147483647
	dd	8
	dw	49,48,48,48,48,48,48,48
_678:
	db	"SCI_SETMOUSEDWELLTIME",0
	align	4
_679:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,52
_680:
	db	"SCI_GETMOUSEDWELLTIME",0
	align	4
_681:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,53
_682:
	db	"SCI_WORDSTARTPOSITION",0
	align	4
_683:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,54
_684:
	db	"SCI_WORDENDPOSITION",0
	align	4
_685:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,55
_686:
	db	"SC_WRAP_NONE",0
_687:
	db	"SC_WRAP_WORD",0
_688:
	db	"SC_WRAP_CHAR",0
_689:
	db	"SCI_SETWRAPMODE",0
	align	4
_690:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,56
_691:
	db	"SCI_GETWRAPMODE",0
	align	4
_692:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,54,57
_693:
	db	"SC_WRAPVISUALFLAG_NONE",0
_694:
	db	"SC_WRAPVISUALFLAG_END",0
_695:
	db	"SC_WRAPVISUALFLAG_START",0
_696:
	db	"SCI_SETWRAPVISUALFLAGS",0
	align	4
_697:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,48
_698:
	db	"SCI_GETWRAPVISUALFLAGS",0
	align	4
_699:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,49
_700:
	db	"SC_WRAPVISUALFLAGLOC_DEFAULT",0
_701:
	db	"SC_WRAPVISUALFLAGLOC_END_BY_TEXT",0
_702:
	db	"SC_WRAPVISUALFLAGLOC_START_BY_TEXT",0
_703:
	db	"SCI_SETWRAPVISUALFLAGSLOCATION",0
	align	4
_704:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,50
_705:
	db	"SCI_GETWRAPVISUALFLAGSLOCATION",0
	align	4
_706:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,51
_707:
	db	"SCI_SETWRAPSTARTINDENT",0
	align	4
_708:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,52
_709:
	db	"SCI_GETWRAPSTARTINDENT",0
	align	4
_710:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,53
_711:
	db	"SC_CACHE_NONE",0
_712:
	db	"SC_CACHE_CARET",0
_713:
	db	"SC_CACHE_PAGE",0
_714:
	db	"SC_CACHE_DOCUMENT",0
_715:
	db	"SCI_SETLAYOUTCACHE",0
	align	4
_716:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,50
_717:
	db	"SCI_GETLAYOUTCACHE",0
	align	4
_718:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,51
_719:
	db	"SCI_SETSCROLLWIDTH",0
	align	4
_720:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,52
_721:
	db	"SCI_GETSCROLLWIDTH",0
	align	4
_722:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,53
_723:
	db	"SCI_TEXTWIDTH",0
	align	4
_724:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,54
_725:
	db	"SCI_SETENDATLASTLINE",0
	align	4
_726:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,55
_727:
	db	"SCI_GETENDATLASTLINE",0
	align	4
_728:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,56
_729:
	db	"SCI_TEXTHEIGHT",0
	align	4
_730:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,55,57
_731:
	db	"SCI_SETVSCROLLBAR",0
	align	4
_732:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,48
_733:
	db	"SCI_GETVSCROLLBAR",0
	align	4
_734:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,49
_735:
	db	"SCI_APPENDTEXT",0
	align	4
_736:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,50
_737:
	db	"SCI_GETTWOPHASEDRAW",0
	align	4
_738:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,51
_739:
	db	"SCI_SETTWOPHASEDRAW",0
	align	4
_740:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,52
_741:
	db	"SCI_TARGETFROMSELECTION",0
	align	4
_742:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,55
_743:
	db	"SCI_LINESJOIN",0
	align	4
_744:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,56
_745:
	db	"SCI_LINESSPLIT",0
	align	4
_746:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,56,57
_747:
	db	"SCI_SETFOLDMARGINCOLOUR",0
	align	4
_748:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,57,48
_749:
	db	"SCI_SETFOLDMARGINHICOLOUR",0
	align	4
_750:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,50,57,49
_751:
	db	"SCI_LINEDOWN",0
	align	4
_752:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,48
_753:
	db	"SCI_LINEDOWNEXTEND",0
	align	4
_754:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,49
_755:
	db	"SCI_LINEUP",0
	align	4
_756:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,50
_757:
	db	"SCI_LINEUPEXTEND",0
	align	4
_758:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,51
_759:
	db	"SCI_CHARLEFT",0
	align	4
_760:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,52
_761:
	db	"SCI_CHARLEFTEXTEND",0
	align	4
_762:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,53
_763:
	db	"SCI_CHARRIGHT",0
	align	4
_764:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,54
_765:
	db	"SCI_CHARRIGHTEXTEND",0
	align	4
_766:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,55
_767:
	db	"SCI_WORDLEFT",0
	align	4
_768:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,56
_769:
	db	"SCI_WORDLEFTEXTEND",0
	align	4
_770:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,48,57
_771:
	db	"SCI_WORDRIGHT",0
	align	4
_772:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,48
_773:
	db	"SCI_WORDRIGHTEXTEND",0
	align	4
_774:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,49
_775:
	db	"SCI_HOME",0
	align	4
_776:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,50
_777:
	db	"SCI_HOMEEXTEND",0
	align	4
_778:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,51
_779:
	db	"SCI_LINEEND",0
	align	4
_780:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,52
_781:
	db	"SCI_LINEENDEXTEND",0
	align	4
_782:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,53
_783:
	db	"SCI_DOCUMENTSTART",0
	align	4
_784:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,54
_785:
	db	"SCI_DOCUMENTSTARTEXTEND",0
	align	4
_786:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,55
_787:
	db	"SCI_DOCUMENTEND",0
	align	4
_788:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,56
_789:
	db	"SCI_DOCUMENTENDEXTEND",0
	align	4
_790:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,49,57
_791:
	db	"SCI_PAGEUP",0
	align	4
_792:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,48
_793:
	db	"SCI_PAGEUPEXTEND",0
	align	4
_794:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,49
_795:
	db	"SCI_PAGEDOWN",0
	align	4
_796:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,50
_797:
	db	"SCI_PAGEDOWNEXTEND",0
	align	4
_798:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,51
_799:
	db	"SCI_EDITTOGGLEOVERTYPE",0
	align	4
_800:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,52
_801:
	db	"SCI_CANCEL",0
	align	4
_802:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,53
_803:
	db	"SCI_DELETEBACK",0
	align	4
_804:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,54
_805:
	db	"SCI_TAB",0
	align	4
_806:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,55
_807:
	db	"SCI_BACKTAB",0
	align	4
_808:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,56
_809:
	db	"SCI_NEWLINE",0
	align	4
_810:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,50,57
_811:
	db	"SCI_FORMFEED",0
	align	4
_812:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,48
_813:
	db	"SCI_VCHOME",0
	align	4
_814:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,49
_815:
	db	"SCI_VCHOMEEXTEND",0
	align	4
_816:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,50
_817:
	db	"SCI_ZOOMIN",0
	align	4
_818:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,51
_819:
	db	"SCI_ZOOMOUT",0
	align	4
_820:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,52
_821:
	db	"SCI_DELWORDLEFT",0
	align	4
_822:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,53
_823:
	db	"SCI_DELWORDRIGHT",0
	align	4
_824:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,54
_825:
	db	"SCI_LINECUT",0
	align	4
_826:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,55
_827:
	db	"SCI_LINEDELETE",0
	align	4
_828:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,56
_829:
	db	"SCI_LINETRANSPOSE",0
	align	4
_830:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,51,57
_831:
	db	"SCI_LINEDUPLICATE",0
	align	4
_832:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,52
_833:
	db	"SCI_LOWERCASE",0
	align	4
_834:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,48
_835:
	db	"SCI_UPPERCASE",0
	align	4
_836:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,49
_837:
	db	"SCI_LINESCROLLDOWN",0
	align	4
_838:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,50
_839:
	db	"SCI_LINESCROLLUP",0
	align	4
_840:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,51
_841:
	db	"SCI_DELETEBACKNOTLINE",0
	align	4
_842:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,52
_843:
	db	"SCI_HOMEDISPLAY",0
	align	4
_844:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,53
_845:
	db	"SCI_HOMEDISPLAYEXTEND",0
	align	4
_846:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,54
_847:
	db	"SCI_LINEENDDISPLAY",0
	align	4
_848:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,55
_849:
	db	"SCI_LINEENDDISPLAYEXTEND",0
	align	4
_850:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,56
_851:
	db	"SCI_HOMEWRAP",0
	align	4
_852:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,52,57
_853:
	db	"SCI_HOMEWRAPEXTEND",0
	align	4
_854:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,48
_855:
	db	"SCI_LINEENDWRAP",0
	align	4
_856:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,49
_857:
	db	"SCI_LINEENDWRAPEXTEND",0
	align	4
_858:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,50
_859:
	db	"SCI_VCHOMEWRAP",0
	align	4
_860:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,51
_861:
	db	"SCI_VCHOMEWRAPEXTEND",0
	align	4
_862:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,52
_863:
	db	"SCI_LINECOPY",0
	align	4
_864:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,53
_865:
	db	"SCI_MOVECARETINSIDEVIEW",0
	align	4
_866:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,49
_867:
	db	"SCI_LINELENGTH",0
	align	4
_868:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,48
_869:
	db	"SCI_BRACEHIGHLIGHT",0
	align	4
_870:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,49
_871:
	db	"SCI_BRACEBADLIGHT",0
	align	4
_872:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,50
_873:
	db	"SCI_BRACEMATCH",0
	align	4
_874:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,51
_875:
	db	"SCI_GETVIEWEOL",0
	align	4
_876:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,53
_877:
	db	"SCI_SETVIEWEOL",0
	align	4
_878:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,54
_879:
	db	"SCI_GETDOCPOINTER",0
	align	4
_880:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,55
_881:
	db	"SCI_SETDOCPOINTER",0
	align	4
_882:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,56
_883:
	db	"SCI_SETMODEVENTMASK",0
	align	4
_884:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,53,57
_885:
	db	"EDGE_NONE",0
_886:
	db	"EDGE_LINE",0
_887:
	db	"EDGE_BACKGROUND",0
_888:
	db	"SCI_GETEDGECOLUMN",0
	align	4
_889:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,48
_890:
	db	"SCI_SETEDGECOLUMN",0
	align	4
_891:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,49
_892:
	db	"SCI_GETEDGEMODE",0
	align	4
_893:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,50
_894:
	db	"SCI_SETEDGEMODE",0
	align	4
_895:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,51
_896:
	db	"SCI_GETEDGECOLOUR",0
	align	4
_897:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,52
_898:
	db	"SCI_SETEDGECOLOUR",0
	align	4
_899:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,53
_900:
	db	"SCI_SEARCHANCHOR",0
	align	4
_901:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,54
_902:
	db	"SCI_SEARCHNEXT",0
	align	4
_903:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,55
_904:
	db	"SCI_SEARCHPREV",0
	align	4
_905:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,56
_906:
	db	"SCI_LINESONSCREEN",0
	align	4
_907:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,48
_908:
	db	"SCI_USEPOPUP",0
	align	4
_909:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,49
_910:
	db	"SCI_SELECTIONISRECTANGLE",0
	align	4
_911:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,50
_912:
	db	"SCI_SETZOOM",0
	align	4
_913:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,51
_914:
	db	"SCI_GETZOOM",0
	align	4
_915:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,52
_916:
	db	"SCI_CREATEDOCUMENT",0
	align	4
_917:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,53
_918:
	db	"SCI_ADDREFDOCUMENT",0
	align	4
_919:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,54
_920:
	db	"SCI_RELEASEDOCUMENT",0
	align	4
_921:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,55
_922:
	db	"SCI_GETMODEVENTMASK",0
	align	4
_923:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,55,56
_924:
	db	"SCI_SETFOCUS",0
	align	4
_925:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,48
_926:
	db	"SCI_GETFOCUS",0
	align	4
_927:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,49
_928:
	db	"SCI_SETSTATUS",0
	align	4
_929:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,50
_930:
	db	"SCI_GETSTATUS",0
	align	4
_931:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,51
_932:
	db	"SCI_SETMOUSEDOWNCAPTURES",0
	align	4
_933:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,52
_934:
	db	"SCI_GETMOUSEDOWNCAPTURES",0
	align	4
_935:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,53
_936:
	db	"SC_CURSORNORMAL",0
_937:
	db	"SC_CURSORWAIT",0
_938:
	db	"SCI_SETCURSOR",0
	align	4
_939:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,54
_940:
	db	"SCI_GETCURSOR",0
	align	4
_941:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,55
_942:
	db	"SCI_SETCONTROLCHARSYMBOL",0
	align	4
_943:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,56
_944:
	db	"SCI_GETCONTROLCHARSYMBOL",0
	align	4
_945:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,56,57
_946:
	db	"SCI_WORDPARTLEFT",0
	align	4
_947:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,48
_948:
	db	"SCI_WORDPARTLEFTEXTEND",0
	align	4
_949:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,49
_950:
	db	"SCI_WORDPARTRIGHT",0
	align	4
_951:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,50
_952:
	db	"SCI_WORDPARTRIGHTEXTEND",0
	align	4
_953:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,51
_954:
	db	"VISIBLE_SLOP",0
_955:
	db	"VISIBLE_STRICT",0
_956:
	db	"SCI_SETVISIBLEPOLICY",0
	align	4
_957:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,52
_958:
	db	"SCI_DELLINELEFT",0
	align	4
_959:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,53
_960:
	db	"SCI_DELLINERIGHT",0
	align	4
_961:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,54
_962:
	db	"SCI_SETXOFFSET",0
	align	4
_963:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,55
_964:
	db	"SCI_GETXOFFSET",0
	align	4
_965:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,56
_966:
	db	"SCI_CHOOSECARETX",0
	align	4
_967:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,57,57
_968:
	db	"SCI_GRABFOCUS",0
	align	4
_969:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,48
_970:
	db	"CARET_SLOP",0
_971:
	db	"CARET_STRICT",0
_972:
	db	"CARET_JUMPS",0
_973:
	db	"CARET_EVEN",0
_974:
	db	"SCI_SETXCARETPOLICY",0
	align	4
_975:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,50
_976:
	db	"SCI_SETYCARETPOLICY",0
	align	4
_977:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,51
_978:
	db	"SCI_SETPRINTWRAPMODE",0
	align	4
_979:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,54
_980:
	db	"SCI_GETPRINTWRAPMODE",0
	align	4
_981:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,48,55
_982:
	db	"SCI_SETHOTSPOTACTIVEFORE",0
	align	4
_983:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,48
_984:
	db	"SCI_SETHOTSPOTACTIVEBACK",0
	align	4
_985:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,49
_986:
	db	"SCI_SETHOTSPOTACTIVEUNDERLINE",0
	align	4
_987:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,50
_988:
	db	"SCI_SETHOTSPOTSINGLELINE",0
	align	4
_989:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,49
_990:
	db	"SCI_PARADOWN",0
	align	4
_991:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,51
_992:
	db	"SCI_PARADOWNEXTEND",0
	align	4
_993:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,52
_994:
	db	"SCI_PARAUP",0
	align	4
_995:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,53
_996:
	db	"SCI_PARAUPEXTEND",0
	align	4
_997:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,54
_998:
	db	"SCI_POSITIONBEFORE",0
	align	4
_999:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,55
_1000:
	db	"SCI_POSITIONAFTER",0
	align	4
_1001:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,56
_1002:
	db	"SCI_COPYRANGE",0
	align	4
_1003:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,49,57
_1004:
	db	"SCI_COPYTEXT",0
	align	4
_1005:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,48
_1006:
	db	"SC_SEL_STREAM",0
_1007:
	db	"SC_SEL_RECTANGLE",0
_1008:
	db	"SC_SEL_LINES",0
_1009:
	db	"SCI_SETSELECTIONMODE",0
	align	4
_1010:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,50
_1011:
	db	"SCI_GETSELECTIONMODE",0
	align	4
_1012:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,51
_1013:
	db	"SCI_GETLINESELSTARTPOSITION",0
	align	4
_1014:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,52
_1015:
	db	"SCI_GETLINESELENDPOSITION",0
	align	4
_1016:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,53
_1017:
	db	"SCI_LINEDOWNRECTEXTEND",0
	align	4
_1018:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,54
_1019:
	db	"SCI_LINEUPRECTEXTEND",0
	align	4
_1020:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,55
_1021:
	db	"SCI_CHARLEFTRECTEXTEND",0
	align	4
_1022:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,56
_1023:
	db	"SCI_CHARRIGHTRECTEXTEND",0
	align	4
_1024:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,50,57
_1025:
	db	"SCI_HOMERECTEXTEND",0
	align	4
_1026:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,48
_1027:
	db	"SCI_VCHOMERECTEXTEND",0
	align	4
_1028:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,49
_1029:
	db	"SCI_LINEENDRECTEXTEND",0
	align	4
_1030:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,50
_1031:
	db	"SCI_PAGEUPRECTEXTEND",0
	align	4
_1032:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,51
_1033:
	db	"SCI_PAGEDOWNRECTEXTEND",0
	align	4
_1034:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,52
_1035:
	db	"SCI_STUTTEREDPAGEUP",0
	align	4
_1036:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,53
_1037:
	db	"SCI_STUTTEREDPAGEUPEXTEND",0
	align	4
_1038:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,54
_1039:
	db	"SCI_STUTTEREDPAGEDOWN",0
	align	4
_1040:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,55
_1041:
	db	"SCI_STUTTEREDPAGEDOWNEXTEND",0
	align	4
_1042:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,56
_1043:
	db	"SCI_WORDLEFTEND",0
	align	4
_1044:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,51,57
_1045:
	db	"SCI_WORDLEFTENDEXTEND",0
	align	4
_1046:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,48
_1047:
	db	"SCI_WORDRIGHTEND",0
	align	4
_1048:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,49
_1049:
	db	"SCI_WORDRIGHTENDEXTEND",0
	align	4
_1050:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,50
_1051:
	db	"SCI_SETWHITESPACECHARS",0
	align	4
_1052:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,51
_1053:
	db	"SCI_SETCHARSDEFAULT",0
	align	4
_1054:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,52
_1055:
	db	"SCI_AUTOCGETCURRENT",0
	align	4
_1056:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,53
_1057:
	db	"SCI_ALLOCATE",0
	align	4
_1058:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,54
_1059:
	db	"SCI_TARGETASUTF8",0
	align	4
_1060:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,55
_1061:
	db	"SCI_SETLENGTHFORENCODE",0
	align	4
_1062:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,56
_1063:
	db	"SCI_ENCODEDFROMUTF8",0
	align	4
_1064:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,52,57
_1065:
	db	"SCI_FINDCOLUMN",0
	align	4
_1066:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,54
_1067:
	db	"SCI_GETCARETSTICKY",0
	align	4
_1068:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,55
_1069:
	db	"SCI_SETCARETSTICKY",0
	align	4
_1070:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,56
_1071:
	db	"SCI_TOGGLECARETSTICKY",0
	align	4
_1072:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,53,57
_1073:
	db	"SCI_SETPASTECONVERTENDINGS",0
	align	4
_1074:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,55
_1075:
	db	"SCI_GETPASTECONVERTENDINGS",0
	align	4
_1076:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,56
_1077:
	db	"SCI_SELECTIONDUPLICATE",0
	align	4
_1078:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,54,57
_1079:
	db	"SC_ALPHA_TRANSPARENT",0
_1080:
	db	"SC_ALPHA_OPAQUE",0
_1081:
	db	"SC_ALPHA_NOALPHA",0
	align	4
_1082:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	50,53,54
_1083:
	db	"SCI_SETCARETLINEBACKALPHA",0
	align	4
_1084:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,55,48
_1085:
	db	"SCI_GETCARETLINEBACKALPHA",0
	align	4
_1086:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,52,55,49
_1087:
	db	"SCI_STARTRECORD",0
	align	4
_1088:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	51,48,48,49
_1089:
	db	"SCI_STOPRECORD",0
	align	4
_1090:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	51,48,48,50
_1091:
	db	"SCI_SETLEXER",0
	align	4
_1092:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,49
_1093:
	db	"SCI_GETLEXER",0
	align	4
_1094:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,50
_1095:
	db	"SCI_COLOURISE",0
	align	4
_1096:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,51
_1097:
	db	"SCI_SETPROPERTY",0
	align	4
_1098:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,52
_1099:
	db	"KEYWORDSET_MAX",0
_1100:
	db	"SCI_SETKEYWORDS",0
	align	4
_1101:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,53
_1102:
	db	"SCI_SETLEXERLANGUAGE",0
	align	4
_1103:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,54
_1104:
	db	"SCI_LOADLEXERLIBRARY",0
	align	4
_1105:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,55
_1106:
	db	"SCI_GETPROPERTY",0
	align	4
_1107:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,56
_1108:
	db	"SCI_GETPROPERTYEXPANDED",0
	align	4
_1109:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,48,57
_1110:
	db	"SCI_GETPROPERTYINT",0
	align	4
_1111:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,49,48
_1112:
	db	"SCI_GETSTYLEBITSNEEDED",0
	align	4
_1113:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	52,48,49,49
_1114:
	db	"SC_MOD_INSERTTEXT",0
_1115:
	db	"SC_MOD_DELETETEXT",0
_1116:
	db	"SC_MOD_CHANGESTYLE",0
_1117:
	db	"SC_MOD_CHANGEFOLD",0
_1118:
	db	"SC_PERFORMED_USER",0
_1119:
	db	"SC_PERFORMED_UNDO",0
_1120:
	db	"SC_PERFORMED_REDO",0
_1121:
	db	"SC_MULTISTEPUNDOREDO",0
_1122:
	db	"SC_LASTSTEPINUNDOREDO",0
_1123:
	db	"SC_MOD_CHANGEMARKER",0
	align	4
_1124:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	53,49,50
_1125:
	db	"SC_MOD_BEFOREINSERT",0
_1126:
	db	"SC_MOD_BEFOREDELETE",0
_1127:
	db	"SC_MULTILINEUNDOREDO",0
_1128:
	db	"SC_MODEVENTMASKALL",0
	align	4
_1129:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	56,49,57,49
_1130:
	db	"SCEN_CHANGE",0
	align	4
_1131:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	55,54,56
_1132:
	db	"SCEN_SETFOCUS",0
_1133:
	db	"SCEN_KILLFOCUS",0
_1134:
	db	"SCK_DOWN",0
	align	4
_1135:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,48
_1136:
	db	"SCK_UP",0
	align	4
_1137:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,49
_1138:
	db	"SCK_LEFT",0
	align	4
_1139:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,50
_1140:
	db	"SCK_RIGHT",0
	align	4
_1141:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,51
_1142:
	db	"SCK_HOME",0
	align	4
_1143:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,52
_1144:
	db	"SCK_END",0
	align	4
_1145:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,53
_1146:
	db	"SCK_PRIOR",0
	align	4
_1147:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,54
_1148:
	db	"SCK_NEXT",0
	align	4
_1149:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,55
_1150:
	db	"SCK_DELETE",0
	align	4
_1151:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,56
_1152:
	db	"SCK_INSERT",0
	align	4
_1153:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,48,57
_1154:
	db	"SCK_ESCAPE",0
_1155:
	db	"SCK_BACK",0
_1156:
	db	"SCK_TAB",0
_1157:
	db	"SCK_RETURN",0
_1158:
	db	"SCK_ADD",0
	align	4
_1159:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,49,48
_1160:
	db	"SCK_SUBTRACT",0
	align	4
_1161:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,49,49
_1162:
	db	"SCK_DIVIDE",0
	align	4
_1163:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	51,49,50
_1164:
	db	"SCMOD_NORM",0
_1165:
	db	"SCMOD_SHIFT",0
_1166:
	db	"SCMOD_CTRL",0
_1167:
	db	"SCMOD_ALT",0
_1168:
	db	"SCN_STYLENEEDED",0
_1169:
	db	"SCN_CHARADDED",0
_1170:
	db	"SCN_SAVEPOINTREACHED",0
_1171:
	db	"SCN_SAVEPOINTLEFT",0
_1172:
	db	"SCN_MODIFYATTEMPTRO",0
_1173:
	db	"SCN_KEY",0
_1174:
	db	"SCN_DOUBLECLICK",0
_1175:
	db	"SCN_UPDATEUI",0
_1176:
	db	"SCN_MODIFIED",0
_1177:
	db	"SCN_MACRORECORD",0
_1178:
	db	"SCN_MARGINCLICK",0
_1179:
	db	"SCN_NEEDSHOWN",0
_1180:
	db	"SCN_PAINTED",0
_1181:
	db	"SCN_USERLISTSELECTION",0
_1182:
	db	"SCN_URIDROPPED",0
_1183:
	db	"SCN_DWELLSTART",0
_1184:
	db	"SCN_DWELLEND",0
_1185:
	db	"SCN_ZOOM",0
_1186:
	db	"SCN_HOTSPOTCLICK",0
_1187:
	db	"SCN_HOTSPOTDOUBLECLICK",0
_1188:
	db	"SCN_CALLTIPCLICK",0
_1189:
	db	"SCN_AUTOCSELECTION",0
_1190:
	db	"SCI_SETCARETPOLICY",0
	align	4
_1191:
	dd	bbStringClass
	dd	2147483647
	dd	4
	dw	50,51,54,57
_1192:
	db	"CARET_CENTER",0
_1193:
	db	"CARET_XEVEN",0
_1194:
	db	"CARET_XJUMPS",0
_1195:
	db	"SCN_POSCHANGED",0
_1196:
	db	"SCN_CHECKBRACE",0
_1197:
	db	"SCLEX_CONTAINER",0
_1198:
	db	"SCLEX_NULL",0
_1199:
	db	"SCLEX_PYTHON",0
_1200:
	db	"SCLEX_CPP",0
_1201:
	db	"SCLEX_HTML",0
_1202:
	db	"SCLEX_XML",0
_1203:
	db	"SCLEX_PERL",0
_1204:
	db	"SCLEX_SQL",0
_1205:
	db	"SCLEX_VB",0
_1206:
	db	"SCLEX_PROPERTIES",0
_1207:
	db	"SCLEX_ERRORLIST",0
_1208:
	db	"SCLEX_MAKEFILE",0
_1209:
	db	"SCLEX_BATCH",0
_1210:
	db	"SCLEX_XCODE",0
_1211:
	db	"SCLEX_LATEX",0
_1212:
	db	"SCLEX_LUA",0
_1213:
	db	"SCLEX_DIFF",0
_1214:
	db	"SCLEX_CONF",0
_1215:
	db	"SCLEX_PASCAL",0
_1216:
	db	"SCLEX_AVE",0
_1217:
	db	"SCLEX_ADA",0
_1218:
	db	"SCLEX_LISP",0
_1219:
	db	"SCLEX_RUBY",0
_1220:
	db	"SCLEX_EIFFEL",0
_1221:
	db	"SCLEX_EIFFELKW",0
_1222:
	db	"SCLEX_TCL",0
_1223:
	db	"SCLEX_NNCRONTAB",0
_1224:
	db	"SCLEX_BULLANT",0
_1225:
	db	"SCLEX_VBSCRIPT",0
_1226:
	db	"SCLEX_BAAN",0
_1227:
	db	"SCLEX_MATLAB",0
_1228:
	db	"SCLEX_SCRIPTOL",0
_1229:
	db	"SCLEX_ASM",0
_1230:
	db	"SCLEX_CPPNOCASE",0
_1231:
	db	"SCLEX_FORTRAN",0
_1232:
	db	"SCLEX_F77",0
_1233:
	db	"SCLEX_CSS",0
_1234:
	db	"SCLEX_POV",0
_1235:
	db	"SCLEX_LOUT",0
	align	4
_1236:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,48
_1237:
	db	"SCLEX_ESCRIPT",0
	align	4
_1238:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,49
_1239:
	db	"SCLEX_PS",0
	align	4
_1240:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,50
_1241:
	db	"SCLEX_NSIS",0
	align	4
_1242:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,51
_1243:
	db	"SCLEX_MMIXAL",0
	align	4
_1244:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,52
_1245:
	db	"SCLEX_CLW",0
	align	4
_1246:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,53
_1247:
	db	"SCLEX_CLWNOCASE",0
	align	4
_1248:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,54
_1249:
	db	"SCLEX_LOT",0
	align	4
_1250:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,55
_1251:
	db	"SCLEX_YAML",0
	align	4
_1252:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,56
_1253:
	db	"SCLEX_TEX",0
	align	4
_1254:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	52,57
_1255:
	db	"SCLEX_METAPOST",0
	align	4
_1256:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,48
_1257:
	db	"SCLEX_POWERBASIC",0
	align	4
_1258:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,49
_1259:
	db	"SCLEX_FORTH",0
	align	4
_1260:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,50
_1261:
	db	"SCLEX_ERLANG",0
	align	4
_1262:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,51
_1263:
	db	"SCLEX_OCTAVE",0
	align	4
_1264:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,52
_1265:
	db	"SCLEX_MSSQL",0
	align	4
_1266:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,53
_1267:
	db	"SCLEX_VERILOG",0
	align	4
_1268:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,54
_1269:
	db	"SCLEX_KIX",0
	align	4
_1270:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,55
_1271:
	db	"SCLEX_GUI4CLI",0
	align	4
_1272:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,56
_1273:
	db	"SCLEX_SPECMAN",0
	align	4
_1274:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	53,57
_1275:
	db	"SCLEX_AU3",0
	align	4
_1276:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,48
_1277:
	db	"SCLEX_APDL",0
	align	4
_1278:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,49
_1279:
	db	"SCLEX_BASH",0
	align	4
_1280:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,50
_1281:
	db	"SCLEX_ASN1",0
	align	4
_1282:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,51
_1283:
	db	"SCLEX_VHDL",0
_1284:
	db	"SCLEX_CAML",0
	align	4
_1285:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,53
_1286:
	db	"SCLEX_BLITZBASIC",0
	align	4
_1287:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,54
_1288:
	db	"SCLEX_PUREBASIC",0
	align	4
_1289:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,55
_1290:
	db	"SCLEX_HASKELL",0
	align	4
_1291:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,56
_1292:
	db	"SCLEX_PHPSCRIPT",0
	align	4
_1293:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	54,57
_1294:
	db	"SCLEX_TADS3",0
	align	4
_1295:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,48
_1296:
	db	"SCLEX_REBOL",0
	align	4
_1297:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,49
_1298:
	db	"SCLEX_SMALLTALK",0
	align	4
_1299:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,50
_1300:
	db	"SCLEX_FLAGSHIP",0
	align	4
_1301:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,51
_1302:
	db	"SCLEX_CSOUND",0
	align	4
_1303:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,52
_1304:
	db	"SCLEX_FREEBASIC",0
	align	4
_1305:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,53
_1306:
	db	"SCLEX_INNOSETUP",0
	align	4
_1307:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,54
_1308:
	db	"SCLEX_OPAL",0
_1309:
	db	"SCLEX_BLITZMAX",0
	align	4
_1310:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	55,56
_1311:
	db	"SCLEX_AUTOMATIC",0
_1312:
	db	"SCE_P_DEFAULT",0
_1313:
	db	"SCE_P_COMMENTLINE",0
_1314:
	db	"SCE_P_NUMBER",0
_1315:
	db	"SCE_P_STRING",0
_1316:
	db	"SCE_P_CHARACTER",0
_1317:
	db	"SCE_P_WORD",0
_1318:
	db	"SCE_P_TRIPLE",0
_1319:
	db	"SCE_P_TRIPLEDOUBLE",0
_1320:
	db	"SCE_P_CLASSNAME",0
_1321:
	db	"SCE_P_DEFNAME",0
_1322:
	db	"SCE_P_OPERATOR",0
_1323:
	db	"SCE_P_IDENTIFIER",0
_1324:
	db	"SCE_P_COMMENTBLOCK",0
_1325:
	db	"SCE_P_STRINGEOL",0
_1326:
	db	"SCE_P_WORD2",0
_1327:
	db	"SCE_P_DECORATOR",0
_1328:
	db	"SCE_C_DEFAULT",0
_1329:
	db	"SCE_C_COMMENT",0
_1330:
	db	"SCE_C_COMMENTLINE",0
_1331:
	db	"SCE_C_COMMENTDOC",0
_1332:
	db	"SCE_C_NUMBER",0
_1333:
	db	"SCE_C_WORD",0
_1334:
	db	"SCE_C_STRING",0
_1335:
	db	"SCE_C_CHARACTER",0
_1336:
	db	"SCE_C_UUID",0
_1337:
	db	"SCE_C_PREPROCESSOR",0
_1338:
	db	"SCE_C_OPERATOR",0
_1339:
	db	"SCE_C_IDENTIFIER",0
_1340:
	db	"SCE_C_STRINGEOL",0
_1341:
	db	"SCE_C_VERBATIM",0
_1342:
	db	"SCE_C_REGEX",0
_1343:
	db	"SCE_C_COMMENTLINEDOC",0
_1344:
	db	"SCE_C_WORD2",0
_1345:
	db	"SCE_C_COMMENTDOCKEYWORD",0
_1346:
	db	"SCE_C_COMMENTDOCKEYWORDERROR",0
_1347:
	db	"SCE_C_GLOBALCLASS",0
_1348:
	db	"SCE_TCL_DEFAULT",0
_1349:
	db	"SCE_TCL_COMMENT",0
_1350:
	db	"SCE_TCL_COMMENTLINE",0
_1351:
	db	"SCE_TCL_NUMBER",0
_1352:
	db	"SCE_TCL_WORD_IN_QUOTE",0
_1353:
	db	"SCE_TCL_IN_QUOTE",0
_1354:
	db	"SCE_TCL_OPERATOR",0
_1355:
	db	"SCE_TCL_IDENTIFIER",0
_1356:
	db	"SCE_TCL_SUBSTITUTION",0
_1357:
	db	"SCE_TCL_SUB_BRACE",0
_1358:
	db	"SCE_TCL_MODIFIER",0
_1359:
	db	"SCE_TCL_EXPAND",0
_1360:
	db	"SCE_TCL_WORD",0
_1361:
	db	"SCE_TCL_WORD2",0
_1362:
	db	"SCE_TCL_WORD3",0
_1363:
	db	"SCE_TCL_WORD4",0
_1364:
	db	"SCE_TCL_WORD5",0
_1365:
	db	"SCE_TCL_WORD6",0
_1366:
	db	"SCE_TCL_WORD7",0
_1367:
	db	"SCE_TCL_WORD8",0
_1368:
	db	"SCE_H_DEFAULT",0
_1369:
	db	"SCE_H_TAG",0
_1370:
	db	"SCE_H_TAGUNKNOWN",0
_1371:
	db	"SCE_H_ATTRIBUTE",0
_1372:
	db	"SCE_H_ATTRIBUTEUNKNOWN",0
_1373:
	db	"SCE_H_NUMBER",0
_1374:
	db	"SCE_H_DOUBLESTRING",0
_1375:
	db	"SCE_H_SINGLESTRING",0
_1376:
	db	"SCE_H_OTHER",0
_1377:
	db	"SCE_H_COMMENT",0
_1378:
	db	"SCE_H_ENTITY",0
_1379:
	db	"SCE_H_TAGEND",0
_1380:
	db	"SCE_H_XMLSTART",0
_1381:
	db	"SCE_H_XMLEND",0
_1382:
	db	"SCE_H_SCRIPT",0
_1383:
	db	"SCE_H_ASP",0
_1384:
	db	"SCE_H_ASPAT",0
_1385:
	db	"SCE_H_CDATA",0
_1386:
	db	"SCE_H_QUESTION",0
_1387:
	db	"SCE_H_VALUE",0
_1388:
	db	"SCE_H_XCCOMMENT",0
_1389:
	db	"SCE_H_SGML_DEFAULT",0
_1390:
	db	"SCE_H_SGML_COMMAND",0
_1391:
	db	"SCE_H_SGML_1ST_PARAM",0
_1392:
	db	"SCE_H_SGML_DOUBLESTRING",0
_1393:
	db	"SCE_H_SGML_SIMPLESTRING",0
_1394:
	db	"SCE_H_SGML_ERROR",0
_1395:
	db	"SCE_H_SGML_SPECIAL",0
_1396:
	db	"SCE_H_SGML_ENTITY",0
_1397:
	db	"SCE_H_SGML_COMMENT",0
_1398:
	db	"SCE_H_SGML_1ST_PARAM_COMMENT",0
_1399:
	db	"SCE_H_SGML_BLOCK_DEFAULT",0
_1400:
	db	"SCE_HJ_START",0
_1401:
	db	"SCE_HJ_DEFAULT",0
_1402:
	db	"SCE_HJ_COMMENT",0
_1403:
	db	"SCE_HJ_COMMENTLINE",0
_1404:
	db	"SCE_HJ_COMMENTDOC",0
_1405:
	db	"SCE_HJ_NUMBER",0
_1406:
	db	"SCE_HJ_WORD",0
_1407:
	db	"SCE_HJ_KEYWORD",0
_1408:
	db	"SCE_HJ_DOUBLESTRING",0
_1409:
	db	"SCE_HJ_SINGLESTRING",0
_1410:
	db	"SCE_HJ_SYMBOLS",0
_1411:
	db	"SCE_HJ_STRINGEOL",0
_1412:
	db	"SCE_HJ_REGEX",0
_1413:
	db	"SCE_HJA_START",0
_1414:
	db	"SCE_HJA_DEFAULT",0
_1415:
	db	"SCE_HJA_COMMENT",0
_1416:
	db	"SCE_HJA_COMMENTLINE",0
_1417:
	db	"SCE_HJA_COMMENTDOC",0
_1418:
	db	"SCE_HJA_NUMBER",0
_1419:
	db	"SCE_HJA_WORD",0
_1420:
	db	"SCE_HJA_KEYWORD",0
_1421:
	db	"SCE_HJA_DOUBLESTRING",0
_1422:
	db	"SCE_HJA_SINGLESTRING",0
_1423:
	db	"SCE_HJA_SYMBOLS",0
_1424:
	db	"SCE_HJA_STRINGEOL",0
_1425:
	db	"SCE_HJA_REGEX",0
_1426:
	db	"SCE_HB_START",0
_1427:
	db	"SCE_HB_DEFAULT",0
_1428:
	db	"SCE_HB_COMMENTLINE",0
_1429:
	db	"SCE_HB_NUMBER",0
_1430:
	db	"SCE_HB_WORD",0
_1431:
	db	"SCE_HB_STRING",0
_1432:
	db	"SCE_HB_IDENTIFIER",0
_1433:
	db	"SCE_HB_STRINGEOL",0
_1434:
	db	"SCE_HBA_START",0
	align	4
_1435:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,48
_1436:
	db	"SCE_HBA_DEFAULT",0
	align	4
_1437:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,49
_1438:
	db	"SCE_HBA_COMMENTLINE",0
	align	4
_1439:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,50
_1440:
	db	"SCE_HBA_NUMBER",0
	align	4
_1441:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,51
_1442:
	db	"SCE_HBA_WORD",0
	align	4
_1443:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,52
_1444:
	db	"SCE_HBA_STRING",0
	align	4
_1445:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,53
_1446:
	db	"SCE_HBA_IDENTIFIER",0
	align	4
_1447:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,54
_1448:
	db	"SCE_HBA_STRINGEOL",0
	align	4
_1449:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	56,55
_1450:
	db	"SCE_HP_START",0
	align	4
_1451:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,48
_1452:
	db	"SCE_HP_DEFAULT",0
	align	4
_1453:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,49
_1454:
	db	"SCE_HP_COMMENTLINE",0
	align	4
_1455:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,50
_1456:
	db	"SCE_HP_NUMBER",0
	align	4
_1457:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,51
_1458:
	db	"SCE_HP_STRING",0
	align	4
_1459:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,52
_1460:
	db	"SCE_HP_CHARACTER",0
	align	4
_1461:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,53
_1462:
	db	"SCE_HP_WORD",0
	align	4
_1463:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,54
_1464:
	db	"SCE_HP_TRIPLE",0
	align	4
_1465:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,55
_1466:
	db	"SCE_HP_TRIPLEDOUBLE",0
	align	4
_1467:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,56
_1468:
	db	"SCE_HP_CLASSNAME",0
	align	4
_1469:
	dd	bbStringClass
	dd	2147483647
	dd	2
	dw	57,57
_1470:
	db	"SCE_HP_DEFNAME",0
	align	4
_1471:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,48
_1472:
	db	"SCE_HP_OPERATOR",0
	align	4
_1473:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,49
_1474:
	db	"SCE_HP_IDENTIFIER",0
	align	4
_1475:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,50
_1476:
	db	"SCE_HPHP_COMPLEX_VARIABLE",0
	align	4
_1477:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,52
_1478:
	db	"SCE_HPA_START",0
	align	4
_1479:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,53
_1480:
	db	"SCE_HPA_DEFAULT",0
	align	4
_1481:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,54
_1482:
	db	"SCE_HPA_COMMENTLINE",0
	align	4
_1483:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,55
_1484:
	db	"SCE_HPA_NUMBER",0
	align	4
_1485:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,56
_1486:
	db	"SCE_HPA_STRING",0
	align	4
_1487:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,48,57
_1488:
	db	"SCE_HPA_CHARACTER",0
	align	4
_1489:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,48
_1490:
	db	"SCE_HPA_WORD",0
	align	4
_1491:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,49
_1492:
	db	"SCE_HPA_TRIPLE",0
	align	4
_1493:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,50
_1494:
	db	"SCE_HPA_TRIPLEDOUBLE",0
	align	4
_1495:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,51
_1496:
	db	"SCE_HPA_CLASSNAME",0
	align	4
_1497:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,52
_1498:
	db	"SCE_HPA_DEFNAME",0
	align	4
_1499:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,53
_1500:
	db	"SCE_HPA_OPERATOR",0
	align	4
_1501:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,54
_1502:
	db	"SCE_HPA_IDENTIFIER",0
	align	4
_1503:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,55
_1504:
	db	"SCE_HPHP_DEFAULT",0
	align	4
_1505:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,56
_1506:
	db	"SCE_HPHP_HSTRING",0
	align	4
_1507:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,49,57
_1508:
	db	"SCE_HPHP_SIMPLESTRING",0
	align	4
_1509:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,48
_1510:
	db	"SCE_HPHP_WORD",0
	align	4
_1511:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,49
_1512:
	db	"SCE_HPHP_NUMBER",0
	align	4
_1513:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,50
_1514:
	db	"SCE_HPHP_VARIABLE",0
	align	4
_1515:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,51
_1516:
	db	"SCE_HPHP_COMMENT",0
	align	4
_1517:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,52
_1518:
	db	"SCE_HPHP_COMMENTLINE",0
	align	4
_1519:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,53
_1520:
	db	"SCE_HPHP_HSTRING_VARIABLE",0
	align	4
_1521:
	dd	bbStringClass
	dd	2147483647
	dd	3
	dw	49,50,54
_1522:
	db	"SCE_HPHP_OPERATOR",0
_1523:
	db	"SCE_PL_DEFAULT",0
_1524:
	db	"SCE_PL_ERROR",0
_1525:
	db	"SCE_PL_COMMENTLINE",0
_1526:
	db	"SCE_PL_POD",0
_1527:
	db	"SCE_PL_NUMBER",0
_1528:
	db	"SCE_PL_WORD",0
_1529:
	db	"SCE_PL_STRING",0
_1530:
	db	"SCE_PL_CHARACTER",0
_1531:
	db	"SCE_PL_PUNCTUATION",0
_1532:
	db	"SCE_PL_PREPROCESSOR",0
_1533:
	db	"SCE_PL_OPERATOR",0
_1534:
	db	"SCE_PL_IDENTIFIER",0
_1535:
	db	"SCE_PL_SCALAR",0
_1536:
	db	"SCE_PL_ARRAY",0
_1537:
	db	"SCE_PL_HASH",0
_1538:
	db	"SCE_PL_SYMBOLTABLE",0
_1539:
	db	"SCE_PL_VARIABLE_INDEXER",0
_1540:
	db	"SCE_PL_REGEX",0
_1541:
	db	"SCE_PL_REGSUBST",0
_1542:
	db	"SCE_PL_LONGQUOTE",0
_1543:
	db	"SCE_PL_BACKTICKS",0
_1544:
	db	"SCE_PL_DATASECTION",0
_1545:
	db	"SCE_PL_HERE_DELIM",0
_1546:
	db	"SCE_PL_HERE_Q",0
_1547:
	db	"SCE_PL_HERE_QQ",0
_1548:
	db	"SCE_PL_HERE_QX",0
_1549:
	db	"SCE_PL_STRING_Q",0
_1550:
	db	"SCE_PL_STRING_QQ",0
_1551:
	db	"SCE_PL_STRING_QX",0
_1552:
	db	"SCE_PL_STRING_QR",0
_1553:
	db	"SCE_PL_STRING_QW",0
_1554:
	db	"SCE_PL_POD_VERB",0
_1555:
	db	"SCE_RB_DEFAULT",0
_1556:
	db	"SCE_RB_ERROR",0
_1557:
	db	"SCE_RB_COMMENTLINE",0
_1558:
	db	"SCE_RB_POD",0
_1559:
	db	"SCE_RB_NUMBER",0
_1560:
	db	"SCE_RB_WORD",0
_1561:
	db	"SCE_RB_STRING",0
_1562:
	db	"SCE_RB_CHARACTER",0
_1563:
	db	"SCE_RB_CLASSNAME",0
_1564:
	db	"SCE_RB_DEFNAME",0
_1565:
	db	"SCE_RB_OPERATOR",0
_1566:
	db	"SCE_RB_IDENTIFIER",0
_1567:
	db	"SCE_RB_REGEX",0
_1568:
	db	"SCE_RB_GLOBAL",0
_1569:
	db	"SCE_RB_SYMBOL",0
_1570:
	db	"SCE_RB_MODULE_NAME",0
_1571:
	db	"SCE_RB_INSTANCE_VAR",0
_1572:
	db	"SCE_RB_CLASS_VAR",0
_1573:
	db	"SCE_RB_BACKTICKS",0
_1574:
	db	"SCE_RB_DATASECTION",0
_1575:
	db	"SCE_RB_HERE_DELIM",0
_1576:
	db	"SCE_RB_HERE_Q",0
_1577:
	db	"SCE_RB_HERE_QQ",0
_1578:
	db	"SCE_RB_HERE_QX",0
_1579:
	db	"SCE_RB_STRING_Q",0
_1580:
	db	"SCE_RB_STRING_QQ",0
_1581:
	db	"SCE_RB_STRING_QX",0
_1582:
	db	"SCE_RB_STRING_QR",0
_1583:
	db	"SCE_RB_STRING_QW",0
_1584:
	db	"SCE_RB_WORD_DEMOTED",0
_1585:
	db	"SCE_RB_STDIN",0
_1586:
	db	"SCE_RB_STDOUT",0
_1587:
	db	"SCE_RB_STDERR",0
_1588:
	db	"SCE_RB_UPPER_BOUND",0
_1589:
	db	"SCE_BM_DEFAULT",0
_1590:
	db	"SCE_BM_COMMENT",0
_1591:
	db	"SCE_BM_NUMBER",0
_1592:
	db	"SCE_BM_KEYWORD",0
_1593:
	db	"SCE_BM_STRING",0
_1594:
	db	"SCE_BM_MULTILINECOMMENT",0
_1595:
	db	"SCE_BM_IDENTIFIER",0
_1596:
	db	"SCE_BM_HEXNUMBER",0
_1597:
	db	"SCE_BM_OPERATOR",0
_1598:
	db	"SCE_BM_BINNUMBER",0
_1599:
	db	"SCE_BM_STRINGLITERAL",0
_1600:
	db	"SCE_B_DEFAULT",0
_1601:
	db	"SCE_B_COMMENT",0
_1602:
	db	"SCE_B_NUMBER",0
_1603:
	db	"SCE_B_KEYWORD",0
_1604:
	db	"SCE_B_STRING",0
_1605:
	db	"SCE_B_PREPROCESSOR",0
_1606:
	db	"SCE_B_OPERATOR",0
_1607:
	db	"SCE_B_IDENTIFIER",0
_1608:
	db	"SCE_B_DATE",0
_1609:
	db	"SCE_B_STRINGEOL",0
_1610:
	db	"SCE_B_KEYWORD2",0
_1611:
	db	"SCE_B_KEYWORD3",0
_1612:
	db	"SCE_B_KEYWORD4",0
_1613:
	db	"SCE_B_CONSTANT",0
_1614:
	db	"SCE_B_ASM",0
_1615:
	db	"SCE_B_LABEL",0
_1616:
	db	"SCE_B_ERROR",0
_1617:
	db	"SCE_B_HEXNUMBER",0
_1618:
	db	"SCE_B_BINNUMBER",0
_1619:
	db	"SCE_B_MULTILINECOMMENT",0
_1620:
	db	"SCE_PROPS_DEFAULT",0
_1621:
	db	"SCE_PROPS_COMMENT",0
_1622:
	db	"SCE_PROPS_SECTION",0
_1623:
	db	"SCE_PROPS_ASSIGNMENT",0
_1624:
	db	"SCE_PROPS_DEFVAL",0
_1625:
	db	"SCE_PROPS_KEY",0
_1626:
	db	"SCE_L_DEFAULT",0
_1627:
	db	"SCE_L_COMMAND",0
_1628:
	db	"SCE_L_TAG",0
_1629:
	db	"SCE_L_MATH",0
_1630:
	db	"SCE_L_COMMENT",0
_1631:
	db	"SCE_LUA_DEFAULT",0
_1632:
	db	"SCE_LUA_COMMENT",0
_1633:
	db	"SCE_LUA_COMMENTLINE",0
_1634:
	db	"SCE_LUA_COMMENTDOC",0
_1635:
	db	"SCE_LUA_NUMBER",0
_1636:
	db	"SCE_LUA_WORD",0
_1637:
	db	"SCE_LUA_STRING",0
_1638:
	db	"SCE_LUA_CHARACTER",0
_1639:
	db	"SCE_LUA_LITERALSTRING",0
_1640:
	db	"SCE_LUA_PREPROCESSOR",0
_1641:
	db	"SCE_LUA_OPERATOR",0
_1642:
	db	"SCE_LUA_IDENTIFIER",0
_1643:
	db	"SCE_LUA_STRINGEOL",0
_1644:
	db	"SCE_LUA_WORD2",0
_1645:
	db	"SCE_LUA_WORD3",0
_1646:
	db	"SCE_LUA_WORD4",0
_1647:
	db	"SCE_LUA_WORD5",0
_1648:
	db	"SCE_LUA_WORD6",0
_1649:
	db	"SCE_LUA_WORD7",0
_1650:
	db	"SCE_LUA_WORD8",0
_1651:
	db	"SCE_ERR_DEFAULT",0
_1652:
	db	"SCE_ERR_PYTHON",0
_1653:
	db	"SCE_ERR_GCC",0
_1654:
	db	"SCE_ERR_MS",0
_1655:
	db	"SCE_ERR_CMD",0
_1656:
	db	"SCE_ERR_BORLAND",0
_1657:
	db	"SCE_ERR_PERL",0
_1658:
	db	"SCE_ERR_NET",0
_1659:
	db	"SCE_ERR_LUA",0
_1660:
	db	"SCE_ERR_CTAG",0
_1661:
	db	"SCE_ERR_DIFF_CHANGED",0
_1662:
	db	"SCE_ERR_DIFF_ADDITION",0
_1663:
	db	"SCE_ERR_DIFF_DELETION",0
_1664:
	db	"SCE_ERR_DIFF_MESSAGE",0
_1665:
	db	"SCE_ERR_PHP",0
_1666:
	db	"SCE_ERR_ELF",0
_1667:
	db	"SCE_ERR_IFC",0
_1668:
	db	"SCE_ERR_IFORT",0
_1669:
	db	"SCE_ERR_ABSF",0
_1670:
	db	"SCE_ERR_TIDY",0
_1671:
	db	"SCE_ERR_JAVA_STACK",0
_1672:
	db	"SCE_BAT_DEFAULT",0
_1673:
	db	"SCE_BAT_COMMENT",0
_1674:
	db	"SCE_BAT_WORD",0
_1675:
	db	"SCE_BAT_LABEL",0
_1676:
	db	"SCE_BAT_HIDE",0
_1677:
	db	"SCE_BAT_COMMAND",0
_1678:
	db	"SCE_BAT_IDENTIFIER",0
_1679:
	db	"SCE_BAT_OPERATOR",0
_1680:
	db	"SCE_MAKE_DEFAULT",0
_1681:
	db	"SCE_MAKE_COMMENT",0
_1682:
	db	"SCE_MAKE_PREPROCESSOR",0
_1683:
	db	"SCE_MAKE_IDENTIFIER",0
_1684:
	db	"SCE_MAKE_OPERATOR",0
_1685:
	db	"SCE_MAKE_TARGET",0
_1686:
	db	"SCE_MAKE_IDEOL",0
_1687:
	db	"SCE_DIFF_DEFAULT",0
_1688:
	db	"SCE_DIFF_COMMENT",0
_1689:
	db	"SCE_DIFF_COMMAND",0
_1690:
	db	"SCE_DIFF_HEADER",0
_1691:
	db	"SCE_DIFF_POSITION",0
_1692:
	db	"SCE_DIFF_DELETED",0
_1693:
	db	"SCE_DIFF_ADDED",0
_1694:
	db	"SCE_CONF_DEFAULT",0
_1695:
	db	"SCE_CONF_COMMENT",0
_1696:
	db	"SCE_CONF_NUMBER",0
_1697:
	db	"SCE_CONF_IDENTIFIER",0
_1698:
	db	"SCE_CONF_EXTENSION",0
_1699:
	db	"SCE_CONF_PARAMETER",0
_1700:
	db	"SCE_CONF_STRING",0
_1701:
	db	"SCE_CONF_OPERATOR",0
_1702:
	db	"SCE_CONF_IP",0
_1703:
	db	"SCE_CONF_DIRECTIVE",0
_1704:
	db	"SCE_AVE_DEFAULT",0
_1705:
	db	"SCE_AVE_COMMENT",0
_1706:
	db	"SCE_AVE_NUMBER",0
_1707:
	db	"SCE_AVE_WORD",0
_1708:
	db	"SCE_AVE_STRING",0
_1709:
	db	"SCE_AVE_ENUM",0
_1710:
	db	"SCE_AVE_STRINGEOL",0
_1711:
	db	"SCE_AVE_IDENTIFIER",0
_1712:
	db	"SCE_AVE_OPERATOR",0
_1713:
	db	"SCE_AVE_WORD1",0
_1714:
	db	"SCE_AVE_WORD2",0
_1715:
	db	"SCE_AVE_WORD3",0
_1716:
	db	"SCE_AVE_WORD4",0
_1717:
	db	"SCE_AVE_WORD5",0
_1718:
	db	"SCE_AVE_WORD6",0
_1719:
	db	"SCE_ADA_DEFAULT",0
_1720:
	db	"SCE_ADA_WORD",0
_1721:
	db	"SCE_ADA_IDENTIFIER",0
_1722:
	db	"SCE_ADA_NUMBER",0
_1723:
	db	"SCE_ADA_DELIMITER",0
_1724:
	db	"SCE_ADA_CHARACTER",0
_1725:
	db	"SCE_ADA_CHARACTEREOL",0
_1726:
	db	"SCE_ADA_STRING",0
_1727:
	db	"SCE_ADA_STRINGEOL",0
_1728:
	db	"SCE_ADA_LABEL",0
_1729:
	db	"SCE_ADA_COMMENTLINE",0
_1730:
	db	"SCE_ADA_ILLEGAL",0
_1731:
	db	"SCE_BAAN_DEFAULT",0
_1732:
	db	"SCE_BAAN_COMMENT",0
_1733:
	db	"SCE_BAAN_COMMENTDOC",0
_1734:
	db	"SCE_BAAN_NUMBER",0
_1735:
	db	"SCE_BAAN_WORD",0
_1736:
	db	"SCE_BAAN_STRING",0
_1737:
	db	"SCE_BAAN_PREPROCESSOR",0
_1738:
	db	"SCE_BAAN_OPERATOR",0
_1739:
	db	"SCE_BAAN_IDENTIFIER",0
_1740:
	db	"SCE_BAAN_STRINGEOL",0
_1741:
	db	"SCE_BAAN_WORD2",0
_1742:
	db	"SCE_LISP_DEFAULT",0
_1743:
	db	"SCE_LISP_COMMENT",0
_1744:
	db	"SCE_LISP_NUMBER",0
_1745:
	db	"SCE_LISP_KEYWORD",0
_1746:
	db	"SCE_LISP_KEYWORD_KW",0
_1747:
	db	"SCE_LISP_SYMBOL",0
_1748:
	db	"SCE_LISP_STRING",0
_1749:
	db	"SCE_LISP_STRINGEOL",0
_1750:
	db	"SCE_LISP_IDENTIFIER",0
_1751:
	db	"SCE_LISP_OPERATOR",0
_1752:
	db	"SCE_LISP_SPECIAL",0
_1753:
	db	"SCE_LISP_MULTI_COMMENT",0
_1754:
	db	"SCE_EIFFEL_DEFAULT",0
_1755:
	db	"SCE_EIFFEL_COMMENTLINE",0
_1756:
	db	"SCE_EIFFEL_NUMBER",0
_1757:
	db	"SCE_EIFFEL_WORD",0
_1758:
	db	"SCE_EIFFEL_STRING",0
_1759:
	db	"SCE_EIFFEL_CHARACTER",0
_1760:
	db	"SCE_EIFFEL_OPERATOR",0
_1761:
	db	"SCE_EIFFEL_IDENTIFIER",0
_1762:
	db	"SCE_EIFFEL_STRINGEOL",0
_1763:
	db	"SCE_NNCRONTAB_DEFAULT",0
_1764:
	db	"SCE_NNCRONTAB_COMMENT",0
_1765:
	db	"SCE_NNCRONTAB_TASK",0
_1766:
	db	"SCE_NNCRONTAB_SECTION",0
_1767:
	db	"SCE_NNCRONTAB_KEYWORD",0
_1768:
	db	"SCE_NNCRONTAB_MODIFIER",0
_1769:
	db	"SCE_NNCRONTAB_ASTERISK",0
_1770:
	db	"SCE_NNCRONTAB_NUMBER",0
_1771:
	db	"SCE_NNCRONTAB_STRING",0
_1772:
	db	"SCE_NNCRONTAB_ENVIRONMENT",0
_1773:
	db	"SCE_NNCRONTAB_IDENTIFIER",0
_1774:
	db	"SCE_FORTH_DEFAULT",0
_1775:
	db	"SCE_FORTH_COMMENT",0
_1776:
	db	"SCE_FORTH_COMMENT_ML",0
_1777:
	db	"SCE_FORTH_IDENTIFIER",0
_1778:
	db	"SCE_FORTH_CONTROL",0
_1779:
	db	"SCE_FORTH_KEYWORD",0
_1780:
	db	"SCE_FORTH_DEFWORD",0
_1781:
	db	"SCE_FORTH_PREWORD1",0
_1782:
	db	"SCE_FORTH_PREWORD2",0
_1783:
	db	"SCE_FORTH_NUMBER",0
_1784:
	db	"SCE_FORTH_STRING",0
_1785:
	db	"SCE_FORTH_LOCALE",0
_1786:
	db	"SCE_MATLAB_DEFAULT",0
_1787:
	db	"SCE_MATLAB_COMMENT",0
_1788:
	db	"SCE_MATLAB_COMMAND",0
_1789:
	db	"SCE_MATLAB_NUMBER",0
_1790:
	db	"SCE_MATLAB_KEYWORD",0
_1791:
	db	"SCE_MATLAB_STRING",0
_1792:
	db	"SCE_MATLAB_OPERATOR",0
_1793:
	db	"SCE_MATLAB_IDENTIFIER",0
_1794:
	db	"SCE_MATLAB_DOUBLEQUOTESTRING",0
_1795:
	db	"SCE_SCRIPTOL_DEFAULT",0
_1796:
	db	"SCE_SCRIPTOL_WHITE",0
_1797:
	db	"SCE_SCRIPTOL_COMMENTLINE",0
_1798:
	db	"SCE_SCRIPTOL_PERSISTENT",0
_1799:
	db	"SCE_SCRIPTOL_CSTYLE",0
_1800:
	db	"SCE_SCRIPTOL_COMMENTBLOCK",0
_1801:
	db	"SCE_SCRIPTOL_NUMBER",0
_1802:
	db	"SCE_SCRIPTOL_STRING",0
_1803:
	db	"SCE_SCRIPTOL_CHARACTER",0
_1804:
	db	"SCE_SCRIPTOL_STRINGEOL",0
_1805:
	db	"SCE_SCRIPTOL_KEYWORD",0
_1806:
	db	"SCE_SCRIPTOL_OPERATOR",0
_1807:
	db	"SCE_SCRIPTOL_IDENTIFIER",0
_1808:
	db	"SCE_SCRIPTOL_TRIPLE",0
_1809:
	db	"SCE_SCRIPTOL_CLASSNAME",0
_1810:
	db	"SCE_SCRIPTOL_PREPROCESSOR",0
_1811:
	db	"SCE_ASM_DEFAULT",0
_1812:
	db	"SCE_ASM_COMMENT",0
_1813:
	db	"SCE_ASM_NUMBER",0
_1814:
	db	"SCE_ASM_STRING",0
_1815:
	db	"SCE_ASM_OPERATOR",0
_1816:
	db	"SCE_ASM_IDENTIFIER",0
_1817:
	db	"SCE_ASM_CPUINSTRUCTION",0
_1818:
	db	"SCE_ASM_MATHINSTRUCTION",0
_1819:
	db	"SCE_ASM_REGISTER",0
_1820:
	db	"SCE_ASM_DIRECTIVE",0
_1821:
	db	"SCE_ASM_DIRECTIVEOPERAND",0
_1822:
	db	"SCE_ASM_COMMENTBLOCK",0
_1823:
	db	"SCE_ASM_CHARACTER",0
_1824:
	db	"SCE_ASM_STRINGEOL",0
_1825:
	db	"SCE_ASM_EXTINSTRUCTION",0
_1826:
	db	"SCE_F_DEFAULT",0
_1827:
	db	"SCE_F_COMMENT",0
_1828:
	db	"SCE_F_NUMBER",0
_1829:
	db	"SCE_F_STRING1",0
_1830:
	db	"SCE_F_STRING2",0
_1831:
	db	"SCE_F_STRINGEOL",0
_1832:
	db	"SCE_F_OPERATOR",0
_1833:
	db	"SCE_F_IDENTIFIER",0
_1834:
	db	"SCE_F_WORD",0
_1835:
	db	"SCE_F_WORD2",0
_1836:
	db	"SCE_F_WORD3",0
_1837:
	db	"SCE_F_PREPROCESSOR",0
_1838:
	db	"SCE_F_OPERATOR2",0
_1839:
	db	"SCE_F_LABEL",0
_1840:
	db	"SCE_F_CONTINUATION",0
_1841:
	db	"SCE_CSS_DEFAULT",0
_1842:
	db	"SCE_CSS_TAG",0
_1843:
	db	"SCE_CSS_CLASS",0
_1844:
	db	"SCE_CSS_PSEUDOCLASS",0
_1845:
	db	"SCE_CSS_UNKNOWN_PSEUDOCLASS",0
_1846:
	db	"SCE_CSS_OPERATOR",0
_1847:
	db	"SCE_CSS_IDENTIFIER",0
_1848:
	db	"SCE_CSS_UNKNOWN_IDENTIFIER",0
_1849:
	db	"SCE_CSS_VALUE",0
_1850:
	db	"SCE_CSS_COMMENT",0
_1851:
	db	"SCE_CSS_ID",0
_1852:
	db	"SCE_CSS_IMPORTANT",0
_1853:
	db	"SCE_CSS_DIRECTIVE",0
_1854:
	db	"SCE_CSS_DOUBLESTRING",0
_1855:
	db	"SCE_CSS_SINGLESTRING",0
_1856:
	db	"SCE_CSS_IDENTIFIER2",0
_1857:
	db	"SCE_CSS_ATTRIBUTE",0
_1858:
	db	"SCE_POV_DEFAULT",0
_1859:
	db	"SCE_POV_COMMENT",0
_1860:
	db	"SCE_POV_COMMENTLINE",0
_1861:
	db	"SCE_POV_NUMBER",0
_1862:
	db	"SCE_POV_OPERATOR",0
_1863:
	db	"SCE_POV_IDENTIFIER",0
_1864:
	db	"SCE_POV_STRING",0
_1865:
	db	"SCE_POV_STRINGEOL",0
_1866:
	db	"SCE_POV_DIRECTIVE",0
_1867:
	db	"SCE_POV_BADDIRECTIVE",0
_1868:
	db	"SCE_POV_WORD2",0
_1869:
	db	"SCE_POV_WORD3",0
_1870:
	db	"SCE_POV_WORD4",0
_1871:
	db	"SCE_POV_WORD5",0
_1872:
	db	"SCE_POV_WORD6",0
_1873:
	db	"SCE_POV_WORD7",0
_1874:
	db	"SCE_POV_WORD8",0
_1875:
	db	"SCE_LOUT_DEFAULT",0
_1876:
	db	"SCE_LOUT_COMMENT",0
_1877:
	db	"SCE_LOUT_NUMBER",0
_1878:
	db	"SCE_LOUT_WORD",0
_1879:
	db	"SCE_LOUT_WORD2",0
_1880:
	db	"SCE_LOUT_WORD3",0
_1881:
	db	"SCE_LOUT_WORD4",0
_1882:
	db	"SCE_LOUT_STRING",0
_1883:
	db	"SCE_LOUT_OPERATOR",0
_1884:
	db	"SCE_LOUT_IDENTIFIER",0
_1885:
	db	"SCE_LOUT_STRINGEOL",0
_1886:
	db	"SCE_ESCRIPT_DEFAULT",0
_1887:
	db	"SCE_ESCRIPT_COMMENT",0
_1888:
	db	"SCE_ESCRIPT_COMMENTLINE",0
_1889:
	db	"SCE_ESCRIPT_COMMENTDOC",0
_1890:
	db	"SCE_ESCRIPT_NUMBER",0
_1891:
	db	"SCE_ESCRIPT_WORD",0
_1892:
	db	"SCE_ESCRIPT_STRING",0
_1893:
	db	"SCE_ESCRIPT_OPERATOR",0
_1894:
	db	"SCE_ESCRIPT_IDENTIFIER",0
_1895:
	db	"SCE_ESCRIPT_BRACE",0
_1896:
	db	"SCE_ESCRIPT_WORD2",0
_1897:
	db	"SCE_ESCRIPT_WORD3",0
_1898:
	db	"SCE_PS_DEFAULT",0
_1899:
	db	"SCE_PS_COMMENT",0
_1900:
	db	"SCE_PS_DSC_COMMENT",0
_1901:
	db	"SCE_PS_DSC_VALUE",0
_1902:
	db	"SCE_PS_NUMBER",0
_1903:
	db	"SCE_PS_NAME",0
_1904:
	db	"SCE_PS_KEYWORD",0
_1905:
	db	"SCE_PS_LITERAL",0
_1906:
	db	"SCE_PS_IMMEVAL",0
_1907:
	db	"SCE_PS_PAREN_ARRAY",0
_1908:
	db	"SCE_PS_PAREN_DICT",0
_1909:
	db	"SCE_PS_PAREN_PROC",0
_1910:
	db	"SCE_PS_TEXT",0
_1911:
	db	"SCE_PS_HEXSTRING",0
_1912:
	db	"SCE_PS_BASE85STRING",0
_1913:
	db	"SCE_PS_BADSTRINGCHAR",0
_1914:
	db	"SCE_NSIS_DEFAULT",0
_1915:
	db	"SCE_NSIS_COMMENT",0
_1916:
	db	"SCE_NSIS_STRINGDQ",0
_1917:
	db	"SCE_NSIS_STRINGLQ",0
_1918:
	db	"SCE_NSIS_STRINGRQ",0
_1919:
	db	"SCE_NSIS_FUNCTION",0
_1920:
	db	"SCE_NSIS_VARIABLE",0
_1921:
	db	"SCE_NSIS_LABEL",0
_1922:
	db	"SCE_NSIS_USERDEFINED",0
_1923:
	db	"SCE_NSIS_SECTIONDEF",0
_1924:
	db	"SCE_NSIS_SUBSECTIONDEF",0
_1925:
	db	"SCE_NSIS_IFDEFINEDEF",0
_1926:
	db	"SCE_NSIS_MACRODEF",0
_1927:
	db	"SCE_NSIS_STRINGVAR",0
_1928:
	db	"SCE_NSIS_NUMBER",0
_1929:
	db	"SCE_NSIS_SECTIONGROUP",0
_1930:
	db	"SCE_NSIS_PAGEEX",0
_1931:
	db	"SCE_NSIS_FUNCTIONDEF",0
_1932:
	db	"SCE_NSIS_COMMENTBOX",0
_1933:
	db	"SCE_MMIXAL_LEADWS",0
_1934:
	db	"SCE_MMIXAL_COMMENT",0
_1935:
	db	"SCE_MMIXAL_LABEL",0
_1936:
	db	"SCE_MMIXAL_OPCODE",0
_1937:
	db	"SCE_MMIXAL_OPCODE_PRE",0
_1938:
	db	"SCE_MMIXAL_OPCODE_VALID",0
_1939:
	db	"SCE_MMIXAL_OPCODE_UNKNOWN",0
_1940:
	db	"SCE_MMIXAL_OPCODE_POST",0
_1941:
	db	"SCE_MMIXAL_OPERANDS",0
_1942:
	db	"SCE_MMIXAL_NUMBER",0
_1943:
	db	"SCE_MMIXAL_REF",0
_1944:
	db	"SCE_MMIXAL_CHAR",0
_1945:
	db	"SCE_MMIXAL_STRING",0
_1946:
	db	"SCE_MMIXAL_REGISTER",0
_1947:
	db	"SCE_MMIXAL_HEX",0
_1948:
	db	"SCE_MMIXAL_OPERATOR",0
_1949:
	db	"SCE_MMIXAL_SYMBOL",0
_1950:
	db	"SCE_MMIXAL_INCLUDE",0
_1951:
	db	"SCE_CLW_DEFAULT",0
_1952:
	db	"SCE_CLW_LABEL",0
_1953:
	db	"SCE_CLW_COMMENT",0
_1954:
	db	"SCE_CLW_STRING",0
_1955:
	db	"SCE_CLW_USER_IDENTIFIER",0
_1956:
	db	"SCE_CLW_INTEGER_CONSTANT",0
_1957:
	db	"SCE_CLW_REAL_CONSTANT",0
_1958:
	db	"SCE_CLW_PICTURE_STRING",0
_1959:
	db	"SCE_CLW_KEYWORD",0
_1960:
	db	"SCE_CLW_COMPILER_DIRECTIVE",0
_1961:
	db	"SCE_CLW_RUNTIME_EXPRESSIONS",0
_1962:
	db	"SCE_CLW_BUILTIN_PROCEDURES_FUNCTION",0
_1963:
	db	"SCE_CLW_STRUCTURE_DATA_TYPE",0
_1964:
	db	"SCE_CLW_ATTRIBUTE",0
_1965:
	db	"SCE_CLW_STANDARD_EQUATE",0
_1966:
	db	"SCE_CLW_ERROR",0
_1967:
	db	"SCE_CLW_DEPRECATED",0
_1968:
	db	"SCE_LOT_DEFAULT",0
_1969:
	db	"SCE_LOT_HEADER",0
_1970:
	db	"SCE_LOT_BREAK",0
_1971:
	db	"SCE_LOT_SET",0
_1972:
	db	"SCE_LOT_PASS",0
_1973:
	db	"SCE_LOT_FAIL",0
_1974:
	db	"SCE_LOT_ABORT",0
_1975:
	db	"SCE_YAML_DEFAULT",0
_1976:
	db	"SCE_YAML_COMMENT",0
_1977:
	db	"SCE_YAML_IDENTIFIER",0
_1978:
	db	"SCE_YAML_KEYWORD",0
_1979:
	db	"SCE_YAML_NUMBER",0
_1980:
	db	"SCE_YAML_REFERENCE",0
_1981:
	db	"SCE_YAML_DOCUMENT",0
_1982:
	db	"SCE_YAML_TEXT",0
_1983:
	db	"SCE_YAML_ERROR",0
_1984:
	db	"SCE_TEX_DEFAULT",0
_1985:
	db	"SCE_TEX_SPECIAL",0
_1986:
	db	"SCE_TEX_GROUP",0
_1987:
	db	"SCE_TEX_SYMBOL",0
_1988:
	db	"SCE_TEX_COMMAND",0
_1989:
	db	"SCE_TEX_TEXT",0
_1990:
	db	"SCE_METAPOST_DEFAULT",0
_1991:
	db	"SCE_METAPOST_SPECIAL",0
_1992:
	db	"SCE_METAPOST_GROUP",0
_1993:
	db	"SCE_METAPOST_SYMBOL",0
_1994:
	db	"SCE_METAPOST_COMMAND",0
_1995:
	db	"SCE_METAPOST_TEXT",0
_1996:
	db	"SCE_METAPOST_EXTRA",0
_1997:
	db	"SCE_ERLANG_DEFAULT",0
_1998:
	db	"SCE_ERLANG_COMMENT",0
_1999:
	db	"SCE_ERLANG_VARIABLE",0
_2000:
	db	"SCE_ERLANG_NUMBER",0
_2001:
	db	"SCE_ERLANG_KEYWORD",0
_2002:
	db	"SCE_ERLANG_STRING",0
_2003:
	db	"SCE_ERLANG_OPERATOR",0
_2004:
	db	"SCE_ERLANG_ATOM",0
_2005:
	db	"SCE_ERLANG_FUNCTION_NAME",0
_2006:
	db	"SCE_ERLANG_CHARACTER",0
_2007:
	db	"SCE_ERLANG_MACRO",0
_2008:
	db	"SCE_ERLANG_RECORD",0
_2009:
	db	"SCE_ERLANG_SEPARATOR",0
_2010:
	db	"SCE_ERLANG_NODE_NAME",0
_2011:
	db	"SCE_ERLANG_UNKNOWN",0
_2012:
	db	"SCE_MSSQL_DEFAULT",0
_2013:
	db	"SCE_MSSQL_COMMENT",0
_2014:
	db	"SCE_MSSQL_LINE_COMMENT",0
_2015:
	db	"SCE_MSSQL_NUMBER",0
_2016:
	db	"SCE_MSSQL_STRING",0
_2017:
	db	"SCE_MSSQL_OPERATOR",0
_2018:
	db	"SCE_MSSQL_IDENTIFIER",0
_2019:
	db	"SCE_MSSQL_VARIABLE",0
_2020:
	db	"SCE_MSSQL_COLUMN_NAME",0
_2021:
	db	"SCE_MSSQL_STATEMENT",0
_2022:
	db	"SCE_MSSQL_DATATYPE",0
_2023:
	db	"SCE_MSSQL_SYSTABLE",0
_2024:
	db	"SCE_MSSQL_GLOBAL_VARIABLE",0
_2025:
	db	"SCE_MSSQL_FUNCTION",0
_2026:
	db	"SCE_MSSQL_STORED_PROCEDURE",0
_2027:
	db	"SCE_MSSQL_DEFAULT_PREF_DATATYPE",0
_2028:
	db	"SCE_MSSQL_COLUMN_NAME_2",0
_2029:
	db	"SCE_V_DEFAULT",0
_2030:
	db	"SCE_V_COMMENT",0
_2031:
	db	"SCE_V_COMMENTLINE",0
_2032:
	db	"SCE_V_COMMENTLINEBANG",0
_2033:
	db	"SCE_V_NUMBER",0
_2034:
	db	"SCE_V_WORD",0
_2035:
	db	"SCE_V_STRING",0
_2036:
	db	"SCE_V_WORD2",0
_2037:
	db	"SCE_V_WORD3",0
_2038:
	db	"SCE_V_PREPROCESSOR",0
_2039:
	db	"SCE_V_OPERATOR",0
_2040:
	db	"SCE_V_IDENTIFIER",0
_2041:
	db	"SCE_V_STRINGEOL",0
_2042:
	db	"SCE_V_USER",0
_2043:
	db	"SCE_KIX_DEFAULT",0
_2044:
	db	"SCE_KIX_COMMENT",0
_2045:
	db	"SCE_KIX_STRING1",0
_2046:
	db	"SCE_KIX_STRING2",0
_2047:
	db	"SCE_KIX_NUMBER",0
_2048:
	db	"SCE_KIX_VAR",0
_2049:
	db	"SCE_KIX_MACRO",0
_2050:
	db	"SCE_KIX_KEYWORD",0
_2051:
	db	"SCE_KIX_FUNCTIONS",0
_2052:
	db	"SCE_KIX_OPERATOR",0
_2053:
	db	"SCE_KIX_IDENTIFIER",0
_2054:
	db	"SCE_GC_DEFAULT",0
_2055:
	db	"SCE_GC_COMMENTLINE",0
_2056:
	db	"SCE_GC_COMMENTBLOCK",0
_2057:
	db	"SCE_GC_GLOBAL",0
_2058:
	db	"SCE_GC_EVENT",0
_2059:
	db	"SCE_GC_ATTRIBUTE",0
_2060:
	db	"SCE_GC_CONTROL",0
_2061:
	db	"SCE_GC_COMMAND",0
_2062:
	db	"SCE_GC_STRING",0
_2063:
	db	"SCE_GC_OPERATOR",0
_2064:
	db	"SCE_SN_DEFAULT",0
_2065:
	db	"SCE_SN_CODE",0
_2066:
	db	"SCE_SN_COMMENTLINE",0
_2067:
	db	"SCE_SN_COMMENTLINEBANG",0
_2068:
	db	"SCE_SN_NUMBER",0
_2069:
	db	"SCE_SN_WORD",0
_2070:
	db	"SCE_SN_STRING",0
_2071:
	db	"SCE_SN_WORD2",0
_2072:
	db	"SCE_SN_WORD3",0
_2073:
	db	"SCE_SN_PREPROCESSOR",0
_2074:
	db	"SCE_SN_OPERATOR",0
_2075:
	db	"SCE_SN_IDENTIFIER",0
_2076:
	db	"SCE_SN_STRINGEOL",0
_2077:
	db	"SCE_SN_REGEXTAG",0
_2078:
	db	"SCE_SN_SIGNAL",0
_2079:
	db	"SCE_SN_USER",0
_2080:
	db	"SCE_AU3_DEFAULT",0
_2081:
	db	"SCE_AU3_COMMENT",0
_2082:
	db	"SCE_AU3_COMMENTBLOCK",0
_2083:
	db	"SCE_AU3_NUMBER",0
_2084:
	db	"SCE_AU3_FUNCTION",0
_2085:
	db	"SCE_AU3_KEYWORD",0
_2086:
	db	"SCE_AU3_MACRO",0
_2087:
	db	"SCE_AU3_STRING",0
_2088:
	db	"SCE_AU3_OPERATOR",0
_2089:
	db	"SCE_AU3_VARIABLE",0
_2090:
	db	"SCE_AU3_SENT",0
_2091:
	db	"SCE_AU3_PREPROCESSOR",0
_2092:
	db	"SCE_AU3_SPECIAL",0
_2093:
	db	"SCE_AU3_EXPAND",0
_2094:
	db	"SCE_AU3_COMOBJ",0
_2095:
	db	"SCE_APDL_DEFAULT",0
_2096:
	db	"SCE_APDL_COMMENT",0
_2097:
	db	"SCE_APDL_COMMENTBLOCK",0
_2098:
	db	"SCE_APDL_NUMBER",0
_2099:
	db	"SCE_APDL_STRING",0
_2100:
	db	"SCE_APDL_OPERATOR",0
_2101:
	db	"SCE_APDL_WORD",0
_2102:
	db	"SCE_APDL_PROCESSOR",0
_2103:
	db	"SCE_APDL_COMMAND",0
_2104:
	db	"SCE_APDL_SLASHCOMMAND",0
_2105:
	db	"SCE_APDL_STARCOMMAND",0
_2106:
	db	"SCE_APDL_ARGUMENT",0
_2107:
	db	"SCE_APDL_FUNCTION",0
_2108:
	db	"SCE_SH_DEFAULT",0
_2109:
	db	"SCE_SH_ERROR",0
_2110:
	db	"SCE_SH_COMMENTLINE",0
_2111:
	db	"SCE_SH_NUMBER",0
_2112:
	db	"SCE_SH_WORD",0
_2113:
	db	"SCE_SH_STRING",0
_2114:
	db	"SCE_SH_CHARACTER",0
_2115:
	db	"SCE_SH_OPERATOR",0
_2116:
	db	"SCE_SH_IDENTIFIER",0
_2117:
	db	"SCE_SH_SCALAR",0
_2118:
	db	"SCE_SH_PARAM",0
_2119:
	db	"SCE_SH_BACKTICKS",0
_2120:
	db	"SCE_SH_HERE_DELIM",0
_2121:
	db	"SCE_SH_HERE_Q",0
_2122:
	db	"SCE_ASN1_DEFAULT",0
_2123:
	db	"SCE_ASN1_COMMENT",0
_2124:
	db	"SCE_ASN1_IDENTIFIER",0
_2125:
	db	"SCE_ASN1_STRING",0
_2126:
	db	"SCE_ASN1_OID",0
_2127:
	db	"SCE_ASN1_SCALAR",0
_2128:
	db	"SCE_ASN1_KEYWORD",0
_2129:
	db	"SCE_ASN1_ATTRIBUTE",0
_2130:
	db	"SCE_ASN1_DESCRIPTOR",0
_2131:
	db	"SCE_ASN1_TYPE",0
_2132:
	db	"SCE_ASN1_OPERATOR",0
_2133:
	db	"SCE_VHDL_DEFAULT",0
_2134:
	db	"SCE_VHDL_COMMENT",0
_2135:
	db	"SCE_VHDL_COMMENTLINEBANG",0
_2136:
	db	"SCE_VHDL_NUMBER",0
_2137:
	db	"SCE_VHDL_STRING",0
_2138:
	db	"SCE_VHDL_OPERATOR",0
_2139:
	db	"SCE_VHDL_IDENTIFIER",0
_2140:
	db	"SCE_VHDL_STRINGEOL",0
_2141:
	db	"SCE_VHDL_KEYWORD",0
_2142:
	db	"SCE_VHDL_STDOPERATOR",0
_2143:
	db	"SCE_VHDL_ATTRIBUTE",0
_2144:
	db	"SCE_VHDL_STDFUNCTION",0
_2145:
	db	"SCE_VHDL_STDPACKAGE",0
_2146:
	db	"SCE_VHDL_STDTYPE",0
_2147:
	db	"SCE_VHDL_USERWORD",0
_2148:
	db	"SCE_CAML_DEFAULT",0
_2149:
	db	"SCE_CAML_IDENTIFIER",0
_2150:
	db	"SCE_CAML_TAGNAME",0
_2151:
	db	"SCE_CAML_KEYWORD",0
_2152:
	db	"SCE_CAML_KEYWORD2",0
_2153:
	db	"SCE_CAML_KEYWORD3",0
_2154:
	db	"SCE_CAML_LINENUM",0
_2155:
	db	"SCE_CAML_OPERATOR",0
_2156:
	db	"SCE_CAML_NUMBER",0
_2157:
	db	"SCE_CAML_CHAR",0
_2158:
	db	"SCE_CAML_STRING",0
_2159:
	db	"SCE_CAML_COMMENT",0
_2160:
	db	"SCE_CAML_COMMENT1",0
_2161:
	db	"SCE_CAML_COMMENT2",0
_2162:
	db	"SCE_CAML_COMMENT3",0
_2163:
	db	"SCE_HA_DEFAULT",0
_2164:
	db	"SCE_HA_IDENTIFIER",0
_2165:
	db	"SCE_HA_KEYWORD",0
_2166:
	db	"SCE_HA_NUMBER",0
_2167:
	db	"SCE_HA_STRING",0
_2168:
	db	"SCE_HA_CHARACTER",0
_2169:
	db	"SCE_HA_CLASS",0
_2170:
	db	"SCE_HA_MODULE",0
_2171:
	db	"SCE_HA_CAPITAL",0
_2172:
	db	"SCE_HA_DATA",0
_2173:
	db	"SCE_HA_IMPORT",0
_2174:
	db	"SCE_HA_OPERATOR",0
_2175:
	db	"SCE_HA_INSTANCE",0
_2176:
	db	"SCE_HA_COMMENTLINE",0
_2177:
	db	"SCE_HA_COMMENTBLOCK",0
_2178:
	db	"SCE_HA_COMMENTBLOCK2",0
_2179:
	db	"SCE_HA_COMMENTBLOCK3",0
_2180:
	db	"SCE_T3_DEFAULT",0
_2181:
	db	"SCE_T3_X_DEFAULT",0
_2182:
	db	"SCE_T3_PREPROCESSOR",0
_2183:
	db	"SCE_T3_BLOCK_COMMENT",0
_2184:
	db	"SCE_T3_LINE_COMMENT",0
_2185:
	db	"SCE_T3_OPERATOR",0
_2186:
	db	"SCE_T3_KEYWORD",0
_2187:
	db	"SCE_T3_NUMBER",0
_2188:
	db	"SCE_T3_IDENTIFIER",0
_2189:
	db	"SCE_T3_S_STRING",0
_2190:
	db	"SCE_T3_D_STRING",0
_2191:
	db	"SCE_T3_X_STRING",0
_2192:
	db	"SCE_T3_LIB_DIRECTIVE",0
_2193:
	db	"SCE_T3_MSG_PARAM",0
_2194:
	db	"SCE_T3_HTML_TAG",0
_2195:
	db	"SCE_T3_HTML_DEFAULT",0
_2196:
	db	"SCE_T3_HTML_STRING",0
_2197:
	db	"SCE_T3_USER1",0
_2198:
	db	"SCE_T3_USER2",0
_2199:
	db	"SCE_T3_USER3",0
_2200:
	db	"SCE_REBOL_DEFAULT",0
_2201:
	db	"SCE_REBOL_COMMENTLINE",0
_2202:
	db	"SCE_REBOL_COMMENTBLOCK",0
_2203:
	db	"SCE_REBOL_PREFACE",0
_2204:
	db	"SCE_REBOL_OPERATOR",0
_2205:
	db	"SCE_REBOL_CHARACTER",0
_2206:
	db	"SCE_REBOL_QUOTEDSTRING",0
_2207:
	db	"SCE_REBOL_BRACEDSTRING",0
_2208:
	db	"SCE_REBOL_NUMBER",0
_2209:
	db	"SCE_REBOL_PAIR",0
_2210:
	db	"SCE_REBOL_TUPLE",0
_2211:
	db	"SCE_REBOL_BINARY",0
_2212:
	db	"SCE_REBOL_MONEY",0
_2213:
	db	"SCE_REBOL_ISSUE",0
_2214:
	db	"SCE_REBOL_TAG",0
_2215:
	db	"SCE_REBOL_FILE",0
_2216:
	db	"SCE_REBOL_EMAIL",0
_2217:
	db	"SCE_REBOL_URL",0
_2218:
	db	"SCE_REBOL_DATE",0
_2219:
	db	"SCE_REBOL_TIME",0
_2220:
	db	"SCE_REBOL_IDENTIFIER",0
_2221:
	db	"SCE_REBOL_WORD",0
_2222:
	db	"SCE_REBOL_WORD2",0
_2223:
	db	"SCE_REBOL_WORD3",0
_2224:
	db	"SCE_REBOL_WORD4",0
_2225:
	db	"SCE_REBOL_WORD5",0
_2226:
	db	"SCE_REBOL_WORD6",0
_2227:
	db	"SCE_REBOL_WORD7",0
_2228:
	db	"SCE_REBOL_WORD8",0
_2229:
	db	"SCE_SQL_DEFAULT",0
_2230:
	db	"SCE_SQL_COMMENT",0
_2231:
	db	"SCE_SQL_COMMENTLINE",0
_2232:
	db	"SCE_SQL_COMMENTDOC",0
_2233:
	db	"SCE_SQL_NUMBER",0
_2234:
	db	"SCE_SQL_WORD",0
_2235:
	db	"SCE_SQL_STRING",0
_2236:
	db	"SCE_SQL_CHARACTER",0
_2237:
	db	"SCE_SQL_SQLPLUS",0
_2238:
	db	"SCE_SQL_SQLPLUS_PROMPT",0
_2239:
	db	"SCE_SQL_OPERATOR",0
_2240:
	db	"SCE_SQL_IDENTIFIER",0
_2241:
	db	"SCE_SQL_SQLPLUS_COMMENT",0
_2242:
	db	"SCE_SQL_COMMENTLINEDOC",0
_2243:
	db	"SCE_SQL_WORD2",0
_2244:
	db	"SCE_SQL_COMMENTDOCKEYWORD",0
_2245:
	db	"SCE_SQL_COMMENTDOCKEYWORDERROR",0
_2246:
	db	"SCE_SQL_USER1",0
_2247:
	db	"SCE_SQL_USER2",0
_2248:
	db	"SCE_SQL_USER3",0
_2249:
	db	"SCE_SQL_USER4",0
_2250:
	db	"SCE_SQL_QUOTEDIDENTIFIER",0
_2251:
	db	"SCE_ST_DEFAULT",0
_2252:
	db	"SCE_ST_STRING",0
_2253:
	db	"SCE_ST_NUMBER",0
_2254:
	db	"SCE_ST_COMMENT",0
_2255:
	db	"SCE_ST_SYMBOL",0
_2256:
	db	"SCE_ST_BINARY",0
_2257:
	db	"SCE_ST_BOOL",0
_2258:
	db	"SCE_ST_SELF",0
_2259:
	db	"SCE_ST_SUPER",0
_2260:
	db	"SCE_ST_NIL",0
_2261:
	db	"SCE_ST_GLOBAL",0
_2262:
	db	"SCE_ST_RETURN",0
_2263:
	db	"SCE_ST_SPECIAL",0
_2264:
	db	"SCE_ST_KWSEND",0
_2265:
	db	"SCE_ST_ASSIGN",0
_2266:
	db	"SCE_ST_CHARACTER",0
_2267:
	db	"SCE_ST_SPEC_SEL",0
_2268:
	db	"SCE_FS_DEFAULT",0
_2269:
	db	"SCE_FS_COMMENT",0
_2270:
	db	"SCE_FS_COMMENTLINE",0
_2271:
	db	"SCE_FS_COMMENTDOC",0
_2272:
	db	"SCE_FS_COMMENTLINEDOC",0
_2273:
	db	"SCE_FS_COMMENTDOCKEYWORD",0
_2274:
	db	"SCE_FS_COMMENTDOCKEYWORDERROR",0
_2275:
	db	"SCE_FS_KEYWORD",0
_2276:
	db	"SCE_FS_KEYWORD2",0
_2277:
	db	"SCE_FS_KEYWORD3",0
_2278:
	db	"SCE_FS_KEYWORD4",0
_2279:
	db	"SCE_FS_NUMBER",0
_2280:
	db	"SCE_FS_STRING",0
_2281:
	db	"SCE_FS_PREPROCESSOR",0
_2282:
	db	"SCE_FS_OPERATOR",0
_2283:
	db	"SCE_FS_IDENTIFIER",0
_2284:
	db	"SCE_FS_DATE",0
_2285:
	db	"SCE_FS_STRINGEOL",0
_2286:
	db	"SCE_FS_CONSTANT",0
_2287:
	db	"SCE_FS_ASM",0
_2288:
	db	"SCE_FS_LABEL",0
_2289:
	db	"SCE_FS_ERROR",0
_2290:
	db	"SCE_FS_HEXNUMBER",0
_2291:
	db	"SCE_FS_BINNUMBER",0
_2292:
	db	"SCE_CSOUND_DEFAULT",0
_2293:
	db	"SCE_CSOUND_COMMENT",0
_2294:
	db	"SCE_CSOUND_NUMBER",0
_2295:
	db	"SCE_CSOUND_OPERATOR",0
_2296:
	db	"SCE_CSOUND_INSTR",0
_2297:
	db	"SCE_CSOUND_IDENTIFIER",0
_2298:
	db	"SCE_CSOUND_OPCODE",0
_2299:
	db	"SCE_CSOUND_HEADERSTMT",0
_2300:
	db	"SCE_CSOUND_USERKEYWORD",0
_2301:
	db	"SCE_CSOUND_COMMENTBLOCK",0
_2302:
	db	"SCE_CSOUND_PARAM",0
_2303:
	db	"SCE_CSOUND_ARATE_VAR",0
_2304:
	db	"SCE_CSOUND_KRATE_VAR",0
_2305:
	db	"SCE_CSOUND_IRATE_VAR",0
_2306:
	db	"SCE_CSOUND_GLOBAL_VAR",0
_2307:
	db	"SCE_CSOUND_STRINGEOL",0
_2308:
	db	"SCE_INNO_DEFAULT",0
_2309:
	db	"SCE_INNO_COMMENT",0
_2310:
	db	"SCE_INNO_KEYWORD",0
_2311:
	db	"SCE_INNO_PARAMETER",0
_2312:
	db	"SCE_INNO_SECTION",0
_2313:
	db	"SCE_INNO_PREPROC",0
_2314:
	db	"SCE_INNO_PREPROC_INLINE",0
_2315:
	db	"SCE_INNO_COMMENT_PASCAL",0
_2316:
	db	"SCE_INNO_KEYWORD_PASCAL",0
_2317:
	db	"SCE_INNO_KEYWORD_USER",0
_2318:
	db	"SCE_INNO_STRING_DOUBLE",0
_2319:
	db	"SCE_INNO_STRING_SINGLE",0
_2320:
	db	"SCE_INNO_IDENTIFIER",0
_2321:
	db	"SCE_OPAL_SPACE",0
_2322:
	db	"SCE_OPAL_COMMENT_BLOCK",0
_2323:
	db	"SCE_OPAL_COMMENT_LINE",0
_2324:
	db	"SCE_OPAL_INTEGER",0
_2325:
	db	"SCE_OPAL_KEYWORD",0
_2326:
	db	"SCE_OPAL_SORT",0
_2327:
	db	"SCE_OPAL_STRING",0
_2328:
	db	"SCE_OPAL_PAR",0
_2329:
	db	"SCE_OPAL_BOOL_CONST",0
_2330:
	db	"SCE_OPAL_DEFAULT",0
_2331:
	db	"SCLEX_ASP",0
_2332:
	db	"SCLEX_PHP",0
	align	4
_3:
	dd	1
	dd	_4
	dd	1
	dd	_5
	dd	_6
	dd	_7
	dd	1
	dd	_8
	dd	_6
	dd	_9
	dd	1
	dd	_10
	dd	_6
	dd	_11
	dd	1
	dd	_12
	dd	_6
	dd	_13
	dd	1
	dd	_14
	dd	_6
	dd	_15
	dd	1
	dd	_16
	dd	_6
	dd	_17
	dd	1
	dd	_18
	dd	_6
	dd	_19
	dd	1
	dd	_20
	dd	_6
	dd	_21
	dd	1
	dd	_22
	dd	_6
	dd	_23
	dd	1
	dd	_24
	dd	_6
	dd	_25
	dd	1
	dd	_26
	dd	_6
	dd	_27
	dd	1
	dd	_28
	dd	_6
	dd	_29
	dd	1
	dd	_30
	dd	_6
	dd	_31
	dd	1
	dd	_32
	dd	_6
	dd	_33
	dd	1
	dd	_34
	dd	_6
	dd	_35
	dd	1
	dd	_36
	dd	_6
	dd	_37
	dd	1
	dd	_38
	dd	_6
	dd	_39
	dd	1
	dd	_40
	dd	_6
	dd	_41
	dd	1
	dd	_42
	dd	_6
	dd	_43
	dd	1
	dd	_44
	dd	_6
	dd	_45
	dd	1
	dd	_46
	dd	_6
	dd	_47
	dd	1
	dd	_48
	dd	_6
	dd	_49
	dd	1
	dd	_50
	dd	_6
	dd	_51
	dd	1
	dd	_52
	dd	_6
	dd	_53
	dd	1
	dd	_54
	dd	_6
	dd	_55
	dd	1
	dd	_56
	dd	_6
	dd	_57
	dd	1
	dd	_58
	dd	_6
	dd	_59
	dd	1
	dd	_60
	dd	_6
	dd	_61
	dd	1
	dd	_62
	dd	_6
	dd	_63
	dd	1
	dd	_64
	dd	_6
	dd	_65
	dd	1
	dd	_66
	dd	_6
	dd	_67
	dd	1
	dd	_68
	dd	_6
	dd	_69
	dd	1
	dd	_70
	dd	_6
	dd	_71
	dd	1
	dd	_72
	dd	_6
	dd	_73
	dd	1
	dd	_74
	dd	_6
	dd	_75
	dd	1
	dd	_76
	dd	_6
	dd	_53
	dd	1
	dd	_77
	dd	_6
	dd	_55
	dd	1
	dd	_78
	dd	_6
	dd	_57
	dd	1
	dd	_79
	dd	_6
	dd	_80
	dd	1
	dd	_81
	dd	_6
	dd	_82
	dd	1
	dd	_83
	dd	_6
	dd	_84
	dd	1
	dd	_85
	dd	_6
	dd	_86
	dd	1
	dd	_87
	dd	_6
	dd	_88
	dd	1
	dd	_89
	dd	_6
	dd	_90
	dd	1
	dd	_91
	dd	_6
	dd	_92
	dd	1
	dd	_93
	dd	_6
	dd	_94
	dd	1
	dd	_95
	dd	_6
	dd	_96
	dd	1
	dd	_97
	dd	_6
	dd	_98
	dd	1
	dd	_99
	dd	_6
	dd	_55
	dd	1
	dd	_100
	dd	_6
	dd	_101
	dd	1
	dd	_102
	dd	_6
	dd	_103
	dd	1
	dd	_104
	dd	_6
	dd	_105
	dd	1
	dd	_106
	dd	_6
	dd	_53
	dd	1
	dd	_107
	dd	_6
	dd	_55
	dd	1
	dd	_108
	dd	_6
	dd	_57
	dd	1
	dd	_109
	dd	_6
	dd	_110
	dd	1
	dd	_111
	dd	_6
	dd	_112
	dd	1
	dd	_113
	dd	_6
	dd	_114
	dd	1
	dd	_115
	dd	_6
	dd	_116
	dd	1
	dd	_117
	dd	_6
	dd	_118
	dd	1
	dd	_119
	dd	_6
	dd	_120
	dd	1
	dd	_121
	dd	_6
	dd	_122
	dd	1
	dd	_123
	dd	_6
	dd	_124
	dd	1
	dd	_125
	dd	_6
	dd	_126
	dd	1
	dd	_127
	dd	_6
	dd	_128
	dd	1
	dd	_129
	dd	_6
	dd	_130
	dd	1
	dd	_131
	dd	_6
	dd	_132
	dd	1
	dd	_133
	dd	_6
	dd	_134
	dd	1
	dd	_135
	dd	_6
	dd	_136
	dd	1
	dd	_137
	dd	_6
	dd	_138
	dd	1
	dd	_139
	dd	_6
	dd	_140
	dd	1
	dd	_141
	dd	_6
	dd	_142
	dd	1
	dd	_143
	dd	_6
	dd	_144
	dd	1
	dd	_145
	dd	_6
	dd	_146
	dd	1
	dd	_147
	dd	_6
	dd	_148
	dd	1
	dd	_149
	dd	_6
	dd	_150
	dd	1
	dd	_151
	dd	_6
	dd	_152
	dd	1
	dd	_153
	dd	_6
	dd	_154
	dd	1
	dd	_155
	dd	_6
	dd	_156
	dd	1
	dd	_157
	dd	_6
	dd	_158
	dd	1
	dd	_159
	dd	_6
	dd	_154
	dd	1
	dd	_160
	dd	_6
	dd	_156
	dd	1
	dd	_161
	dd	_6
	dd	_162
	dd	1
	dd	_163
	dd	_6
	dd	_164
	dd	1
	dd	_165
	dd	_6
	dd	_166
	dd	1
	dd	_167
	dd	_6
	dd	_168
	dd	1
	dd	_169
	dd	_6
	dd	_105
	dd	1
	dd	_170
	dd	_6
	dd	_171
	dd	1
	dd	_172
	dd	_6
	dd	_173
	dd	1
	dd	_174
	dd	_6
	dd	_175
	dd	1
	dd	_176
	dd	_6
	dd	_177
	dd	1
	dd	_178
	dd	_6
	dd	_179
	dd	1
	dd	_180
	dd	_6
	dd	_181
	dd	1
	dd	_182
	dd	_6
	dd	_183
	dd	1
	dd	_184
	dd	_6
	dd	_185
	dd	1
	dd	_186
	dd	_6
	dd	_187
	dd	1
	dd	_188
	dd	_6
	dd	_189
	dd	1
	dd	_190
	dd	_6
	dd	_191
	dd	1
	dd	_192
	dd	_6
	dd	_193
	dd	1
	dd	_194
	dd	_6
	dd	_53
	dd	1
	dd	_195
	dd	_6
	dd	_55
	dd	1
	dd	_196
	dd	_6
	dd	_197
	dd	1
	dd	_198
	dd	_6
	dd	_199
	dd	1
	dd	_200
	dd	_6
	dd	_201
	dd	1
	dd	_202
	dd	_6
	dd	_203
	dd	1
	dd	_204
	dd	_6
	dd	_205
	dd	1
	dd	_206
	dd	_6
	dd	_207
	dd	1
	dd	_208
	dd	_6
	dd	_209
	dd	1
	dd	_210
	dd	_6
	dd	_211
	dd	1
	dd	_212
	dd	_6
	dd	_213
	dd	1
	dd	_214
	dd	_6
	dd	_215
	dd	1
	dd	_216
	dd	_6
	dd	_217
	dd	1
	dd	_218
	dd	_6
	dd	_219
	dd	1
	dd	_220
	dd	_6
	dd	_221
	dd	1
	dd	_222
	dd	_6
	dd	_223
	dd	1
	dd	_224
	dd	_6
	dd	_225
	dd	1
	dd	_226
	dd	_6
	dd	_227
	dd	1
	dd	_228
	dd	_6
	dd	_229
	dd	1
	dd	_230
	dd	_6
	dd	_53
	dd	1
	dd	_231
	dd	_6
	dd	_55
	dd	1
	dd	_232
	dd	_6
	dd	_233
	dd	1
	dd	_234
	dd	_6
	dd	_235
	dd	1
	dd	_236
	dd	_6
	dd	_237
	dd	1
	dd	_238
	dd	_6
	dd	_239
	dd	1
	dd	_240
	dd	_6
	dd	_241
	dd	1
	dd	_242
	dd	_6
	dd	_243
	dd	1
	dd	_244
	dd	_6
	dd	_245
	dd	1
	dd	_246
	dd	_6
	dd	_247
	dd	1
	dd	_248
	dd	_6
	dd	_249
	dd	1
	dd	_250
	dd	_6
	dd	_251
	dd	1
	dd	_252
	dd	_6
	dd	_253
	dd	1
	dd	_254
	dd	_6
	dd	_57
	dd	1
	dd	_255
	dd	_6
	dd	_256
	dd	1
	dd	_257
	dd	_6
	dd	_258
	dd	1
	dd	_259
	dd	_6
	dd	_260
	dd	1
	dd	_261
	dd	_6
	dd	_262
	dd	1
	dd	_263
	dd	_6
	dd	_264
	dd	1
	dd	_265
	dd	_6
	dd	_266
	dd	1
	dd	_267
	dd	_6
	dd	_268
	dd	1
	dd	_269
	dd	_6
	dd	_270
	dd	1
	dd	_271
	dd	_6
	dd	_272
	dd	1
	dd	_273
	dd	_6
	dd	_274
	dd	1
	dd	_275
	dd	_6
	dd	_276
	dd	1
	dd	_277
	dd	_6
	dd	_278
	dd	1
	dd	_279
	dd	_6
	dd	_280
	dd	1
	dd	_281
	dd	_6
	dd	_282
	dd	1
	dd	_283
	dd	_6
	dd	_284
	dd	1
	dd	_285
	dd	_6
	dd	_286
	dd	1
	dd	_287
	dd	_6
	dd	_288
	dd	1
	dd	_289
	dd	_6
	dd	_53
	dd	1
	dd	_290
	dd	_6
	dd	_55
	dd	1
	dd	_291
	dd	_6
	dd	_57
	dd	1
	dd	_292
	dd	_6
	dd	_293
	dd	1
	dd	_294
	dd	_6
	dd	_295
	dd	1
	dd	_296
	dd	_6
	dd	_297
	dd	1
	dd	_298
	dd	_6
	dd	_299
	dd	1
	dd	_300
	dd	_6
	dd	_301
	dd	1
	dd	_302
	dd	_6
	dd	_303
	dd	1
	dd	_304
	dd	_6
	dd	_305
	dd	1
	dd	_306
	dd	_6
	dd	_307
	dd	1
	dd	_308
	dd	_6
	dd	_309
	dd	1
	dd	_310
	dd	_6
	dd	_311
	dd	1
	dd	_312
	dd	_6
	dd	_313
	dd	1
	dd	_314
	dd	_6
	dd	_315
	dd	1
	dd	_316
	dd	_6
	dd	_317
	dd	1
	dd	_318
	dd	_6
	dd	_319
	dd	1
	dd	_320
	dd	_6
	dd	_321
	dd	1
	dd	_322
	dd	_6
	dd	_323
	dd	1
	dd	_324
	dd	_6
	dd	_118
	dd	1
	dd	_325
	dd	_6
	dd	_53
	dd	1
	dd	_326
	dd	_6
	dd	_55
	dd	1
	dd	_327
	dd	_6
	dd	_57
	dd	1
	dd	_328
	dd	_6
	dd	_110
	dd	1
	dd	_329
	dd	_6
	dd	_112
	dd	1
	dd	_330
	dd	_6
	dd	_114
	dd	1
	dd	_331
	dd	_6
	dd	_116
	dd	1
	dd	_332
	dd	_6
	dd	_118
	dd	1
	dd	_333
	dd	_6
	dd	_213
	dd	1
	dd	_334
	dd	_6
	dd	_335
	dd	1
	dd	_336
	dd	_6
	dd	_253
	dd	1
	dd	_337
	dd	_6
	dd	_338
	dd	1
	dd	_339
	dd	_6
	dd	_340
	dd	1
	dd	_341
	dd	_6
	dd	_342
	dd	1
	dd	_343
	dd	_6
	dd	_344
	dd	1
	dd	_345
	dd	_6
	dd	_346
	dd	1
	dd	_347
	dd	_6
	dd	_348
	dd	1
	dd	_349
	dd	_6
	dd	_350
	dd	1
	dd	_351
	dd	_6
	dd	_352
	dd	1
	dd	_353
	dd	_6
	dd	_354
	dd	1
	dd	_355
	dd	_6
	dd	_356
	dd	1
	dd	_357
	dd	_6
	dd	_358
	dd	1
	dd	_359
	dd	_6
	dd	_360
	dd	1
	dd	_361
	dd	_6
	dd	_362
	dd	1
	dd	_363
	dd	_6
	dd	_364
	dd	1
	dd	_365
	dd	_6
	dd	_366
	dd	1
	dd	_367
	dd	_6
	dd	_368
	dd	1
	dd	_369
	dd	_6
	dd	_370
	dd	1
	dd	_371
	dd	_6
	dd	_372
	dd	1
	dd	_373
	dd	_6
	dd	_374
	dd	1
	dd	_375
	dd	_6
	dd	_376
	dd	1
	dd	_377
	dd	_6
	dd	_378
	dd	1
	dd	_379
	dd	_6
	dd	_380
	dd	1
	dd	_381
	dd	_6
	dd	_382
	dd	1
	dd	_383
	dd	_6
	dd	_384
	dd	1
	dd	_385
	dd	_6
	dd	_386
	dd	1
	dd	_387
	dd	_6
	dd	_388
	dd	1
	dd	_389
	dd	_6
	dd	_390
	dd	1
	dd	_391
	dd	_6
	dd	_392
	dd	1
	dd	_393
	dd	_6
	dd	_394
	dd	1
	dd	_395
	dd	_6
	dd	_396
	dd	1
	dd	_397
	dd	_6
	dd	_398
	dd	1
	dd	_399
	dd	_6
	dd	_400
	dd	1
	dd	_401
	dd	_6
	dd	_402
	dd	1
	dd	_403
	dd	_6
	dd	_404
	dd	1
	dd	_405
	dd	_6
	dd	_406
	dd	1
	dd	_407
	dd	_6
	dd	_408
	dd	1
	dd	_409
	dd	_6
	dd	_410
	dd	1
	dd	_411
	dd	_6
	dd	_412
	dd	1
	dd	_413
	dd	_6
	dd	_414
	dd	1
	dd	_415
	dd	_6
	dd	_416
	dd	1
	dd	_417
	dd	_6
	dd	_418
	dd	1
	dd	_419
	dd	_6
	dd	_420
	dd	1
	dd	_421
	dd	_6
	dd	_422
	dd	1
	dd	_423
	dd	_6
	dd	_424
	dd	1
	dd	_425
	dd	_6
	dd	_426
	dd	1
	dd	_427
	dd	_6
	dd	_428
	dd	1
	dd	_429
	dd	_6
	dd	_430
	dd	1
	dd	_431
	dd	_6
	dd	_432
	dd	1
	dd	_433
	dd	_6
	dd	_434
	dd	1
	dd	_435
	dd	_6
	dd	_436
	dd	1
	dd	_437
	dd	_6
	dd	_438
	dd	1
	dd	_439
	dd	_6
	dd	_440
	dd	1
	dd	_441
	dd	_6
	dd	_442
	dd	1
	dd	_443
	dd	_6
	dd	_444
	dd	1
	dd	_445
	dd	_6
	dd	_446
	dd	1
	dd	_447
	dd	_6
	dd	_448
	dd	1
	dd	_449
	dd	_6
	dd	_450
	dd	1
	dd	_451
	dd	_6
	dd	_452
	dd	1
	dd	_453
	dd	_6
	dd	_454
	dd	1
	dd	_455
	dd	_6
	dd	_456
	dd	1
	dd	_457
	dd	_6
	dd	_458
	dd	1
	dd	_459
	dd	_6
	dd	_460
	dd	1
	dd	_461
	dd	_6
	dd	_462
	dd	1
	dd	_463
	dd	_6
	dd	_464
	dd	1
	dd	_465
	dd	_6
	dd	_466
	dd	1
	dd	_467
	dd	_6
	dd	_468
	dd	1
	dd	_469
	dd	_6
	dd	_470
	dd	1
	dd	_471
	dd	_6
	dd	_472
	dd	1
	dd	_473
	dd	_6
	dd	_474
	dd	1
	dd	_475
	dd	_6
	dd	_476
	dd	1
	dd	_477
	dd	_6
	dd	_478
	dd	1
	dd	_479
	dd	_6
	dd	_480
	dd	1
	dd	_481
	dd	_6
	dd	_53
	dd	1
	dd	_482
	dd	_6
	dd	_55
	dd	1
	dd	_483
	dd	_6
	dd	_57
	dd	1
	dd	_484
	dd	_6
	dd	_110
	dd	1
	dd	_485
	dd	_6
	dd	_112
	dd	1
	dd	_486
	dd	_6
	dd	_487
	dd	1
	dd	_488
	dd	_6
	dd	_489
	dd	1
	dd	_490
	dd	_6
	dd	_57
	dd	1
	dd	_491
	dd	_6
	dd	_112
	dd	1
	dd	_492
	dd	_6
	dd	_493
	dd	1
	dd	_494
	dd	_6
	dd	_495
	dd	1
	dd	_496
	dd	_6
	dd	_497
	dd	1
	dd	_498
	dd	_6
	dd	_499
	dd	1
	dd	_500
	dd	_6
	dd	_501
	dd	1
	dd	_502
	dd	_6
	dd	_503
	dd	1
	dd	_504
	dd	_6
	dd	_505
	dd	1
	dd	_506
	dd	_6
	dd	_507
	dd	1
	dd	_508
	dd	_6
	dd	_509
	dd	1
	dd	_510
	dd	_6
	dd	_511
	dd	1
	dd	_512
	dd	_6
	dd	_513
	dd	1
	dd	_514
	dd	_6
	dd	_515
	dd	1
	dd	_516
	dd	_6
	dd	_517
	dd	1
	dd	_518
	dd	_6
	dd	_519
	dd	1
	dd	_520
	dd	_6
	dd	_521
	dd	1
	dd	_522
	dd	_6
	dd	_523
	dd	1
	dd	_524
	dd	_6
	dd	_525
	dd	1
	dd	_526
	dd	_6
	dd	_527
	dd	1
	dd	_528
	dd	_6
	dd	_529
	dd	1
	dd	_530
	dd	_6
	dd	_531
	dd	1
	dd	_532
	dd	_6
	dd	_533
	dd	1
	dd	_534
	dd	_6
	dd	_535
	dd	1
	dd	_536
	dd	_6
	dd	_537
	dd	1
	dd	_538
	dd	_6
	dd	_539
	dd	1
	dd	_540
	dd	_6
	dd	_541
	dd	1
	dd	_542
	dd	_6
	dd	_543
	dd	1
	dd	_544
	dd	_6
	dd	_545
	dd	1
	dd	_546
	dd	_6
	dd	_547
	dd	1
	dd	_548
	dd	_6
	dd	_549
	dd	1
	dd	_550
	dd	_6
	dd	_551
	dd	1
	dd	_552
	dd	_6
	dd	_553
	dd	1
	dd	_554
	dd	_6
	dd	_555
	dd	1
	dd	_556
	dd	_6
	dd	_557
	dd	1
	dd	_558
	dd	_6
	dd	_559
	dd	1
	dd	_560
	dd	_6
	dd	_561
	dd	1
	dd	_562
	dd	_6
	dd	_563
	dd	1
	dd	_564
	dd	_6
	dd	_565
	dd	1
	dd	_566
	dd	_6
	dd	_567
	dd	1
	dd	_568
	dd	_6
	dd	_569
	dd	1
	dd	_570
	dd	_6
	dd	_571
	dd	1
	dd	_572
	dd	_6
	dd	_573
	dd	1
	dd	_574
	dd	_6
	dd	_575
	dd	1
	dd	_576
	dd	_6
	dd	_577
	dd	1
	dd	_578
	dd	_6
	dd	_579
	dd	1
	dd	_580
	dd	_6
	dd	_581
	dd	1
	dd	_582
	dd	_6
	dd	_583
	dd	1
	dd	_584
	dd	_6
	dd	_585
	dd	1
	dd	_586
	dd	_6
	dd	_587
	dd	1
	dd	_588
	dd	_6
	dd	_589
	dd	1
	dd	_590
	dd	_6
	dd	_591
	dd	1
	dd	_592
	dd	_6
	dd	_593
	dd	1
	dd	_594
	dd	_6
	dd	_595
	dd	1
	dd	_596
	dd	_6
	dd	_597
	dd	1
	dd	_598
	dd	_6
	dd	_599
	dd	1
	dd	_600
	dd	_6
	dd	_601
	dd	1
	dd	_602
	dd	_6
	dd	_603
	dd	1
	dd	_604
	dd	_6
	dd	_605
	dd	1
	dd	_606
	dd	_6
	dd	_607
	dd	1
	dd	_608
	dd	_6
	dd	_609
	dd	1
	dd	_610
	dd	_6
	dd	_611
	dd	1
	dd	_612
	dd	_6
	dd	_613
	dd	1
	dd	_614
	dd	_6
	dd	_615
	dd	1
	dd	_616
	dd	_6
	dd	_617
	dd	1
	dd	_618
	dd	_6
	dd	_619
	dd	1
	dd	_620
	dd	_6
	dd	_621
	dd	1
	dd	_622
	dd	_6
	dd	_623
	dd	1
	dd	_624
	dd	_6
	dd	_625
	dd	1
	dd	_626
	dd	_6
	dd	_627
	dd	1
	dd	_628
	dd	_6
	dd	_629
	dd	1
	dd	_630
	dd	_6
	dd	_631
	dd	1
	dd	_632
	dd	_6
	dd	_633
	dd	1
	dd	_634
	dd	_6
	dd	_635
	dd	1
	dd	_636
	dd	_6
	dd	_637
	dd	1
	dd	_638
	dd	_6
	dd	_639
	dd	1
	dd	_640
	dd	_6
	dd	_641
	dd	1
	dd	_642
	dd	_6
	dd	_643
	dd	1
	dd	_644
	dd	_6
	dd	_645
	dd	1
	dd	_646
	dd	_6
	dd	_647
	dd	1
	dd	_648
	dd	_6
	dd	_649
	dd	1
	dd	_650
	dd	_6
	dd	_651
	dd	1
	dd	_652
	dd	_6
	dd	_653
	dd	1
	dd	_654
	dd	_6
	dd	_655
	dd	1
	dd	_656
	dd	_6
	dd	_657
	dd	1
	dd	_658
	dd	_6
	dd	_57
	dd	1
	dd	_659
	dd	_6
	dd	_112
	dd	1
	dd	_660
	dd	_6
	dd	_120
	dd	1
	dd	_661
	dd	_6
	dd	_136
	dd	1
	dd	_662
	dd	_6
	dd	_335
	dd	1
	dd	_663
	dd	_6
	dd	_55
	dd	1
	dd	_664
	dd	_6
	dd	_665
	dd	1
	dd	_666
	dd	_6
	dd	_667
	dd	1
	dd	_668
	dd	_6
	dd	_669
	dd	1
	dd	_670
	dd	_6
	dd	_671
	dd	1
	dd	_672
	dd	_6
	dd	_673
	dd	1
	dd	_674
	dd	_6
	dd	_675
	dd	1
	dd	_676
	dd	_6
	dd	_677
	dd	1
	dd	_678
	dd	_6
	dd	_679
	dd	1
	dd	_680
	dd	_6
	dd	_681
	dd	1
	dd	_682
	dd	_6
	dd	_683
	dd	1
	dd	_684
	dd	_6
	dd	_685
	dd	1
	dd	_686
	dd	_6
	dd	_53
	dd	1
	dd	_687
	dd	_6
	dd	_55
	dd	1
	dd	_688
	dd	_6
	dd	_57
	dd	1
	dd	_689
	dd	_6
	dd	_690
	dd	1
	dd	_691
	dd	_6
	dd	_692
	dd	1
	dd	_693
	dd	_6
	dd	_53
	dd	1
	dd	_694
	dd	_6
	dd	_55
	dd	1
	dd	_695
	dd	_6
	dd	_57
	dd	1
	dd	_696
	dd	_6
	dd	_697
	dd	1
	dd	_698
	dd	_6
	dd	_699
	dd	1
	dd	_700
	dd	_6
	dd	_53
	dd	1
	dd	_701
	dd	_6
	dd	_55
	dd	1
	dd	_702
	dd	_6
	dd	_57
	dd	1
	dd	_703
	dd	_6
	dd	_704
	dd	1
	dd	_705
	dd	_6
	dd	_706
	dd	1
	dd	_707
	dd	_6
	dd	_708
	dd	1
	dd	_709
	dd	_6
	dd	_710
	dd	1
	dd	_711
	dd	_6
	dd	_53
	dd	1
	dd	_712
	dd	_6
	dd	_55
	dd	1
	dd	_713
	dd	_6
	dd	_57
	dd	1
	dd	_714
	dd	_6
	dd	_110
	dd	1
	dd	_715
	dd	_6
	dd	_716
	dd	1
	dd	_717
	dd	_6
	dd	_718
	dd	1
	dd	_719
	dd	_6
	dd	_720
	dd	1
	dd	_721
	dd	_6
	dd	_722
	dd	1
	dd	_723
	dd	_6
	dd	_724
	dd	1
	dd	_725
	dd	_6
	dd	_726
	dd	1
	dd	_727
	dd	_6
	dd	_728
	dd	1
	dd	_729
	dd	_6
	dd	_730
	dd	1
	dd	_731
	dd	_6
	dd	_732
	dd	1
	dd	_733
	dd	_6
	dd	_734
	dd	1
	dd	_735
	dd	_6
	dd	_736
	dd	1
	dd	_737
	dd	_6
	dd	_738
	dd	1
	dd	_739
	dd	_6
	dd	_740
	dd	1
	dd	_741
	dd	_6
	dd	_742
	dd	1
	dd	_743
	dd	_6
	dd	_744
	dd	1
	dd	_745
	dd	_6
	dd	_746
	dd	1
	dd	_747
	dd	_6
	dd	_748
	dd	1
	dd	_749
	dd	_6
	dd	_750
	dd	1
	dd	_751
	dd	_6
	dd	_752
	dd	1
	dd	_753
	dd	_6
	dd	_754
	dd	1
	dd	_755
	dd	_6
	dd	_756
	dd	1
	dd	_757
	dd	_6
	dd	_758
	dd	1
	dd	_759
	dd	_6
	dd	_760
	dd	1
	dd	_761
	dd	_6
	dd	_762
	dd	1
	dd	_763
	dd	_6
	dd	_764
	dd	1
	dd	_765
	dd	_6
	dd	_766
	dd	1
	dd	_767
	dd	_6
	dd	_768
	dd	1
	dd	_769
	dd	_6
	dd	_770
	dd	1
	dd	_771
	dd	_6
	dd	_772
	dd	1
	dd	_773
	dd	_6
	dd	_774
	dd	1
	dd	_775
	dd	_6
	dd	_776
	dd	1
	dd	_777
	dd	_6
	dd	_778
	dd	1
	dd	_779
	dd	_6
	dd	_780
	dd	1
	dd	_781
	dd	_6
	dd	_782
	dd	1
	dd	_783
	dd	_6
	dd	_784
	dd	1
	dd	_785
	dd	_6
	dd	_786
	dd	1
	dd	_787
	dd	_6
	dd	_788
	dd	1
	dd	_789
	dd	_6
	dd	_790
	dd	1
	dd	_791
	dd	_6
	dd	_792
	dd	1
	dd	_793
	dd	_6
	dd	_794
	dd	1
	dd	_795
	dd	_6
	dd	_796
	dd	1
	dd	_797
	dd	_6
	dd	_798
	dd	1
	dd	_799
	dd	_6
	dd	_800
	dd	1
	dd	_801
	dd	_6
	dd	_802
	dd	1
	dd	_803
	dd	_6
	dd	_804
	dd	1
	dd	_805
	dd	_6
	dd	_806
	dd	1
	dd	_807
	dd	_6
	dd	_808
	dd	1
	dd	_809
	dd	_6
	dd	_810
	dd	1
	dd	_811
	dd	_6
	dd	_812
	dd	1
	dd	_813
	dd	_6
	dd	_814
	dd	1
	dd	_815
	dd	_6
	dd	_816
	dd	1
	dd	_817
	dd	_6
	dd	_818
	dd	1
	dd	_819
	dd	_6
	dd	_820
	dd	1
	dd	_821
	dd	_6
	dd	_822
	dd	1
	dd	_823
	dd	_6
	dd	_824
	dd	1
	dd	_825
	dd	_6
	dd	_826
	dd	1
	dd	_827
	dd	_6
	dd	_828
	dd	1
	dd	_829
	dd	_6
	dd	_830
	dd	1
	dd	_831
	dd	_6
	dd	_832
	dd	1
	dd	_833
	dd	_6
	dd	_834
	dd	1
	dd	_835
	dd	_6
	dd	_836
	dd	1
	dd	_837
	dd	_6
	dd	_838
	dd	1
	dd	_839
	dd	_6
	dd	_840
	dd	1
	dd	_841
	dd	_6
	dd	_842
	dd	1
	dd	_843
	dd	_6
	dd	_844
	dd	1
	dd	_845
	dd	_6
	dd	_846
	dd	1
	dd	_847
	dd	_6
	dd	_848
	dd	1
	dd	_849
	dd	_6
	dd	_850
	dd	1
	dd	_851
	dd	_6
	dd	_852
	dd	1
	dd	_853
	dd	_6
	dd	_854
	dd	1
	dd	_855
	dd	_6
	dd	_856
	dd	1
	dd	_857
	dd	_6
	dd	_858
	dd	1
	dd	_859
	dd	_6
	dd	_860
	dd	1
	dd	_861
	dd	_6
	dd	_862
	dd	1
	dd	_863
	dd	_6
	dd	_864
	dd	1
	dd	_865
	dd	_6
	dd	_866
	dd	1
	dd	_867
	dd	_6
	dd	_868
	dd	1
	dd	_869
	dd	_6
	dd	_870
	dd	1
	dd	_871
	dd	_6
	dd	_872
	dd	1
	dd	_873
	dd	_6
	dd	_874
	dd	1
	dd	_875
	dd	_6
	dd	_876
	dd	1
	dd	_877
	dd	_6
	dd	_878
	dd	1
	dd	_879
	dd	_6
	dd	_880
	dd	1
	dd	_881
	dd	_6
	dd	_882
	dd	1
	dd	_883
	dd	_6
	dd	_884
	dd	1
	dd	_885
	dd	_6
	dd	_53
	dd	1
	dd	_886
	dd	_6
	dd	_55
	dd	1
	dd	_887
	dd	_6
	dd	_57
	dd	1
	dd	_888
	dd	_6
	dd	_889
	dd	1
	dd	_890
	dd	_6
	dd	_891
	dd	1
	dd	_892
	dd	_6
	dd	_893
	dd	1
	dd	_894
	dd	_6
	dd	_895
	dd	1
	dd	_896
	dd	_6
	dd	_897
	dd	1
	dd	_898
	dd	_6
	dd	_899
	dd	1
	dd	_900
	dd	_6
	dd	_901
	dd	1
	dd	_902
	dd	_6
	dd	_903
	dd	1
	dd	_904
	dd	_6
	dd	_905
	dd	1
	dd	_906
	dd	_6
	dd	_907
	dd	1
	dd	_908
	dd	_6
	dd	_909
	dd	1
	dd	_910
	dd	_6
	dd	_911
	dd	1
	dd	_912
	dd	_6
	dd	_913
	dd	1
	dd	_914
	dd	_6
	dd	_915
	dd	1
	dd	_916
	dd	_6
	dd	_917
	dd	1
	dd	_918
	dd	_6
	dd	_919
	dd	1
	dd	_920
	dd	_6
	dd	_921
	dd	1
	dd	_922
	dd	_6
	dd	_923
	dd	1
	dd	_924
	dd	_6
	dd	_925
	dd	1
	dd	_926
	dd	_6
	dd	_927
	dd	1
	dd	_928
	dd	_6
	dd	_929
	dd	1
	dd	_930
	dd	_6
	dd	_931
	dd	1
	dd	_932
	dd	_6
	dd	_933
	dd	1
	dd	_934
	dd	_6
	dd	_935
	dd	1
	dd	_936
	dd	_6
	dd	_7
	dd	1
	dd	_937
	dd	_6
	dd	_112
	dd	1
	dd	_938
	dd	_6
	dd	_939
	dd	1
	dd	_940
	dd	_6
	dd	_941
	dd	1
	dd	_942
	dd	_6
	dd	_943
	dd	1
	dd	_944
	dd	_6
	dd	_945
	dd	1
	dd	_946
	dd	_6
	dd	_947
	dd	1
	dd	_948
	dd	_6
	dd	_949
	dd	1
	dd	_950
	dd	_6
	dd	_951
	dd	1
	dd	_952
	dd	_6
	dd	_953
	dd	1
	dd	_954
	dd	_6
	dd	_55
	dd	1
	dd	_955
	dd	_6
	dd	_112
	dd	1
	dd	_956
	dd	_6
	dd	_957
	dd	1
	dd	_958
	dd	_6
	dd	_959
	dd	1
	dd	_960
	dd	_6
	dd	_961
	dd	1
	dd	_962
	dd	_6
	dd	_963
	dd	1
	dd	_964
	dd	_6
	dd	_965
	dd	1
	dd	_966
	dd	_6
	dd	_967
	dd	1
	dd	_968
	dd	_6
	dd	_969
	dd	1
	dd	_970
	dd	_6
	dd	_55
	dd	1
	dd	_971
	dd	_6
	dd	_112
	dd	1
	dd	_972
	dd	_6
	dd	_136
	dd	1
	dd	_973
	dd	_6
	dd	_120
	dd	1
	dd	_974
	dd	_6
	dd	_975
	dd	1
	dd	_976
	dd	_6
	dd	_977
	dd	1
	dd	_978
	dd	_6
	dd	_979
	dd	1
	dd	_980
	dd	_6
	dd	_981
	dd	1
	dd	_982
	dd	_6
	dd	_983
	dd	1
	dd	_984
	dd	_6
	dd	_985
	dd	1
	dd	_986
	dd	_6
	dd	_987
	dd	1
	dd	_988
	dd	_6
	dd	_989
	dd	1
	dd	_990
	dd	_6
	dd	_991
	dd	1
	dd	_992
	dd	_6
	dd	_993
	dd	1
	dd	_994
	dd	_6
	dd	_995
	dd	1
	dd	_996
	dd	_6
	dd	_997
	dd	1
	dd	_998
	dd	_6
	dd	_999
	dd	1
	dd	_1000
	dd	_6
	dd	_1001
	dd	1
	dd	_1002
	dd	_6
	dd	_1003
	dd	1
	dd	_1004
	dd	_6
	dd	_1005
	dd	1
	dd	_1006
	dd	_6
	dd	_53
	dd	1
	dd	_1007
	dd	_6
	dd	_55
	dd	1
	dd	_1008
	dd	_6
	dd	_57
	dd	1
	dd	_1009
	dd	_6
	dd	_1010
	dd	1
	dd	_1011
	dd	_6
	dd	_1012
	dd	1
	dd	_1013
	dd	_6
	dd	_1014
	dd	1
	dd	_1015
	dd	_6
	dd	_1016
	dd	1
	dd	_1017
	dd	_6
	dd	_1018
	dd	1
	dd	_1019
	dd	_6
	dd	_1020
	dd	1
	dd	_1021
	dd	_6
	dd	_1022
	dd	1
	dd	_1023
	dd	_6
	dd	_1024
	dd	1
	dd	_1025
	dd	_6
	dd	_1026
	dd	1
	dd	_1027
	dd	_6
	dd	_1028
	dd	1
	dd	_1029
	dd	_6
	dd	_1030
	dd	1
	dd	_1031
	dd	_6
	dd	_1032
	dd	1
	dd	_1033
	dd	_6
	dd	_1034
	dd	1
	dd	_1035
	dd	_6
	dd	_1036
	dd	1
	dd	_1037
	dd	_6
	dd	_1038
	dd	1
	dd	_1039
	dd	_6
	dd	_1040
	dd	1
	dd	_1041
	dd	_6
	dd	_1042
	dd	1
	dd	_1043
	dd	_6
	dd	_1044
	dd	1
	dd	_1045
	dd	_6
	dd	_1046
	dd	1
	dd	_1047
	dd	_6
	dd	_1048
	dd	1
	dd	_1049
	dd	_6
	dd	_1050
	dd	1
	dd	_1051
	dd	_6
	dd	_1052
	dd	1
	dd	_1053
	dd	_6
	dd	_1054
	dd	1
	dd	_1055
	dd	_6
	dd	_1056
	dd	1
	dd	_1057
	dd	_6
	dd	_1058
	dd	1
	dd	_1059
	dd	_6
	dd	_1060
	dd	1
	dd	_1061
	dd	_6
	dd	_1062
	dd	1
	dd	_1063
	dd	_6
	dd	_1064
	dd	1
	dd	_1065
	dd	_6
	dd	_1066
	dd	1
	dd	_1067
	dd	_6
	dd	_1068
	dd	1
	dd	_1069
	dd	_6
	dd	_1070
	dd	1
	dd	_1071
	dd	_6
	dd	_1072
	dd	1
	dd	_1073
	dd	_6
	dd	_1074
	dd	1
	dd	_1075
	dd	_6
	dd	_1076
	dd	1
	dd	_1077
	dd	_6
	dd	_1078
	dd	1
	dd	_1079
	dd	_6
	dd	_53
	dd	1
	dd	_1080
	dd	_6
	dd	_247
	dd	1
	dd	_1081
	dd	_6
	dd	_1082
	dd	1
	dd	_1083
	dd	_6
	dd	_1084
	dd	1
	dd	_1085
	dd	_6
	dd	_1086
	dd	1
	dd	_1087
	dd	_6
	dd	_1088
	dd	1
	dd	_1089
	dd	_6
	dd	_1090
	dd	1
	dd	_1091
	dd	_6
	dd	_1092
	dd	1
	dd	_1093
	dd	_6
	dd	_1094
	dd	1
	dd	_1095
	dd	_6
	dd	_1096
	dd	1
	dd	_1097
	dd	_6
	dd	_1098
	dd	1
	dd	_1099
	dd	_6
	dd	_120
	dd	1
	dd	_1100
	dd	_6
	dd	_1101
	dd	1
	dd	_1102
	dd	_6
	dd	_1103
	dd	1
	dd	_1104
	dd	_6
	dd	_1105
	dd	1
	dd	_1106
	dd	_6
	dd	_1107
	dd	1
	dd	_1108
	dd	_6
	dd	_1109
	dd	1
	dd	_1110
	dd	_6
	dd	_1111
	dd	1
	dd	_1112
	dd	_6
	dd	_1113
	dd	1
	dd	_1114
	dd	_6
	dd	_55
	dd	1
	dd	_1115
	dd	_6
	dd	_57
	dd	1
	dd	_1116
	dd	_6
	dd	_112
	dd	1
	dd	_1117
	dd	_6
	dd	_120
	dd	1
	dd	_1118
	dd	_6
	dd	_136
	dd	1
	dd	_1119
	dd	_6
	dd	_213
	dd	1
	dd	_1120
	dd	_6
	dd	_335
	dd	1
	dd	_1121
	dd	_6
	dd	_253
	dd	1
	dd	_1122
	dd	_6
	dd	_1082
	dd	1
	dd	_1123
	dd	_6
	dd	_1124
	dd	1
	dd	_1125
	dd	_6
	dd	_621
	dd	1
	dd	_1126
	dd	_6
	dd	_189
	dd	1
	dd	_1127
	dd	_6
	dd	_623
	dd	1
	dd	_1128
	dd	_6
	dd	_1129
	dd	1
	dd	_1130
	dd	_6
	dd	_1131
	dd	1
	dd	_1132
	dd	_6
	dd	_1124
	dd	1
	dd	_1133
	dd	_6
	dd	_1082
	dd	1
	dd	_1134
	dd	_6
	dd	_1135
	dd	1
	dd	_1136
	dd	_6
	dd	_1137
	dd	1
	dd	_1138
	dd	_6
	dd	_1139
	dd	1
	dd	_1140
	dd	_6
	dd	_1141
	dd	1
	dd	_1142
	dd	_6
	dd	_1143
	dd	1
	dd	_1144
	dd	_6
	dd	_1145
	dd	1
	dd	_1146
	dd	_6
	dd	_1147
	dd	1
	dd	_1148
	dd	_6
	dd	_1149
	dd	1
	dd	_1150
	dd	_6
	dd	_1151
	dd	1
	dd	_1152
	dd	_6
	dd	_1153
	dd	1
	dd	_1154
	dd	_6
	dd	_118
	dd	1
	dd	_1155
	dd	_6
	dd	_120
	dd	1
	dd	_1156
	dd	_6
	dd	_122
	dd	1
	dd	_1157
	dd	_6
	dd	_130
	dd	1
	dd	_1158
	dd	_6
	dd	_1159
	dd	1
	dd	_1160
	dd	_6
	dd	_1161
	dd	1
	dd	_1162
	dd	_6
	dd	_1163
	dd	1
	dd	_1164
	dd	_6
	dd	_53
	dd	1
	dd	_1165
	dd	_6
	dd	_55
	dd	1
	dd	_1166
	dd	_6
	dd	_57
	dd	1
	dd	_1167
	dd	_6
	dd	_112
	dd	1
	dd	_1168
	dd	_6
	dd	_9
	dd	1
	dd	_1169
	dd	_6
	dd	_15
	dd	1
	dd	_1170
	dd	_6
	dd	_17
	dd	1
	dd	_1171
	dd	_6
	dd	_19
	dd	1
	dd	_1172
	dd	_6
	dd	_21
	dd	1
	dd	_1173
	dd	_6
	dd	_23
	dd	1
	dd	_1174
	dd	_6
	dd	_25
	dd	1
	dd	_1175
	dd	_6
	dd	_27
	dd	1
	dd	_1176
	dd	_6
	dd	_29
	dd	1
	dd	_1177
	dd	_6
	dd	_31
	dd	1
	dd	_1178
	dd	_6
	dd	_33
	dd	1
	dd	_1179
	dd	_6
	dd	_35
	dd	1
	dd	_1180
	dd	_6
	dd	_39
	dd	1
	dd	_1181
	dd	_6
	dd	_41
	dd	1
	dd	_1182
	dd	_6
	dd	_43
	dd	1
	dd	_1183
	dd	_6
	dd	_45
	dd	1
	dd	_1184
	dd	_6
	dd	_47
	dd	1
	dd	_1185
	dd	_6
	dd	_49
	dd	1
	dd	_1186
	dd	_6
	dd	_51
	dd	1
	dd	_1187
	dd	_6
	dd	_59
	dd	1
	dd	_1188
	dd	_6
	dd	_61
	dd	1
	dd	_1189
	dd	_6
	dd	_63
	dd	1
	dd	_1190
	dd	_6
	dd	_1191
	dd	1
	dd	_1192
	dd	_6
	dd	_57
	dd	1
	dd	_1193
	dd	_6
	dd	_120
	dd	1
	dd	_1194
	dd	_6
	dd	_136
	dd	1
	dd	_1195
	dd	_6
	dd	_37
	dd	1
	dd	_1196
	dd	_6
	dd	_27
	dd	1
	dd	_1197
	dd	_6
	dd	_53
	dd	1
	dd	_1198
	dd	_6
	dd	_55
	dd	1
	dd	_1199
	dd	_6
	dd	_57
	dd	1
	dd	_1200
	dd	_6
	dd	_110
	dd	1
	dd	_1201
	dd	_6
	dd	_112
	dd	1
	dd	_1202
	dd	_6
	dd	_114
	dd	1
	dd	_1203
	dd	_6
	dd	_116
	dd	1
	dd	_1204
	dd	_6
	dd	_118
	dd	1
	dd	_1205
	dd	_6
	dd	_120
	dd	1
	dd	_1206
	dd	_6
	dd	_122
	dd	1
	dd	_1207
	dd	_6
	dd	_124
	dd	1
	dd	_1208
	dd	_6
	dd	_126
	dd	1
	dd	_1209
	dd	_6
	dd	_128
	dd	1
	dd	_1210
	dd	_6
	dd	_130
	dd	1
	dd	_1211
	dd	_6
	dd	_132
	dd	1
	dd	_1212
	dd	_6
	dd	_134
	dd	1
	dd	_1213
	dd	_6
	dd	_136
	dd	1
	dd	_1214
	dd	_6
	dd	_138
	dd	1
	dd	_1215
	dd	_6
	dd	_140
	dd	1
	dd	_1216
	dd	_6
	dd	_142
	dd	1
	dd	_1217
	dd	_6
	dd	_144
	dd	1
	dd	_1218
	dd	_6
	dd	_146
	dd	1
	dd	_1219
	dd	_6
	dd	_148
	dd	1
	dd	_1220
	dd	_6
	dd	_150
	dd	1
	dd	_1221
	dd	_6
	dd	_152
	dd	1
	dd	_1222
	dd	_6
	dd	_154
	dd	1
	dd	_1223
	dd	_6
	dd	_156
	dd	1
	dd	_1224
	dd	_6
	dd	_162
	dd	1
	dd	_1225
	dd	_6
	dd	_164
	dd	1
	dd	_1226
	dd	_6
	dd	_105
	dd	1
	dd	_1227
	dd	_6
	dd	_213
	dd	1
	dd	_1228
	dd	_6
	dd	_215
	dd	1
	dd	_1229
	dd	_6
	dd	_217
	dd	1
	dd	_1230
	dd	_6
	dd	_219
	dd	1
	dd	_1231
	dd	_6
	dd	_221
	dd	1
	dd	_1232
	dd	_6
	dd	_223
	dd	1
	dd	_1233
	dd	_6
	dd	_225
	dd	1
	dd	_1234
	dd	_6
	dd	_227
	dd	1
	dd	_1235
	dd	_6
	dd	_1236
	dd	1
	dd	_1237
	dd	_6
	dd	_1238
	dd	1
	dd	_1239
	dd	_6
	dd	_1240
	dd	1
	dd	_1241
	dd	_6
	dd	_1242
	dd	1
	dd	_1243
	dd	_6
	dd	_1244
	dd	1
	dd	_1245
	dd	_6
	dd	_1246
	dd	1
	dd	_1247
	dd	_6
	dd	_1248
	dd	1
	dd	_1249
	dd	_6
	dd	_1250
	dd	1
	dd	_1251
	dd	_6
	dd	_1252
	dd	1
	dd	_1253
	dd	_6
	dd	_1254
	dd	1
	dd	_1255
	dd	_6
	dd	_1256
	dd	1
	dd	_1257
	dd	_6
	dd	_1258
	dd	1
	dd	_1259
	dd	_6
	dd	_1260
	dd	1
	dd	_1261
	dd	_6
	dd	_1262
	dd	1
	dd	_1263
	dd	_6
	dd	_1264
	dd	1
	dd	_1265
	dd	_6
	dd	_1266
	dd	1
	dd	_1267
	dd	_6
	dd	_1268
	dd	1
	dd	_1269
	dd	_6
	dd	_1270
	dd	1
	dd	_1271
	dd	_6
	dd	_1272
	dd	1
	dd	_1273
	dd	_6
	dd	_1274
	dd	1
	dd	_1275
	dd	_6
	dd	_1276
	dd	1
	dd	_1277
	dd	_6
	dd	_1278
	dd	1
	dd	_1279
	dd	_6
	dd	_1280
	dd	1
	dd	_1281
	dd	_6
	dd	_1282
	dd	1
	dd	_1283
	dd	_6
	dd	_335
	dd	1
	dd	_1284
	dd	_6
	dd	_1285
	dd	1
	dd	_1286
	dd	_6
	dd	_1287
	dd	1
	dd	_1288
	dd	_6
	dd	_1289
	dd	1
	dd	_1290
	dd	_6
	dd	_1291
	dd	1
	dd	_1292
	dd	_6
	dd	_1293
	dd	1
	dd	_1294
	dd	_6
	dd	_1295
	dd	1
	dd	_1296
	dd	_6
	dd	_1297
	dd	1
	dd	_1298
	dd	_6
	dd	_1299
	dd	1
	dd	_1300
	dd	_6
	dd	_1301
	dd	1
	dd	_1302
	dd	_6
	dd	_1303
	dd	1
	dd	_1304
	dd	_6
	dd	_1305
	dd	1
	dd	_1306
	dd	_6
	dd	_1307
	dd	1
	dd	_1308
	dd	_6
	dd	_245
	dd	1
	dd	_1309
	dd	_6
	dd	_1310
	dd	1
	dd	_1311
	dd	_6
	dd	_268
	dd	1
	dd	_1312
	dd	_6
	dd	_53
	dd	1
	dd	_1313
	dd	_6
	dd	_55
	dd	1
	dd	_1314
	dd	_6
	dd	_57
	dd	1
	dd	_1315
	dd	_6
	dd	_110
	dd	1
	dd	_1316
	dd	_6
	dd	_112
	dd	1
	dd	_1317
	dd	_6
	dd	_114
	dd	1
	dd	_1318
	dd	_6
	dd	_116
	dd	1
	dd	_1319
	dd	_6
	dd	_118
	dd	1
	dd	_1320
	dd	_6
	dd	_120
	dd	1
	dd	_1321
	dd	_6
	dd	_122
	dd	1
	dd	_1322
	dd	_6
	dd	_124
	dd	1
	dd	_1323
	dd	_6
	dd	_126
	dd	1
	dd	_1324
	dd	_6
	dd	_128
	dd	1
	dd	_1325
	dd	_6
	dd	_130
	dd	1
	dd	_1326
	dd	_6
	dd	_132
	dd	1
	dd	_1327
	dd	_6
	dd	_134
	dd	1
	dd	_1328
	dd	_6
	dd	_53
	dd	1
	dd	_1329
	dd	_6
	dd	_55
	dd	1
	dd	_1330
	dd	_6
	dd	_57
	dd	1
	dd	_1331
	dd	_6
	dd	_110
	dd	1
	dd	_1332
	dd	_6
	dd	_112
	dd	1
	dd	_1333
	dd	_6
	dd	_114
	dd	1
	dd	_1334
	dd	_6
	dd	_116
	dd	1
	dd	_1335
	dd	_6
	dd	_118
	dd	1
	dd	_1336
	dd	_6
	dd	_120
	dd	1
	dd	_1337
	dd	_6
	dd	_122
	dd	1
	dd	_1338
	dd	_6
	dd	_124
	dd	1
	dd	_1339
	dd	_6
	dd	_126
	dd	1
	dd	_1340
	dd	_6
	dd	_128
	dd	1
	dd	_1341
	dd	_6
	dd	_130
	dd	1
	dd	_1342
	dd	_6
	dd	_132
	dd	1
	dd	_1343
	dd	_6
	dd	_134
	dd	1
	dd	_1344
	dd	_6
	dd	_136
	dd	1
	dd	_1345
	dd	_6
	dd	_138
	dd	1
	dd	_1346
	dd	_6
	dd	_140
	dd	1
	dd	_1347
	dd	_6
	dd	_142
	dd	1
	dd	_1348
	dd	_6
	dd	_53
	dd	1
	dd	_1349
	dd	_6
	dd	_55
	dd	1
	dd	_1350
	dd	_6
	dd	_57
	dd	1
	dd	_1351
	dd	_6
	dd	_110
	dd	1
	dd	_1352
	dd	_6
	dd	_112
	dd	1
	dd	_1353
	dd	_6
	dd	_114
	dd	1
	dd	_1354
	dd	_6
	dd	_116
	dd	1
	dd	_1355
	dd	_6
	dd	_118
	dd	1
	dd	_1356
	dd	_6
	dd	_120
	dd	1
	dd	_1357
	dd	_6
	dd	_122
	dd	1
	dd	_1358
	dd	_6
	dd	_124
	dd	1
	dd	_1359
	dd	_6
	dd	_126
	dd	1
	dd	_1360
	dd	_6
	dd	_128
	dd	1
	dd	_1361
	dd	_6
	dd	_130
	dd	1
	dd	_1362
	dd	_6
	dd	_132
	dd	1
	dd	_1363
	dd	_6
	dd	_134
	dd	1
	dd	_1364
	dd	_6
	dd	_136
	dd	1
	dd	_1365
	dd	_6
	dd	_138
	dd	1
	dd	_1366
	dd	_6
	dd	_140
	dd	1
	dd	_1367
	dd	_6
	dd	_142
	dd	1
	dd	_1368
	dd	_6
	dd	_53
	dd	1
	dd	_1369
	dd	_6
	dd	_55
	dd	1
	dd	_1370
	dd	_6
	dd	_57
	dd	1
	dd	_1371
	dd	_6
	dd	_110
	dd	1
	dd	_1372
	dd	_6
	dd	_112
	dd	1
	dd	_1373
	dd	_6
	dd	_114
	dd	1
	dd	_1374
	dd	_6
	dd	_116
	dd	1
	dd	_1375
	dd	_6
	dd	_118
	dd	1
	dd	_1376
	dd	_6
	dd	_120
	dd	1
	dd	_1377
	dd	_6
	dd	_122
	dd	1
	dd	_1378
	dd	_6
	dd	_124
	dd	1
	dd	_1379
	dd	_6
	dd	_126
	dd	1
	dd	_1380
	dd	_6
	dd	_128
	dd	1
	dd	_1381
	dd	_6
	dd	_130
	dd	1
	dd	_1382
	dd	_6
	dd	_132
	dd	1
	dd	_1383
	dd	_6
	dd	_134
	dd	1
	dd	_1384
	dd	_6
	dd	_136
	dd	1
	dd	_1385
	dd	_6
	dd	_138
	dd	1
	dd	_1386
	dd	_6
	dd	_140
	dd	1
	dd	_1387
	dd	_6
	dd	_142
	dd	1
	dd	_1388
	dd	_6
	dd	_144
	dd	1
	dd	_1389
	dd	_6
	dd	_146
	dd	1
	dd	_1390
	dd	_6
	dd	_148
	dd	1
	dd	_1391
	dd	_6
	dd	_150
	dd	1
	dd	_1392
	dd	_6
	dd	_152
	dd	1
	dd	_1393
	dd	_6
	dd	_154
	dd	1
	dd	_1394
	dd	_6
	dd	_156
	dd	1
	dd	_1395
	dd	_6
	dd	_162
	dd	1
	dd	_1396
	dd	_6
	dd	_164
	dd	1
	dd	_1397
	dd	_6
	dd	_166
	dd	1
	dd	_1398
	dd	_6
	dd	_168
	dd	1
	dd	_1399
	dd	_6
	dd	_105
	dd	1
	dd	_1400
	dd	_6
	dd	_1236
	dd	1
	dd	_1401
	dd	_6
	dd	_1238
	dd	1
	dd	_1402
	dd	_6
	dd	_1240
	dd	1
	dd	_1403
	dd	_6
	dd	_1242
	dd	1
	dd	_1404
	dd	_6
	dd	_1244
	dd	1
	dd	_1405
	dd	_6
	dd	_1246
	dd	1
	dd	_1406
	dd	_6
	dd	_1248
	dd	1
	dd	_1407
	dd	_6
	dd	_1250
	dd	1
	dd	_1408
	dd	_6
	dd	_1252
	dd	1
	dd	_1409
	dd	_6
	dd	_1254
	dd	1
	dd	_1410
	dd	_6
	dd	_1256
	dd	1
	dd	_1411
	dd	_6
	dd	_1258
	dd	1
	dd	_1412
	dd	_6
	dd	_1260
	dd	1
	dd	_1413
	dd	_6
	dd	_1266
	dd	1
	dd	_1414
	dd	_6
	dd	_1268
	dd	1
	dd	_1415
	dd	_6
	dd	_1270
	dd	1
	dd	_1416
	dd	_6
	dd	_1272
	dd	1
	dd	_1417
	dd	_6
	dd	_1274
	dd	1
	dd	_1418
	dd	_6
	dd	_1276
	dd	1
	dd	_1419
	dd	_6
	dd	_1278
	dd	1
	dd	_1420
	dd	_6
	dd	_1280
	dd	1
	dd	_1421
	dd	_6
	dd	_1282
	dd	1
	dd	_1422
	dd	_6
	dd	_335
	dd	1
	dd	_1423
	dd	_6
	dd	_1285
	dd	1
	dd	_1424
	dd	_6
	dd	_1287
	dd	1
	dd	_1425
	dd	_6
	dd	_1289
	dd	1
	dd	_1426
	dd	_6
	dd	_1295
	dd	1
	dd	_1427
	dd	_6
	dd	_1297
	dd	1
	dd	_1428
	dd	_6
	dd	_1299
	dd	1
	dd	_1429
	dd	_6
	dd	_1301
	dd	1
	dd	_1430
	dd	_6
	dd	_1303
	dd	1
	dd	_1431
	dd	_6
	dd	_1305
	dd	1
	dd	_1432
	dd	_6
	dd	_1307
	dd	1
	dd	_1433
	dd	_6
	dd	_245
	dd	1
	dd	_1434
	dd	_6
	dd	_1435
	dd	1
	dd	_1436
	dd	_6
	dd	_1437
	dd	1
	dd	_1438
	dd	_6
	dd	_1439
	dd	1
	dd	_1440
	dd	_6
	dd	_1441
	dd	1
	dd	_1442
	dd	_6
	dd	_1443
	dd	1
	dd	_1444
	dd	_6
	dd	_1445
	dd	1
	dd	_1446
	dd	_6
	dd	_1447
	dd	1
	dd	_1448
	dd	_6
	dd	_1449
	dd	1
	dd	_1450
	dd	_6
	dd	_1451
	dd	1
	dd	_1452
	dd	_6
	dd	_1453
	dd	1
	dd	_1454
	dd	_6
	dd	_1455
	dd	1
	dd	_1456
	dd	_6
	dd	_1457
	dd	1
	dd	_1458
	dd	_6
	dd	_1459
	dd	1
	dd	_1460
	dd	_6
	dd	_1461
	dd	1
	dd	_1462
	dd	_6
	dd	_1463
	dd	1
	dd	_1464
	dd	_6
	dd	_1465
	dd	1
	dd	_1466
	dd	_6
	dd	_1467
	dd	1
	dd	_1468
	dd	_6
	dd	_1469
	dd	1
	dd	_1470
	dd	_6
	dd	_1471
	dd	1
	dd	_1472
	dd	_6
	dd	_1473
	dd	1
	dd	_1474
	dd	_6
	dd	_1475
	dd	1
	dd	_1476
	dd	_6
	dd	_1477
	dd	1
	dd	_1478
	dd	_6
	dd	_1479
	dd	1
	dd	_1480
	dd	_6
	dd	_1481
	dd	1
	dd	_1482
	dd	_6
	dd	_1483
	dd	1
	dd	_1484
	dd	_6
	dd	_1485
	dd	1
	dd	_1486
	dd	_6
	dd	_1487
	dd	1
	dd	_1488
	dd	_6
	dd	_1489
	dd	1
	dd	_1490
	dd	_6
	dd	_1491
	dd	1
	dd	_1492
	dd	_6
	dd	_1493
	dd	1
	dd	_1494
	dd	_6
	dd	_1495
	dd	1
	dd	_1496
	dd	_6
	dd	_1497
	dd	1
	dd	_1498
	dd	_6
	dd	_1499
	dd	1
	dd	_1500
	dd	_6
	dd	_1501
	dd	1
	dd	_1502
	dd	_6
	dd	_1503
	dd	1
	dd	_1504
	dd	_6
	dd	_1505
	dd	1
	dd	_1506
	dd	_6
	dd	_1507
	dd	1
	dd	_1508
	dd	_6
	dd	_1509
	dd	1
	dd	_1510
	dd	_6
	dd	_1511
	dd	1
	dd	_1512
	dd	_6
	dd	_1513
	dd	1
	dd	_1514
	dd	_6
	dd	_1515
	dd	1
	dd	_1516
	dd	_6
	dd	_1517
	dd	1
	dd	_1518
	dd	_6
	dd	_1519
	dd	1
	dd	_1520
	dd	_6
	dd	_1521
	dd	1
	dd	_1522
	dd	_6
	dd	_229
	dd	1
	dd	_1523
	dd	_6
	dd	_53
	dd	1
	dd	_1524
	dd	_6
	dd	_55
	dd	1
	dd	_1525
	dd	_6
	dd	_57
	dd	1
	dd	_1526
	dd	_6
	dd	_110
	dd	1
	dd	_1527
	dd	_6
	dd	_112
	dd	1
	dd	_1528
	dd	_6
	dd	_114
	dd	1
	dd	_1529
	dd	_6
	dd	_116
	dd	1
	dd	_1530
	dd	_6
	dd	_118
	dd	1
	dd	_1531
	dd	_6
	dd	_120
	dd	1
	dd	_1532
	dd	_6
	dd	_122
	dd	1
	dd	_1533
	dd	_6
	dd	_124
	dd	1
	dd	_1534
	dd	_6
	dd	_126
	dd	1
	dd	_1535
	dd	_6
	dd	_128
	dd	1
	dd	_1536
	dd	_6
	dd	_130
	dd	1
	dd	_1537
	dd	_6
	dd	_132
	dd	1
	dd	_1538
	dd	_6
	dd	_134
	dd	1
	dd	_1539
	dd	_6
	dd	_136
	dd	1
	dd	_1540
	dd	_6
	dd	_138
	dd	1
	dd	_1541
	dd	_6
	dd	_140
	dd	1
	dd	_1542
	dd	_6
	dd	_142
	dd	1
	dd	_1543
	dd	_6
	dd	_144
	dd	1
	dd	_1544
	dd	_6
	dd	_146
	dd	1
	dd	_1545
	dd	_6
	dd	_148
	dd	1
	dd	_1546
	dd	_6
	dd	_150
	dd	1
	dd	_1547
	dd	_6
	dd	_152
	dd	1
	dd	_1548
	dd	_6
	dd	_154
	dd	1
	dd	_1549
	dd	_6
	dd	_156
	dd	1
	dd	_1550
	dd	_6
	dd	_162
	dd	1
	dd	_1551
	dd	_6
	dd	_164
	dd	1
	dd	_1552
	dd	_6
	dd	_166
	dd	1
	dd	_1553
	dd	_6
	dd	_168
	dd	1
	dd	_1554
	dd	_6
	dd	_105
	dd	1
	dd	_1555
	dd	_6
	dd	_53
	dd	1
	dd	_1556
	dd	_6
	dd	_55
	dd	1
	dd	_1557
	dd	_6
	dd	_57
	dd	1
	dd	_1558
	dd	_6
	dd	_110
	dd	1
	dd	_1559
	dd	_6
	dd	_112
	dd	1
	dd	_1560
	dd	_6
	dd	_114
	dd	1
	dd	_1561
	dd	_6
	dd	_116
	dd	1
	dd	_1562
	dd	_6
	dd	_118
	dd	1
	dd	_1563
	dd	_6
	dd	_120
	dd	1
	dd	_1564
	dd	_6
	dd	_122
	dd	1
	dd	_1565
	dd	_6
	dd	_124
	dd	1
	dd	_1566
	dd	_6
	dd	_126
	dd	1
	dd	_1567
	dd	_6
	dd	_128
	dd	1
	dd	_1568
	dd	_6
	dd	_130
	dd	1
	dd	_1569
	dd	_6
	dd	_132
	dd	1
	dd	_1570
	dd	_6
	dd	_134
	dd	1
	dd	_1571
	dd	_6
	dd	_136
	dd	1
	dd	_1572
	dd	_6
	dd	_138
	dd	1
	dd	_1573
	dd	_6
	dd	_140
	dd	1
	dd	_1574
	dd	_6
	dd	_142
	dd	1
	dd	_1575
	dd	_6
	dd	_144
	dd	1
	dd	_1576
	dd	_6
	dd	_146
	dd	1
	dd	_1577
	dd	_6
	dd	_148
	dd	1
	dd	_1578
	dd	_6
	dd	_150
	dd	1
	dd	_1579
	dd	_6
	dd	_152
	dd	1
	dd	_1580
	dd	_6
	dd	_154
	dd	1
	dd	_1581
	dd	_6
	dd	_156
	dd	1
	dd	_1582
	dd	_6
	dd	_162
	dd	1
	dd	_1583
	dd	_6
	dd	_164
	dd	1
	dd	_1584
	dd	_6
	dd	_166
	dd	1
	dd	_1585
	dd	_6
	dd	_168
	dd	1
	dd	_1586
	dd	_6
	dd	_105
	dd	1
	dd	_1587
	dd	_6
	dd	_1236
	dd	1
	dd	_1588
	dd	_6
	dd	_1238
	dd	1
	dd	_1589
	dd	_6
	dd	_53
	dd	1
	dd	_1590
	dd	_6
	dd	_55
	dd	1
	dd	_1591
	dd	_6
	dd	_57
	dd	1
	dd	_1592
	dd	_6
	dd	_110
	dd	1
	dd	_1593
	dd	_6
	dd	_112
	dd	1
	dd	_1594
	dd	_6
	dd	_114
	dd	1
	dd	_1595
	dd	_6
	dd	_116
	dd	1
	dd	_1596
	dd	_6
	dd	_118
	dd	1
	dd	_1597
	dd	_6
	dd	_120
	dd	1
	dd	_1598
	dd	_6
	dd	_122
	dd	1
	dd	_1599
	dd	_6
	dd	_124
	dd	1
	dd	_1600
	dd	_6
	dd	_53
	dd	1
	dd	_1601
	dd	_6
	dd	_55
	dd	1
	dd	_1602
	dd	_6
	dd	_57
	dd	1
	dd	_1603
	dd	_6
	dd	_110
	dd	1
	dd	_1604
	dd	_6
	dd	_112
	dd	1
	dd	_1605
	dd	_6
	dd	_114
	dd	1
	dd	_1606
	dd	_6
	dd	_116
	dd	1
	dd	_1607
	dd	_6
	dd	_118
	dd	1
	dd	_1608
	dd	_6
	dd	_120
	dd	1
	dd	_1609
	dd	_6
	dd	_122
	dd	1
	dd	_1610
	dd	_6
	dd	_124
	dd	1
	dd	_1611
	dd	_6
	dd	_126
	dd	1
	dd	_1612
	dd	_6
	dd	_128
	dd	1
	dd	_1613
	dd	_6
	dd	_130
	dd	1
	dd	_1614
	dd	_6
	dd	_132
	dd	1
	dd	_1615
	dd	_6
	dd	_134
	dd	1
	dd	_1616
	dd	_6
	dd	_136
	dd	1
	dd	_1617
	dd	_6
	dd	_138
	dd	1
	dd	_1618
	dd	_6
	dd	_140
	dd	1
	dd	_1619
	dd	_6
	dd	_142
	dd	1
	dd	_1620
	dd	_6
	dd	_53
	dd	1
	dd	_1621
	dd	_6
	dd	_55
	dd	1
	dd	_1622
	dd	_6
	dd	_57
	dd	1
	dd	_1623
	dd	_6
	dd	_110
	dd	1
	dd	_1624
	dd	_6
	dd	_112
	dd	1
	dd	_1625
	dd	_6
	dd	_114
	dd	1
	dd	_1626
	dd	_6
	dd	_53
	dd	1
	dd	_1627
	dd	_6
	dd	_55
	dd	1
	dd	_1628
	dd	_6
	dd	_57
	dd	1
	dd	_1629
	dd	_6
	dd	_110
	dd	1
	dd	_1630
	dd	_6
	dd	_112
	dd	1
	dd	_1631
	dd	_6
	dd	_53
	dd	1
	dd	_1632
	dd	_6
	dd	_55
	dd	1
	dd	_1633
	dd	_6
	dd	_57
	dd	1
	dd	_1634
	dd	_6
	dd	_110
	dd	1
	dd	_1635
	dd	_6
	dd	_112
	dd	1
	dd	_1636
	dd	_6
	dd	_114
	dd	1
	dd	_1637
	dd	_6
	dd	_116
	dd	1
	dd	_1638
	dd	_6
	dd	_118
	dd	1
	dd	_1639
	dd	_6
	dd	_120
	dd	1
	dd	_1640
	dd	_6
	dd	_122
	dd	1
	dd	_1641
	dd	_6
	dd	_124
	dd	1
	dd	_1642
	dd	_6
	dd	_126
	dd	1
	dd	_1643
	dd	_6
	dd	_128
	dd	1
	dd	_1644
	dd	_6
	dd	_130
	dd	1
	dd	_1645
	dd	_6
	dd	_132
	dd	1
	dd	_1646
	dd	_6
	dd	_134
	dd	1
	dd	_1647
	dd	_6
	dd	_136
	dd	1
	dd	_1648
	dd	_6
	dd	_138
	dd	1
	dd	_1649
	dd	_6
	dd	_140
	dd	1
	dd	_1650
	dd	_6
	dd	_142
	dd	1
	dd	_1651
	dd	_6
	dd	_53
	dd	1
	dd	_1652
	dd	_6
	dd	_55
	dd	1
	dd	_1653
	dd	_6
	dd	_57
	dd	1
	dd	_1654
	dd	_6
	dd	_110
	dd	1
	dd	_1655
	dd	_6
	dd	_112
	dd	1
	dd	_1656
	dd	_6
	dd	_114
	dd	1
	dd	_1657
	dd	_6
	dd	_116
	dd	1
	dd	_1658
	dd	_6
	dd	_118
	dd	1
	dd	_1659
	dd	_6
	dd	_120
	dd	1
	dd	_1660
	dd	_6
	dd	_122
	dd	1
	dd	_1661
	dd	_6
	dd	_124
	dd	1
	dd	_1662
	dd	_6
	dd	_126
	dd	1
	dd	_1663
	dd	_6
	dd	_128
	dd	1
	dd	_1664
	dd	_6
	dd	_130
	dd	1
	dd	_1665
	dd	_6
	dd	_132
	dd	1
	dd	_1666
	dd	_6
	dd	_134
	dd	1
	dd	_1667
	dd	_6
	dd	_136
	dd	1
	dd	_1668
	dd	_6
	dd	_138
	dd	1
	dd	_1669
	dd	_6
	dd	_140
	dd	1
	dd	_1670
	dd	_6
	dd	_142
	dd	1
	dd	_1671
	dd	_6
	dd	_144
	dd	1
	dd	_1672
	dd	_6
	dd	_53
	dd	1
	dd	_1673
	dd	_6
	dd	_55
	dd	1
	dd	_1674
	dd	_6
	dd	_57
	dd	1
	dd	_1675
	dd	_6
	dd	_110
	dd	1
	dd	_1676
	dd	_6
	dd	_112
	dd	1
	dd	_1677
	dd	_6
	dd	_114
	dd	1
	dd	_1678
	dd	_6
	dd	_116
	dd	1
	dd	_1679
	dd	_6
	dd	_118
	dd	1
	dd	_1680
	dd	_6
	dd	_53
	dd	1
	dd	_1681
	dd	_6
	dd	_55
	dd	1
	dd	_1682
	dd	_6
	dd	_57
	dd	1
	dd	_1683
	dd	_6
	dd	_110
	dd	1
	dd	_1684
	dd	_6
	dd	_112
	dd	1
	dd	_1685
	dd	_6
	dd	_114
	dd	1
	dd	_1686
	dd	_6
	dd	_122
	dd	1
	dd	_1687
	dd	_6
	dd	_53
	dd	1
	dd	_1688
	dd	_6
	dd	_55
	dd	1
	dd	_1689
	dd	_6
	dd	_57
	dd	1
	dd	_1690
	dd	_6
	dd	_110
	dd	1
	dd	_1691
	dd	_6
	dd	_112
	dd	1
	dd	_1692
	dd	_6
	dd	_114
	dd	1
	dd	_1693
	dd	_6
	dd	_116
	dd	1
	dd	_1694
	dd	_6
	dd	_53
	dd	1
	dd	_1695
	dd	_6
	dd	_55
	dd	1
	dd	_1696
	dd	_6
	dd	_57
	dd	1
	dd	_1697
	dd	_6
	dd	_110
	dd	1
	dd	_1698
	dd	_6
	dd	_112
	dd	1
	dd	_1699
	dd	_6
	dd	_114
	dd	1
	dd	_1700
	dd	_6
	dd	_116
	dd	1
	dd	_1701
	dd	_6
	dd	_118
	dd	1
	dd	_1702
	dd	_6
	dd	_120
	dd	1
	dd	_1703
	dd	_6
	dd	_122
	dd	1
	dd	_1704
	dd	_6
	dd	_53
	dd	1
	dd	_1705
	dd	_6
	dd	_55
	dd	1
	dd	_1706
	dd	_6
	dd	_57
	dd	1
	dd	_1707
	dd	_6
	dd	_110
	dd	1
	dd	_1708
	dd	_6
	dd	_116
	dd	1
	dd	_1709
	dd	_6
	dd	_118
	dd	1
	dd	_1710
	dd	_6
	dd	_120
	dd	1
	dd	_1711
	dd	_6
	dd	_122
	dd	1
	dd	_1712
	dd	_6
	dd	_124
	dd	1
	dd	_1713
	dd	_6
	dd	_126
	dd	1
	dd	_1714
	dd	_6
	dd	_128
	dd	1
	dd	_1715
	dd	_6
	dd	_130
	dd	1
	dd	_1716
	dd	_6
	dd	_132
	dd	1
	dd	_1717
	dd	_6
	dd	_134
	dd	1
	dd	_1718
	dd	_6
	dd	_136
	dd	1
	dd	_1719
	dd	_6
	dd	_53
	dd	1
	dd	_1720
	dd	_6
	dd	_55
	dd	1
	dd	_1721
	dd	_6
	dd	_57
	dd	1
	dd	_1722
	dd	_6
	dd	_110
	dd	1
	dd	_1723
	dd	_6
	dd	_112
	dd	1
	dd	_1724
	dd	_6
	dd	_114
	dd	1
	dd	_1725
	dd	_6
	dd	_116
	dd	1
	dd	_1726
	dd	_6
	dd	_118
	dd	1
	dd	_1727
	dd	_6
	dd	_120
	dd	1
	dd	_1728
	dd	_6
	dd	_122
	dd	1
	dd	_1729
	dd	_6
	dd	_124
	dd	1
	dd	_1730
	dd	_6
	dd	_126
	dd	1
	dd	_1731
	dd	_6
	dd	_53
	dd	1
	dd	_1732
	dd	_6
	dd	_55
	dd	1
	dd	_1733
	dd	_6
	dd	_57
	dd	1
	dd	_1734
	dd	_6
	dd	_110
	dd	1
	dd	_1735
	dd	_6
	dd	_112
	dd	1
	dd	_1736
	dd	_6
	dd	_114
	dd	1
	dd	_1737
	dd	_6
	dd	_116
	dd	1
	dd	_1738
	dd	_6
	dd	_118
	dd	1
	dd	_1739
	dd	_6
	dd	_120
	dd	1
	dd	_1740
	dd	_6
	dd	_122
	dd	1
	dd	_1741
	dd	_6
	dd	_124
	dd	1
	dd	_1742
	dd	_6
	dd	_53
	dd	1
	dd	_1743
	dd	_6
	dd	_55
	dd	1
	dd	_1744
	dd	_6
	dd	_57
	dd	1
	dd	_1745
	dd	_6
	dd	_110
	dd	1
	dd	_1746
	dd	_6
	dd	_112
	dd	1
	dd	_1747
	dd	_6
	dd	_114
	dd	1
	dd	_1748
	dd	_6
	dd	_116
	dd	1
	dd	_1749
	dd	_6
	dd	_120
	dd	1
	dd	_1750
	dd	_6
	dd	_122
	dd	1
	dd	_1751
	dd	_6
	dd	_124
	dd	1
	dd	_1752
	dd	_6
	dd	_126
	dd	1
	dd	_1753
	dd	_6
	dd	_128
	dd	1
	dd	_1754
	dd	_6
	dd	_53
	dd	1
	dd	_1755
	dd	_6
	dd	_55
	dd	1
	dd	_1756
	dd	_6
	dd	_57
	dd	1
	dd	_1757
	dd	_6
	dd	_110
	dd	1
	dd	_1758
	dd	_6
	dd	_112
	dd	1
	dd	_1759
	dd	_6
	dd	_114
	dd	1
	dd	_1760
	dd	_6
	dd	_116
	dd	1
	dd	_1761
	dd	_6
	dd	_118
	dd	1
	dd	_1762
	dd	_6
	dd	_120
	dd	1
	dd	_1763
	dd	_6
	dd	_53
	dd	1
	dd	_1764
	dd	_6
	dd	_55
	dd	1
	dd	_1765
	dd	_6
	dd	_57
	dd	1
	dd	_1766
	dd	_6
	dd	_110
	dd	1
	dd	_1767
	dd	_6
	dd	_112
	dd	1
	dd	_1768
	dd	_6
	dd	_114
	dd	1
	dd	_1769
	dd	_6
	dd	_116
	dd	1
	dd	_1770
	dd	_6
	dd	_118
	dd	1
	dd	_1771
	dd	_6
	dd	_120
	dd	1
	dd	_1772
	dd	_6
	dd	_122
	dd	1
	dd	_1773
	dd	_6
	dd	_124
	dd	1
	dd	_1774
	dd	_6
	dd	_53
	dd	1
	dd	_1775
	dd	_6
	dd	_55
	dd	1
	dd	_1776
	dd	_6
	dd	_57
	dd	1
	dd	_1777
	dd	_6
	dd	_110
	dd	1
	dd	_1778
	dd	_6
	dd	_112
	dd	1
	dd	_1779
	dd	_6
	dd	_114
	dd	1
	dd	_1780
	dd	_6
	dd	_116
	dd	1
	dd	_1781
	dd	_6
	dd	_118
	dd	1
	dd	_1782
	dd	_6
	dd	_120
	dd	1
	dd	_1783
	dd	_6
	dd	_122
	dd	1
	dd	_1784
	dd	_6
	dd	_124
	dd	1
	dd	_1785
	dd	_6
	dd	_126
	dd	1
	dd	_1786
	dd	_6
	dd	_53
	dd	1
	dd	_1787
	dd	_6
	dd	_55
	dd	1
	dd	_1788
	dd	_6
	dd	_57
	dd	1
	dd	_1789
	dd	_6
	dd	_110
	dd	1
	dd	_1790
	dd	_6
	dd	_112
	dd	1
	dd	_1791
	dd	_6
	dd	_114
	dd	1
	dd	_1792
	dd	_6
	dd	_116
	dd	1
	dd	_1793
	dd	_6
	dd	_118
	dd	1
	dd	_1794
	dd	_6
	dd	_120
	dd	1
	dd	_1795
	dd	_6
	dd	_53
	dd	1
	dd	_1796
	dd	_6
	dd	_55
	dd	1
	dd	_1797
	dd	_6
	dd	_57
	dd	1
	dd	_1798
	dd	_6
	dd	_110
	dd	1
	dd	_1799
	dd	_6
	dd	_112
	dd	1
	dd	_1800
	dd	_6
	dd	_114
	dd	1
	dd	_1801
	dd	_6
	dd	_116
	dd	1
	dd	_1802
	dd	_6
	dd	_118
	dd	1
	dd	_1803
	dd	_6
	dd	_120
	dd	1
	dd	_1804
	dd	_6
	dd	_122
	dd	1
	dd	_1805
	dd	_6
	dd	_124
	dd	1
	dd	_1806
	dd	_6
	dd	_126
	dd	1
	dd	_1807
	dd	_6
	dd	_128
	dd	1
	dd	_1808
	dd	_6
	dd	_130
	dd	1
	dd	_1809
	dd	_6
	dd	_132
	dd	1
	dd	_1810
	dd	_6
	dd	_134
	dd	1
	dd	_1811
	dd	_6
	dd	_53
	dd	1
	dd	_1812
	dd	_6
	dd	_55
	dd	1
	dd	_1813
	dd	_6
	dd	_57
	dd	1
	dd	_1814
	dd	_6
	dd	_110
	dd	1
	dd	_1815
	dd	_6
	dd	_112
	dd	1
	dd	_1816
	dd	_6
	dd	_114
	dd	1
	dd	_1817
	dd	_6
	dd	_116
	dd	1
	dd	_1818
	dd	_6
	dd	_118
	dd	1
	dd	_1819
	dd	_6
	dd	_120
	dd	1
	dd	_1820
	dd	_6
	dd	_122
	dd	1
	dd	_1821
	dd	_6
	dd	_124
	dd	1
	dd	_1822
	dd	_6
	dd	_126
	dd	1
	dd	_1823
	dd	_6
	dd	_128
	dd	1
	dd	_1824
	dd	_6
	dd	_130
	dd	1
	dd	_1825
	dd	_6
	dd	_132
	dd	1
	dd	_1826
	dd	_6
	dd	_53
	dd	1
	dd	_1827
	dd	_6
	dd	_55
	dd	1
	dd	_1828
	dd	_6
	dd	_57
	dd	1
	dd	_1829
	dd	_6
	dd	_110
	dd	1
	dd	_1830
	dd	_6
	dd	_112
	dd	1
	dd	_1831
	dd	_6
	dd	_114
	dd	1
	dd	_1832
	dd	_6
	dd	_116
	dd	1
	dd	_1833
	dd	_6
	dd	_118
	dd	1
	dd	_1834
	dd	_6
	dd	_120
	dd	1
	dd	_1835
	dd	_6
	dd	_122
	dd	1
	dd	_1836
	dd	_6
	dd	_124
	dd	1
	dd	_1837
	dd	_6
	dd	_126
	dd	1
	dd	_1838
	dd	_6
	dd	_128
	dd	1
	dd	_1839
	dd	_6
	dd	_130
	dd	1
	dd	_1840
	dd	_6
	dd	_132
	dd	1
	dd	_1841
	dd	_6
	dd	_53
	dd	1
	dd	_1842
	dd	_6
	dd	_55
	dd	1
	dd	_1843
	dd	_6
	dd	_57
	dd	1
	dd	_1844
	dd	_6
	dd	_110
	dd	1
	dd	_1845
	dd	_6
	dd	_112
	dd	1
	dd	_1846
	dd	_6
	dd	_114
	dd	1
	dd	_1847
	dd	_6
	dd	_116
	dd	1
	dd	_1848
	dd	_6
	dd	_118
	dd	1
	dd	_1849
	dd	_6
	dd	_120
	dd	1
	dd	_1850
	dd	_6
	dd	_122
	dd	1
	dd	_1851
	dd	_6
	dd	_124
	dd	1
	dd	_1852
	dd	_6
	dd	_126
	dd	1
	dd	_1853
	dd	_6
	dd	_128
	dd	1
	dd	_1854
	dd	_6
	dd	_130
	dd	1
	dd	_1855
	dd	_6
	dd	_132
	dd	1
	dd	_1856
	dd	_6
	dd	_134
	dd	1
	dd	_1857
	dd	_6
	dd	_136
	dd	1
	dd	_1858
	dd	_6
	dd	_53
	dd	1
	dd	_1859
	dd	_6
	dd	_55
	dd	1
	dd	_1860
	dd	_6
	dd	_57
	dd	1
	dd	_1861
	dd	_6
	dd	_110
	dd	1
	dd	_1862
	dd	_6
	dd	_112
	dd	1
	dd	_1863
	dd	_6
	dd	_114
	dd	1
	dd	_1864
	dd	_6
	dd	_116
	dd	1
	dd	_1865
	dd	_6
	dd	_118
	dd	1
	dd	_1866
	dd	_6
	dd	_120
	dd	1
	dd	_1867
	dd	_6
	dd	_122
	dd	1
	dd	_1868
	dd	_6
	dd	_124
	dd	1
	dd	_1869
	dd	_6
	dd	_126
	dd	1
	dd	_1870
	dd	_6
	dd	_128
	dd	1
	dd	_1871
	dd	_6
	dd	_130
	dd	1
	dd	_1872
	dd	_6
	dd	_132
	dd	1
	dd	_1873
	dd	_6
	dd	_134
	dd	1
	dd	_1874
	dd	_6
	dd	_136
	dd	1
	dd	_1875
	dd	_6
	dd	_53
	dd	1
	dd	_1876
	dd	_6
	dd	_55
	dd	1
	dd	_1877
	dd	_6
	dd	_57
	dd	1
	dd	_1878
	dd	_6
	dd	_110
	dd	1
	dd	_1879
	dd	_6
	dd	_112
	dd	1
	dd	_1880
	dd	_6
	dd	_114
	dd	1
	dd	_1881
	dd	_6
	dd	_116
	dd	1
	dd	_1882
	dd	_6
	dd	_118
	dd	1
	dd	_1883
	dd	_6
	dd	_120
	dd	1
	dd	_1884
	dd	_6
	dd	_122
	dd	1
	dd	_1885
	dd	_6
	dd	_124
	dd	1
	dd	_1886
	dd	_6
	dd	_53
	dd	1
	dd	_1887
	dd	_6
	dd	_55
	dd	1
	dd	_1888
	dd	_6
	dd	_57
	dd	1
	dd	_1889
	dd	_6
	dd	_110
	dd	1
	dd	_1890
	dd	_6
	dd	_112
	dd	1
	dd	_1891
	dd	_6
	dd	_114
	dd	1
	dd	_1892
	dd	_6
	dd	_116
	dd	1
	dd	_1893
	dd	_6
	dd	_118
	dd	1
	dd	_1894
	dd	_6
	dd	_120
	dd	1
	dd	_1895
	dd	_6
	dd	_122
	dd	1
	dd	_1896
	dd	_6
	dd	_124
	dd	1
	dd	_1897
	dd	_6
	dd	_126
	dd	1
	dd	_1898
	dd	_6
	dd	_53
	dd	1
	dd	_1899
	dd	_6
	dd	_55
	dd	1
	dd	_1900
	dd	_6
	dd	_57
	dd	1
	dd	_1901
	dd	_6
	dd	_110
	dd	1
	dd	_1902
	dd	_6
	dd	_112
	dd	1
	dd	_1903
	dd	_6
	dd	_114
	dd	1
	dd	_1904
	dd	_6
	dd	_116
	dd	1
	dd	_1905
	dd	_6
	dd	_118
	dd	1
	dd	_1906
	dd	_6
	dd	_120
	dd	1
	dd	_1907
	dd	_6
	dd	_122
	dd	1
	dd	_1908
	dd	_6
	dd	_124
	dd	1
	dd	_1909
	dd	_6
	dd	_126
	dd	1
	dd	_1910
	dd	_6
	dd	_128
	dd	1
	dd	_1911
	dd	_6
	dd	_130
	dd	1
	dd	_1912
	dd	_6
	dd	_132
	dd	1
	dd	_1913
	dd	_6
	dd	_134
	dd	1
	dd	_1914
	dd	_6
	dd	_53
	dd	1
	dd	_1915
	dd	_6
	dd	_55
	dd	1
	dd	_1916
	dd	_6
	dd	_57
	dd	1
	dd	_1917
	dd	_6
	dd	_110
	dd	1
	dd	_1918
	dd	_6
	dd	_112
	dd	1
	dd	_1919
	dd	_6
	dd	_114
	dd	1
	dd	_1920
	dd	_6
	dd	_116
	dd	1
	dd	_1921
	dd	_6
	dd	_118
	dd	1
	dd	_1922
	dd	_6
	dd	_120
	dd	1
	dd	_1923
	dd	_6
	dd	_122
	dd	1
	dd	_1924
	dd	_6
	dd	_124
	dd	1
	dd	_1925
	dd	_6
	dd	_126
	dd	1
	dd	_1926
	dd	_6
	dd	_128
	dd	1
	dd	_1927
	dd	_6
	dd	_130
	dd	1
	dd	_1928
	dd	_6
	dd	_132
	dd	1
	dd	_1929
	dd	_6
	dd	_134
	dd	1
	dd	_1930
	dd	_6
	dd	_136
	dd	1
	dd	_1931
	dd	_6
	dd	_138
	dd	1
	dd	_1932
	dd	_6
	dd	_140
	dd	1
	dd	_1933
	dd	_6
	dd	_53
	dd	1
	dd	_1934
	dd	_6
	dd	_55
	dd	1
	dd	_1935
	dd	_6
	dd	_57
	dd	1
	dd	_1936
	dd	_6
	dd	_110
	dd	1
	dd	_1937
	dd	_6
	dd	_112
	dd	1
	dd	_1938
	dd	_6
	dd	_114
	dd	1
	dd	_1939
	dd	_6
	dd	_116
	dd	1
	dd	_1940
	dd	_6
	dd	_118
	dd	1
	dd	_1941
	dd	_6
	dd	_120
	dd	1
	dd	_1942
	dd	_6
	dd	_122
	dd	1
	dd	_1943
	dd	_6
	dd	_124
	dd	1
	dd	_1944
	dd	_6
	dd	_126
	dd	1
	dd	_1945
	dd	_6
	dd	_128
	dd	1
	dd	_1946
	dd	_6
	dd	_130
	dd	1
	dd	_1947
	dd	_6
	dd	_132
	dd	1
	dd	_1948
	dd	_6
	dd	_134
	dd	1
	dd	_1949
	dd	_6
	dd	_136
	dd	1
	dd	_1950
	dd	_6
	dd	_138
	dd	1
	dd	_1951
	dd	_6
	dd	_53
	dd	1
	dd	_1952
	dd	_6
	dd	_55
	dd	1
	dd	_1953
	dd	_6
	dd	_57
	dd	1
	dd	_1954
	dd	_6
	dd	_110
	dd	1
	dd	_1955
	dd	_6
	dd	_112
	dd	1
	dd	_1956
	dd	_6
	dd	_114
	dd	1
	dd	_1957
	dd	_6
	dd	_116
	dd	1
	dd	_1958
	dd	_6
	dd	_118
	dd	1
	dd	_1959
	dd	_6
	dd	_120
	dd	1
	dd	_1960
	dd	_6
	dd	_122
	dd	1
	dd	_1961
	dd	_6
	dd	_124
	dd	1
	dd	_1962
	dd	_6
	dd	_126
	dd	1
	dd	_1963
	dd	_6
	dd	_128
	dd	1
	dd	_1964
	dd	_6
	dd	_130
	dd	1
	dd	_1965
	dd	_6
	dd	_132
	dd	1
	dd	_1966
	dd	_6
	dd	_134
	dd	1
	dd	_1967
	dd	_6
	dd	_136
	dd	1
	dd	_1968
	dd	_6
	dd	_53
	dd	1
	dd	_1969
	dd	_6
	dd	_55
	dd	1
	dd	_1970
	dd	_6
	dd	_57
	dd	1
	dd	_1971
	dd	_6
	dd	_110
	dd	1
	dd	_1972
	dd	_6
	dd	_112
	dd	1
	dd	_1973
	dd	_6
	dd	_114
	dd	1
	dd	_1974
	dd	_6
	dd	_116
	dd	1
	dd	_1975
	dd	_6
	dd	_53
	dd	1
	dd	_1976
	dd	_6
	dd	_55
	dd	1
	dd	_1977
	dd	_6
	dd	_57
	dd	1
	dd	_1978
	dd	_6
	dd	_110
	dd	1
	dd	_1979
	dd	_6
	dd	_112
	dd	1
	dd	_1980
	dd	_6
	dd	_114
	dd	1
	dd	_1981
	dd	_6
	dd	_116
	dd	1
	dd	_1982
	dd	_6
	dd	_118
	dd	1
	dd	_1983
	dd	_6
	dd	_120
	dd	1
	dd	_1984
	dd	_6
	dd	_53
	dd	1
	dd	_1985
	dd	_6
	dd	_55
	dd	1
	dd	_1986
	dd	_6
	dd	_57
	dd	1
	dd	_1987
	dd	_6
	dd	_110
	dd	1
	dd	_1988
	dd	_6
	dd	_112
	dd	1
	dd	_1989
	dd	_6
	dd	_114
	dd	1
	dd	_1990
	dd	_6
	dd	_53
	dd	1
	dd	_1991
	dd	_6
	dd	_55
	dd	1
	dd	_1992
	dd	_6
	dd	_57
	dd	1
	dd	_1993
	dd	_6
	dd	_110
	dd	1
	dd	_1994
	dd	_6
	dd	_112
	dd	1
	dd	_1995
	dd	_6
	dd	_114
	dd	1
	dd	_1996
	dd	_6
	dd	_116
	dd	1
	dd	_1997
	dd	_6
	dd	_53
	dd	1
	dd	_1998
	dd	_6
	dd	_55
	dd	1
	dd	_1999
	dd	_6
	dd	_57
	dd	1
	dd	_2000
	dd	_6
	dd	_110
	dd	1
	dd	_2001
	dd	_6
	dd	_112
	dd	1
	dd	_2002
	dd	_6
	dd	_114
	dd	1
	dd	_2003
	dd	_6
	dd	_116
	dd	1
	dd	_2004
	dd	_6
	dd	_118
	dd	1
	dd	_2005
	dd	_6
	dd	_120
	dd	1
	dd	_2006
	dd	_6
	dd	_122
	dd	1
	dd	_2007
	dd	_6
	dd	_124
	dd	1
	dd	_2008
	dd	_6
	dd	_126
	dd	1
	dd	_2009
	dd	_6
	dd	_128
	dd	1
	dd	_2010
	dd	_6
	dd	_130
	dd	1
	dd	_2011
	dd	_6
	dd	_105
	dd	1
	dd	_2012
	dd	_6
	dd	_53
	dd	1
	dd	_2013
	dd	_6
	dd	_55
	dd	1
	dd	_2014
	dd	_6
	dd	_57
	dd	1
	dd	_2015
	dd	_6
	dd	_110
	dd	1
	dd	_2016
	dd	_6
	dd	_112
	dd	1
	dd	_2017
	dd	_6
	dd	_114
	dd	1
	dd	_2018
	dd	_6
	dd	_116
	dd	1
	dd	_2019
	dd	_6
	dd	_118
	dd	1
	dd	_2020
	dd	_6
	dd	_120
	dd	1
	dd	_2021
	dd	_6
	dd	_122
	dd	1
	dd	_2022
	dd	_6
	dd	_124
	dd	1
	dd	_2023
	dd	_6
	dd	_126
	dd	1
	dd	_2024
	dd	_6
	dd	_128
	dd	1
	dd	_2025
	dd	_6
	dd	_130
	dd	1
	dd	_2026
	dd	_6
	dd	_132
	dd	1
	dd	_2027
	dd	_6
	dd	_134
	dd	1
	dd	_2028
	dd	_6
	dd	_136
	dd	1
	dd	_2029
	dd	_6
	dd	_53
	dd	1
	dd	_2030
	dd	_6
	dd	_55
	dd	1
	dd	_2031
	dd	_6
	dd	_57
	dd	1
	dd	_2032
	dd	_6
	dd	_110
	dd	1
	dd	_2033
	dd	_6
	dd	_112
	dd	1
	dd	_2034
	dd	_6
	dd	_114
	dd	1
	dd	_2035
	dd	_6
	dd	_116
	dd	1
	dd	_2036
	dd	_6
	dd	_118
	dd	1
	dd	_2037
	dd	_6
	dd	_120
	dd	1
	dd	_2038
	dd	_6
	dd	_122
	dd	1
	dd	_2039
	dd	_6
	dd	_124
	dd	1
	dd	_2040
	dd	_6
	dd	_126
	dd	1
	dd	_2041
	dd	_6
	dd	_128
	dd	1
	dd	_2042
	dd	_6
	dd	_142
	dd	1
	dd	_2043
	dd	_6
	dd	_53
	dd	1
	dd	_2044
	dd	_6
	dd	_55
	dd	1
	dd	_2045
	dd	_6
	dd	_57
	dd	1
	dd	_2046
	dd	_6
	dd	_110
	dd	1
	dd	_2047
	dd	_6
	dd	_112
	dd	1
	dd	_2048
	dd	_6
	dd	_114
	dd	1
	dd	_2049
	dd	_6
	dd	_116
	dd	1
	dd	_2050
	dd	_6
	dd	_118
	dd	1
	dd	_2051
	dd	_6
	dd	_120
	dd	1
	dd	_2052
	dd	_6
	dd	_122
	dd	1
	dd	_2053
	dd	_6
	dd	_105
	dd	1
	dd	_2054
	dd	_6
	dd	_53
	dd	1
	dd	_2055
	dd	_6
	dd	_55
	dd	1
	dd	_2056
	dd	_6
	dd	_57
	dd	1
	dd	_2057
	dd	_6
	dd	_110
	dd	1
	dd	_2058
	dd	_6
	dd	_112
	dd	1
	dd	_2059
	dd	_6
	dd	_114
	dd	1
	dd	_2060
	dd	_6
	dd	_116
	dd	1
	dd	_2061
	dd	_6
	dd	_118
	dd	1
	dd	_2062
	dd	_6
	dd	_120
	dd	1
	dd	_2063
	dd	_6
	dd	_122
	dd	1
	dd	_2064
	dd	_6
	dd	_53
	dd	1
	dd	_2065
	dd	_6
	dd	_55
	dd	1
	dd	_2066
	dd	_6
	dd	_57
	dd	1
	dd	_2067
	dd	_6
	dd	_110
	dd	1
	dd	_2068
	dd	_6
	dd	_112
	dd	1
	dd	_2069
	dd	_6
	dd	_114
	dd	1
	dd	_2070
	dd	_6
	dd	_116
	dd	1
	dd	_2071
	dd	_6
	dd	_118
	dd	1
	dd	_2072
	dd	_6
	dd	_120
	dd	1
	dd	_2073
	dd	_6
	dd	_122
	dd	1
	dd	_2074
	dd	_6
	dd	_124
	dd	1
	dd	_2075
	dd	_6
	dd	_126
	dd	1
	dd	_2076
	dd	_6
	dd	_128
	dd	1
	dd	_2077
	dd	_6
	dd	_130
	dd	1
	dd	_2078
	dd	_6
	dd	_132
	dd	1
	dd	_2079
	dd	_6
	dd	_142
	dd	1
	dd	_2080
	dd	_6
	dd	_53
	dd	1
	dd	_2081
	dd	_6
	dd	_55
	dd	1
	dd	_2082
	dd	_6
	dd	_57
	dd	1
	dd	_2083
	dd	_6
	dd	_110
	dd	1
	dd	_2084
	dd	_6
	dd	_112
	dd	1
	dd	_2085
	dd	_6
	dd	_114
	dd	1
	dd	_2086
	dd	_6
	dd	_116
	dd	1
	dd	_2087
	dd	_6
	dd	_118
	dd	1
	dd	_2088
	dd	_6
	dd	_120
	dd	1
	dd	_2089
	dd	_6
	dd	_122
	dd	1
	dd	_2090
	dd	_6
	dd	_124
	dd	1
	dd	_2091
	dd	_6
	dd	_126
	dd	1
	dd	_2092
	dd	_6
	dd	_128
	dd	1
	dd	_2093
	dd	_6
	dd	_130
	dd	1
	dd	_2094
	dd	_6
	dd	_132
	dd	1
	dd	_2095
	dd	_6
	dd	_53
	dd	1
	dd	_2096
	dd	_6
	dd	_55
	dd	1
	dd	_2097
	dd	_6
	dd	_57
	dd	1
	dd	_2098
	dd	_6
	dd	_110
	dd	1
	dd	_2099
	dd	_6
	dd	_112
	dd	1
	dd	_2100
	dd	_6
	dd	_114
	dd	1
	dd	_2101
	dd	_6
	dd	_116
	dd	1
	dd	_2102
	dd	_6
	dd	_118
	dd	1
	dd	_2103
	dd	_6
	dd	_120
	dd	1
	dd	_2104
	dd	_6
	dd	_122
	dd	1
	dd	_2105
	dd	_6
	dd	_124
	dd	1
	dd	_2106
	dd	_6
	dd	_126
	dd	1
	dd	_2107
	dd	_6
	dd	_128
	dd	1
	dd	_2108
	dd	_6
	dd	_53
	dd	1
	dd	_2109
	dd	_6
	dd	_55
	dd	1
	dd	_2110
	dd	_6
	dd	_57
	dd	1
	dd	_2111
	dd	_6
	dd	_110
	dd	1
	dd	_2112
	dd	_6
	dd	_112
	dd	1
	dd	_2113
	dd	_6
	dd	_114
	dd	1
	dd	_2114
	dd	_6
	dd	_116
	dd	1
	dd	_2115
	dd	_6
	dd	_118
	dd	1
	dd	_2116
	dd	_6
	dd	_120
	dd	1
	dd	_2117
	dd	_6
	dd	_122
	dd	1
	dd	_2118
	dd	_6
	dd	_124
	dd	1
	dd	_2119
	dd	_6
	dd	_126
	dd	1
	dd	_2120
	dd	_6
	dd	_128
	dd	1
	dd	_2121
	dd	_6
	dd	_130
	dd	1
	dd	_2122
	dd	_6
	dd	_53
	dd	1
	dd	_2123
	dd	_6
	dd	_55
	dd	1
	dd	_2124
	dd	_6
	dd	_57
	dd	1
	dd	_2125
	dd	_6
	dd	_110
	dd	1
	dd	_2126
	dd	_6
	dd	_112
	dd	1
	dd	_2127
	dd	_6
	dd	_114
	dd	1
	dd	_2128
	dd	_6
	dd	_116
	dd	1
	dd	_2129
	dd	_6
	dd	_118
	dd	1
	dd	_2130
	dd	_6
	dd	_120
	dd	1
	dd	_2131
	dd	_6
	dd	_122
	dd	1
	dd	_2132
	dd	_6
	dd	_124
	dd	1
	dd	_2133
	dd	_6
	dd	_53
	dd	1
	dd	_2134
	dd	_6
	dd	_55
	dd	1
	dd	_2135
	dd	_6
	dd	_57
	dd	1
	dd	_2136
	dd	_6
	dd	_110
	dd	1
	dd	_2137
	dd	_6
	dd	_112
	dd	1
	dd	_2138
	dd	_6
	dd	_114
	dd	1
	dd	_2139
	dd	_6
	dd	_116
	dd	1
	dd	_2140
	dd	_6
	dd	_118
	dd	1
	dd	_2141
	dd	_6
	dd	_120
	dd	1
	dd	_2142
	dd	_6
	dd	_122
	dd	1
	dd	_2143
	dd	_6
	dd	_124
	dd	1
	dd	_2144
	dd	_6
	dd	_126
	dd	1
	dd	_2145
	dd	_6
	dd	_128
	dd	1
	dd	_2146
	dd	_6
	dd	_130
	dd	1
	dd	_2147
	dd	_6
	dd	_132
	dd	1
	dd	_2148
	dd	_6
	dd	_53
	dd	1
	dd	_2149
	dd	_6
	dd	_55
	dd	1
	dd	_2150
	dd	_6
	dd	_57
	dd	1
	dd	_2151
	dd	_6
	dd	_110
	dd	1
	dd	_2152
	dd	_6
	dd	_112
	dd	1
	dd	_2153
	dd	_6
	dd	_114
	dd	1
	dd	_2154
	dd	_6
	dd	_116
	dd	1
	dd	_2155
	dd	_6
	dd	_118
	dd	1
	dd	_2156
	dd	_6
	dd	_120
	dd	1
	dd	_2157
	dd	_6
	dd	_122
	dd	1
	dd	_2158
	dd	_6
	dd	_126
	dd	1
	dd	_2159
	dd	_6
	dd	_128
	dd	1
	dd	_2160
	dd	_6
	dd	_130
	dd	1
	dd	_2161
	dd	_6
	dd	_132
	dd	1
	dd	_2162
	dd	_6
	dd	_134
	dd	1
	dd	_2163
	dd	_6
	dd	_53
	dd	1
	dd	_2164
	dd	_6
	dd	_55
	dd	1
	dd	_2165
	dd	_6
	dd	_57
	dd	1
	dd	_2166
	dd	_6
	dd	_110
	dd	1
	dd	_2167
	dd	_6
	dd	_112
	dd	1
	dd	_2168
	dd	_6
	dd	_114
	dd	1
	dd	_2169
	dd	_6
	dd	_116
	dd	1
	dd	_2170
	dd	_6
	dd	_118
	dd	1
	dd	_2171
	dd	_6
	dd	_120
	dd	1
	dd	_2172
	dd	_6
	dd	_122
	dd	1
	dd	_2173
	dd	_6
	dd	_124
	dd	1
	dd	_2174
	dd	_6
	dd	_126
	dd	1
	dd	_2175
	dd	_6
	dd	_128
	dd	1
	dd	_2176
	dd	_6
	dd	_130
	dd	1
	dd	_2177
	dd	_6
	dd	_132
	dd	1
	dd	_2178
	dd	_6
	dd	_134
	dd	1
	dd	_2179
	dd	_6
	dd	_136
	dd	1
	dd	_2180
	dd	_6
	dd	_53
	dd	1
	dd	_2181
	dd	_6
	dd	_55
	dd	1
	dd	_2182
	dd	_6
	dd	_57
	dd	1
	dd	_2183
	dd	_6
	dd	_110
	dd	1
	dd	_2184
	dd	_6
	dd	_112
	dd	1
	dd	_2185
	dd	_6
	dd	_114
	dd	1
	dd	_2186
	dd	_6
	dd	_116
	dd	1
	dd	_2187
	dd	_6
	dd	_118
	dd	1
	dd	_2188
	dd	_6
	dd	_120
	dd	1
	dd	_2189
	dd	_6
	dd	_122
	dd	1
	dd	_2190
	dd	_6
	dd	_124
	dd	1
	dd	_2191
	dd	_6
	dd	_126
	dd	1
	dd	_2192
	dd	_6
	dd	_128
	dd	1
	dd	_2193
	dd	_6
	dd	_130
	dd	1
	dd	_2194
	dd	_6
	dd	_132
	dd	1
	dd	_2195
	dd	_6
	dd	_134
	dd	1
	dd	_2196
	dd	_6
	dd	_136
	dd	1
	dd	_2197
	dd	_6
	dd	_138
	dd	1
	dd	_2198
	dd	_6
	dd	_140
	dd	1
	dd	_2199
	dd	_6
	dd	_142
	dd	1
	dd	_2200
	dd	_6
	dd	_53
	dd	1
	dd	_2201
	dd	_6
	dd	_55
	dd	1
	dd	_2202
	dd	_6
	dd	_57
	dd	1
	dd	_2203
	dd	_6
	dd	_110
	dd	1
	dd	_2204
	dd	_6
	dd	_112
	dd	1
	dd	_2205
	dd	_6
	dd	_114
	dd	1
	dd	_2206
	dd	_6
	dd	_116
	dd	1
	dd	_2207
	dd	_6
	dd	_118
	dd	1
	dd	_2208
	dd	_6
	dd	_120
	dd	1
	dd	_2209
	dd	_6
	dd	_122
	dd	1
	dd	_2210
	dd	_6
	dd	_124
	dd	1
	dd	_2211
	dd	_6
	dd	_126
	dd	1
	dd	_2212
	dd	_6
	dd	_128
	dd	1
	dd	_2213
	dd	_6
	dd	_130
	dd	1
	dd	_2214
	dd	_6
	dd	_132
	dd	1
	dd	_2215
	dd	_6
	dd	_134
	dd	1
	dd	_2216
	dd	_6
	dd	_136
	dd	1
	dd	_2217
	dd	_6
	dd	_138
	dd	1
	dd	_2218
	dd	_6
	dd	_140
	dd	1
	dd	_2219
	dd	_6
	dd	_142
	dd	1
	dd	_2220
	dd	_6
	dd	_144
	dd	1
	dd	_2221
	dd	_6
	dd	_146
	dd	1
	dd	_2222
	dd	_6
	dd	_148
	dd	1
	dd	_2223
	dd	_6
	dd	_150
	dd	1
	dd	_2224
	dd	_6
	dd	_152
	dd	1
	dd	_2225
	dd	_6
	dd	_154
	dd	1
	dd	_2226
	dd	_6
	dd	_156
	dd	1
	dd	_2227
	dd	_6
	dd	_162
	dd	1
	dd	_2228
	dd	_6
	dd	_164
	dd	1
	dd	_2229
	dd	_6
	dd	_53
	dd	1
	dd	_2230
	dd	_6
	dd	_55
	dd	1
	dd	_2231
	dd	_6
	dd	_57
	dd	1
	dd	_2232
	dd	_6
	dd	_110
	dd	1
	dd	_2233
	dd	_6
	dd	_112
	dd	1
	dd	_2234
	dd	_6
	dd	_114
	dd	1
	dd	_2235
	dd	_6
	dd	_116
	dd	1
	dd	_2236
	dd	_6
	dd	_118
	dd	1
	dd	_2237
	dd	_6
	dd	_120
	dd	1
	dd	_2238
	dd	_6
	dd	_122
	dd	1
	dd	_2239
	dd	_6
	dd	_124
	dd	1
	dd	_2240
	dd	_6
	dd	_126
	dd	1
	dd	_2241
	dd	_6
	dd	_130
	dd	1
	dd	_2242
	dd	_6
	dd	_134
	dd	1
	dd	_2243
	dd	_6
	dd	_136
	dd	1
	dd	_2244
	dd	_6
	dd	_138
	dd	1
	dd	_2245
	dd	_6
	dd	_140
	dd	1
	dd	_2246
	dd	_6
	dd	_142
	dd	1
	dd	_2247
	dd	_6
	dd	_144
	dd	1
	dd	_2248
	dd	_6
	dd	_146
	dd	1
	dd	_2249
	dd	_6
	dd	_148
	dd	1
	dd	_2250
	dd	_6
	dd	_150
	dd	1
	dd	_2251
	dd	_6
	dd	_53
	dd	1
	dd	_2252
	dd	_6
	dd	_55
	dd	1
	dd	_2253
	dd	_6
	dd	_57
	dd	1
	dd	_2254
	dd	_6
	dd	_110
	dd	1
	dd	_2255
	dd	_6
	dd	_112
	dd	1
	dd	_2256
	dd	_6
	dd	_114
	dd	1
	dd	_2257
	dd	_6
	dd	_116
	dd	1
	dd	_2258
	dd	_6
	dd	_118
	dd	1
	dd	_2259
	dd	_6
	dd	_120
	dd	1
	dd	_2260
	dd	_6
	dd	_122
	dd	1
	dd	_2261
	dd	_6
	dd	_124
	dd	1
	dd	_2262
	dd	_6
	dd	_126
	dd	1
	dd	_2263
	dd	_6
	dd	_128
	dd	1
	dd	_2264
	dd	_6
	dd	_130
	dd	1
	dd	_2265
	dd	_6
	dd	_132
	dd	1
	dd	_2266
	dd	_6
	dd	_134
	dd	1
	dd	_2267
	dd	_6
	dd	_136
	dd	1
	dd	_2268
	dd	_6
	dd	_53
	dd	1
	dd	_2269
	dd	_6
	dd	_55
	dd	1
	dd	_2270
	dd	_6
	dd	_57
	dd	1
	dd	_2271
	dd	_6
	dd	_110
	dd	1
	dd	_2272
	dd	_6
	dd	_112
	dd	1
	dd	_2273
	dd	_6
	dd	_114
	dd	1
	dd	_2274
	dd	_6
	dd	_116
	dd	1
	dd	_2275
	dd	_6
	dd	_118
	dd	1
	dd	_2276
	dd	_6
	dd	_120
	dd	1
	dd	_2277
	dd	_6
	dd	_122
	dd	1
	dd	_2278
	dd	_6
	dd	_124
	dd	1
	dd	_2279
	dd	_6
	dd	_126
	dd	1
	dd	_2280
	dd	_6
	dd	_128
	dd	1
	dd	_2281
	dd	_6
	dd	_130
	dd	1
	dd	_2282
	dd	_6
	dd	_132
	dd	1
	dd	_2283
	dd	_6
	dd	_134
	dd	1
	dd	_2284
	dd	_6
	dd	_136
	dd	1
	dd	_2285
	dd	_6
	dd	_138
	dd	1
	dd	_2286
	dd	_6
	dd	_140
	dd	1
	dd	_2287
	dd	_6
	dd	_142
	dd	1
	dd	_2288
	dd	_6
	dd	_144
	dd	1
	dd	_2289
	dd	_6
	dd	_146
	dd	1
	dd	_2290
	dd	_6
	dd	_148
	dd	1
	dd	_2291
	dd	_6
	dd	_150
	dd	1
	dd	_2292
	dd	_6
	dd	_53
	dd	1
	dd	_2293
	dd	_6
	dd	_55
	dd	1
	dd	_2294
	dd	_6
	dd	_57
	dd	1
	dd	_2295
	dd	_6
	dd	_110
	dd	1
	dd	_2296
	dd	_6
	dd	_112
	dd	1
	dd	_2297
	dd	_6
	dd	_114
	dd	1
	dd	_2298
	dd	_6
	dd	_116
	dd	1
	dd	_2299
	dd	_6
	dd	_118
	dd	1
	dd	_2300
	dd	_6
	dd	_120
	dd	1
	dd	_2301
	dd	_6
	dd	_122
	dd	1
	dd	_2302
	dd	_6
	dd	_124
	dd	1
	dd	_2303
	dd	_6
	dd	_126
	dd	1
	dd	_2304
	dd	_6
	dd	_128
	dd	1
	dd	_2305
	dd	_6
	dd	_130
	dd	1
	dd	_2306
	dd	_6
	dd	_132
	dd	1
	dd	_2307
	dd	_6
	dd	_134
	dd	1
	dd	_2308
	dd	_6
	dd	_53
	dd	1
	dd	_2309
	dd	_6
	dd	_55
	dd	1
	dd	_2310
	dd	_6
	dd	_57
	dd	1
	dd	_2311
	dd	_6
	dd	_110
	dd	1
	dd	_2312
	dd	_6
	dd	_112
	dd	1
	dd	_2313
	dd	_6
	dd	_114
	dd	1
	dd	_2314
	dd	_6
	dd	_116
	dd	1
	dd	_2315
	dd	_6
	dd	_118
	dd	1
	dd	_2316
	dd	_6
	dd	_120
	dd	1
	dd	_2317
	dd	_6
	dd	_122
	dd	1
	dd	_2318
	dd	_6
	dd	_124
	dd	1
	dd	_2319
	dd	_6
	dd	_126
	dd	1
	dd	_2320
	dd	_6
	dd	_128
	dd	1
	dd	_2321
	dd	_6
	dd	_53
	dd	1
	dd	_2322
	dd	_6
	dd	_55
	dd	1
	dd	_2323
	dd	_6
	dd	_57
	dd	1
	dd	_2324
	dd	_6
	dd	_110
	dd	1
	dd	_2325
	dd	_6
	dd	_112
	dd	1
	dd	_2326
	dd	_6
	dd	_114
	dd	1
	dd	_2327
	dd	_6
	dd	_116
	dd	1
	dd	_2328
	dd	_6
	dd	_118
	dd	1
	dd	_2329
	dd	_6
	dd	_120
	dd	1
	dd	_2330
	dd	_6
	dd	_213
	dd	1
	dd	_2331
	dd	_6
	dd	_166
	dd	1
	dd	_2332
	dd	_6
	dd	_168
	dd	0
