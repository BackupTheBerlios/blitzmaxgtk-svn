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
'Scintilla.h - Constants 
Const INVALID_POSITION = -1
Const SCI_START = 2000
Const SCI_OPTIONAL_START = 3000
Const SCI_LEXER_START = 4000
Const SCI_ADDTEXT = 2001
Const SCI_ADDSTYLEDTEXT = 2002
Const SCI_INSERTTEXT = 2003
Const SCI_CLEARALL = 2004
Const SCI_CLEARDOCUMENTSTYLE = 2005
Const SCI_GETLENGTH = 2006
Const SCI_GETCHARAT = 2007
Const SCI_GETCURRENTPOS = 2008
Const SCI_GETANCHOR = 2009
Const SCI_GETSTYLEAT = 2010
Const SCI_REDO = 2011
Const SCI_SETUNDOCOLLECTION = 2012
Const SCI_SELECTALL = 2013
Const SCI_SETSAVEPOINT = 2014
Const SCI_GETSTYLEDTEXT = 2015
Const SCI_CANREDO = 2016
Const SCI_MARKERLINEFROMHANDLE = 2017
Const SCI_MARKERDELETEHANDLE = 2018
Const SCI_GETUNDOCOLLECTION = 2019
Const SCWS_INVISIBLE = 0
Const SCWS_VISIBLEALWAYS = 1
Const SCWS_VISIBLEAFTERINDENT = 2
Const SCI_GETVIEWWS = 2020
Const SCI_SETVIEWWS = 2021
Const SCI_POSITIONFROMPOINT = 2022
Const SCI_POSITIONFROMPOINTCLOSE = 2023
Const SCI_GOTOLINE = 2024
Const SCI_GOTOPOS = 2025
Const SCI_SETANCHOR = 2026
Const SCI_GETCURLINE = 2027
Const SCI_GETENDSTYLED = 2028
Const SC_EOL_CRLF = 0
Const SC_EOL_CR = 1
Const SC_EOL_LF = 2
Const SCI_CONVERTEOLS = 2029
Const SCI_GETEOLMODE = 2030
Const SCI_SETEOLMODE = 2031
Const SCI_STARTSTYLING = 2032
Const SCI_SETSTYLING = 2033
Const SCI_GETBUFFEREDDRAW = 2034
Const SCI_SETBUFFEREDDRAW = 2035
Const SCI_SETTABWIDTH = 2036
Const SCI_GETTABWIDTH = 2121
Const SC_CP_UTF8 = 65001
Const SC_CP_DBCS = 1
Const SCI_SETCODEPAGE = 2037
Const SCI_SETUSEPALETTE = 2039
Const MARKER_MAX = 31
Const SC_MARK_CIRCLE = 0
Const SC_MARK_ROUNDRECT = 1
Const SC_MARK_ARROW = 2
Const SC_MARK_SMALLRECT = 3
Const SC_MARK_SHORTARROW = 4
Const SC_MARK_EMPTY = 5
Const SC_MARK_ARROWDOWN = 6
Const SC_MARK_MINUS = 7
Const SC_MARK_PLUS = 8
Const SC_MARK_VLINE = 9
Const SC_MARK_LCORNER = 10
Const SC_MARK_TCORNER = 11
Const SC_MARK_BOXPLUS = 12
Const SC_MARK_BOXPLUSCONNECTED = 13
Const SC_MARK_BOXMINUS = 14
Const SC_MARK_BOXMINUSCONNECTED = 15
Const SC_MARK_LCORNERCURVE = 16
Const SC_MARK_TCORNERCURVE = 17
Const SC_MARK_CIRCLEPLUS = 18
Const SC_MARK_CIRCLEPLUSCONNECTED = 19
Const SC_MARK_CIRCLEMINUS = 20
Const SC_MARK_CIRCLEMINUSCONNECTED = 21
Const SC_MARK_BACKGROUND = 22
Const SC_MARK_DOTDOTDOT = 23
Const SC_MARK_ARROWS = 24
Const SC_MARK_PIXMAP = 25
Const SC_MARK_FULLRECT = 26
Const SC_MARK_CHARACTER = 10000
Const SC_MARKNUM_FOLDEREND = 25
Const SC_MARKNUM_FOLDEROPENMID = 26
Const SC_MARKNUM_FOLDERMIDTAIL = 27
Const SC_MARKNUM_FOLDERTAIL = 28
Const SC_MARKNUM_FOLDERSUB = 29
Const SC_MARKNUM_FOLDER = 30
Const SC_MARKNUM_FOLDEROPEN = 31
Const SC_MASK_FOLDERS = $FE000000
Const SCI_MARKERDEFINE = 2040
Const SCI_MARKERSETFORE = 2041
Const SCI_MARKERSETBACK = 2042
Const SCI_MARKERADD = 2043
Const SCI_MARKERDELETE = 2044
Const SCI_MARKERDELETEALL = 2045
Const SCI_MARKERGET = 2046
Const SCI_MARKERNEXT = 2047
Const SCI_MARKERPREVIOUS = 2048
Const SCI_MARKERDEFINEPIXMAP = 2049
Const SC_MARGIN_SYMBOL = 0
Const SC_MARGIN_NUMBER = 1
Const SCI_SETMARGINTYPEN = 2240
Const SCI_GETMARGINTYPEN = 2241
Const SCI_SETMARGINWIDTHN = 2242
Const SCI_GETMARGINWIDTHN = 2243
Const SCI_SETMARGINMASKN = 2244
Const SCI_GETMARGINMASKN = 2245
Const SCI_SETMARGINSENSITIVEN = 2246
Const SCI_GETMARGINSENSITIVEN = 2247
Const STYLE_DEFAULT = 32
Const STYLE_LINENUMBER = 33
Const STYLE_BRACELIGHT = 34
Const STYLE_BRACEBAD = 35
Const STYLE_CONTROLCHAR = 36
Const STYLE_INDENTGUIDE = 37
Const STYLE_LASTPREDEFINED = 39
Const STYLE_MAX = 127
Const SC_CHARSET_ANSI = 0
Const SC_CHARSET_DEFAULT = 1
Const SC_CHARSET_BALTIC = 186
Const SC_CHARSET_CHINESEBIG5 = 136
Const SC_CHARSET_EASTEUROPE = 238
Const SC_CHARSET_GB2312 = 134
Const SC_CHARSET_GREEK = 161
Const SC_CHARSET_HANGUL = 129
Const SC_CHARSET_MAC = 77
Const SC_CHARSET_OEM = 255
Const SC_CHARSET_RUSSIAN = 204
Const SC_CHARSET_CYRILLIC = 1251
Const SC_CHARSET_SHIFTJIS = 128
Const SC_CHARSET_SYMBOL = 2
Const SC_CHARSET_TURKISH = 162
Const SC_CHARSET_JOHAB = 130
Const SC_CHARSET_HEBREW = 177
Const SC_CHARSET_ARABIC = 178
Const SC_CHARSET_VIETNAMESE = 163
Const SC_CHARSET_THAI = 222
Const SC_CHARSET_8859_15 = 1000
Const SCI_STYLECLEARALL = 2050
Const SCI_STYLESETFORE = 2051
Const SCI_STYLESETBACK = 2052
Const SCI_STYLESETBOLD = 2053
Const SCI_STYLESETITALIC = 2054
Const SCI_STYLESETSIZE = 2055
Const SCI_STYLESETFONT = 2056
Const SCI_STYLESETEOLFILLED = 2057
Const SCI_STYLERESETDEFAULT = 2058
Const SCI_STYLESETUNDERLINE = 2059
Const SC_CASE_MIXED = 0
Const SC_CASE_UPPER = 1
Const SC_CASE_LOWER = 2
Const SCI_STYLESETCASE = 2060
Const SCI_STYLESETCHARACTERSET = 2066
Const SCI_STYLESETHOTSPOT = 2409
Const SCI_SETSELFORE = 2067
Const SCI_SETSELBACK = 2068
Const SCI_SETCARETFORE = 2069
Const SCI_ASSIGNCMDKEY = 2070
Const SCI_CLEARCMDKEY = 2071
Const SCI_CLEARALLCMDKEYS = 2072
Const SCI_SETSTYLINGEX = 2073
Const SCI_STYLESETVISIBLE = 2074
Const SCI_GETCARETPERIOD = 2075
Const SCI_SETCARETPERIOD = 2076
Const SCI_SETWORDCHARS = 2077
Const SCI_BEGINUNDOACTION = 2078
Const SCI_ENDUNDOACTION = 2079
Const INDIC_MAX = 7
Const INDIC_PLAIN = 0
Const INDIC_SQUIGGLE = 1
Const INDIC_TT = 2
Const INDIC_DIAGONAL = 3
Const INDIC_STRIKE = 4
Const INDIC_HIDDEN = 5
Const INDIC_BOX = 6
Const INDIC0_MASK = $20
Const INDIC1_MASK = $40
Const INDIC2_MASK = $80
Const INDICS_MASK = $E0
Const SCI_INDICSETSTYLE = 2080
Const SCI_INDICGETSTYLE = 2081
Const SCI_INDICSETFORE = 2082
Const SCI_INDICGETFORE = 2083
Const SCI_SETWHITESPACEFORE = 2084
Const SCI_SETWHITESPACEBACK = 2085
Const SCI_SETSTYLEBITS = 2090
Const SCI_GETSTYLEBITS = 2091
Const SCI_SETLINESTATE = 2092
Const SCI_GETLINESTATE = 2093
Const SCI_GETMAXLINESTATE = 2094
Const SCI_GETCARETLINEVISIBLE = 2095
Const SCI_SETCARETLINEVISIBLE = 2096
Const SCI_GETCARETLINEBACK = 2097
Const SCI_SETCARETLINEBACK = 2098
Const SCI_STYLESETCHANGEABLE = 2099
Const SCI_AUTOCSHOW = 2100
Const SCI_AUTOCCANCEL = 2101
Const SCI_AUTOCACTIVE = 2102
Const SCI_AUTOCPOSSTART = 2103
Const SCI_AUTOCCOMPLETE = 2104
Const SCI_AUTOCSTOPS = 2105
Const SCI_AUTOCSETSEPARATOR = 2106
Const SCI_AUTOCGETSEPARATOR = 2107
Const SCI_AUTOCSELECT = 2108
Const SCI_AUTOCSETCANCELATSTART = 2110
Const SCI_AUTOCGETCANCELATSTART = 2111
Const SCI_AUTOCSETFILLUPS = 2112
Const SCI_AUTOCSETCHOOSESINGLE = 2113
Const SCI_AUTOCGETCHOOSESINGLE = 2114
Const SCI_AUTOCSETIGNORECASE = 2115
Const SCI_AUTOCGETIGNORECASE = 2116
Const SCI_USERLISTSHOW = 2117
Const SCI_AUTOCSETAUTOHIDE = 2118
Const SCI_AUTOCGETAUTOHIDE = 2119
Const SCI_AUTOCSETDROPRESTOFWORD = 2270
Const SCI_AUTOCGETDROPRESTOFWORD = 2271
Const SCI_REGISTERIMAGE = 2405
Const SCI_CLEARREGISTEREDIMAGES = 2408
Const SCI_AUTOCGETTYPESEPARATOR = 2285
Const SCI_AUTOCSETTYPESEPARATOR = 2286
Const SCI_AUTOCSETMAXWIDTH = 2208
Const SCI_AUTOCGETMAXWIDTH = 2209
Const SCI_AUTOCSETMAXHEIGHT = 2210
Const SCI_AUTOCGETMAXHEIGHT = 2211
Const SCI_SETINDENT = 2122
Const SCI_GETINDENT = 2123
Const SCI_SETUSETABS = 2124
Const SCI_GETUSETABS = 2125
Const SCI_SETLINEINDENTATION = 2126
Const SCI_GETLINEINDENTATION = 2127
Const SCI_GETLINEINDENTPOSITION = 2128
Const SCI_GETCOLUMN = 2129
Const SCI_SETHSCROLLBAR = 2130
Const SCI_GETHSCROLLBAR = 2131
Const SCI_SETINDENTATIONGUIDES = 2132
Const SCI_GETINDENTATIONGUIDES = 2133
Const SCI_SETHIGHLIGHTGUIDE = 2134
Const SCI_GETHIGHLIGHTGUIDE = 2135
Const SCI_GETLINEENDPOSITION = 2136
Const SCI_GETCODEPAGE = 2137
Const SCI_GETCARETFORE = 2138
Const SCI_GETUSEPALETTE = 2139
Const SCI_GETREADONLY = 2140
Const SCI_SETCURRENTPOS = 2141
Const SCI_SETSELECTIONSTART = 2142
Const SCI_GETSELECTIONSTART = 2143
Const SCI_SETSELECTIONEND = 2144
Const SCI_GETSELECTIONEND = 2145
Const SCI_SETPRINTMAGNIFICATION = 2146
Const SCI_GETPRINTMAGNIFICATION = 2147
Const SC_PRINT_NORMAL = 0
Const SC_PRINT_INVERTLIGHT = 1
Const SC_PRINT_BLACKONWHITE = 2
Const SC_PRINT_COLOURONWHITE = 3
Const SC_PRINT_COLOURONWHITEDEFAULTBG = 4
Const SCI_SETPRINTCOLOURMODE = 2148
Const SCI_GETPRINTCOLOURMODE = 2149
Const SCFIND_WHOLEWORD = 2
Const SCFIND_MATCHCASE = 4
Const SCFIND_WORDSTART = $00100000
Const SCFIND_REGEXP = $00200000
Const SCFIND_POSIX = $00400000
Const SCI_FINDTEXT = 2150
Const SCI_FORMATRANGE = 2151
Const SCI_GETFIRSTVISIBLELINE = 2152
Const SCI_GETLINE = 2153
Const SCI_GETLINECOUNT = 2154
Const SCI_SETMARGINLEFT = 2155
Const SCI_GETMARGINLEFT = 2156
Const SCI_SETMARGINRIGHT = 2157
Const SCI_GETMARGINRIGHT = 2158
Const SCI_GETMODIFY = 2159
Const SCI_SETSEL = 2160
Const SCI_GETSELTEXT = 2161
Const SCI_GETTEXTRANGE = 2162
Const SCI_HIDESELECTION = 2163
Const SCI_POINTXFROMPOSITION = 2164
Const SCI_POINTYFROMPOSITION = 2165
Const SCI_LINEFROMPOSITION = 2166
Const SCI_POSITIONFROMLINE = 2167
Const SCI_LINESCROLL = 2168
Const SCI_SCROLLCARET = 2169
Const SCI_REPLACESEL = 2170
Const SCI_SETREADONLY = 2171
Const SCI_NULL = 2172
Const SCI_CANPASTE = 2173
Const SCI_CANUNDO = 2174
Const SCI_EMPTYUNDOBUFFER = 2175
Const SCI_UNDO = 2176
Const SCI_CUT = 2177
Const SCI_COPY = 2178
Const SCI_PASTE = 2179
Const SCI_CLEAR = 2180
Const SCI_SETTEXT = 2181
Const SCI_GETTEXT = 2182
Const SCI_GETTEXTLENGTH = 2183
Const SCI_GETDIRECTFUNCTION = 2184
Const SCI_GETDIRECTPOINTER = 2185
Const SCI_SETOVERTYPE = 2186
Const SCI_GETOVERTYPE = 2187
Const SCI_SETCARETWIDTH = 2188
Const SCI_GETCARETWIDTH = 2189
Const SCI_SETTARGETSTART = 2190
Const SCI_GETTARGETSTART = 2191
Const SCI_SETTARGETEND = 2192
Const SCI_GETTARGETEND = 2193
Const SCI_REPLACETARGET = 2194
Const SCI_REPLACETARGETRE = 2195
Const SCI_SEARCHINTARGET = 2197
Const SCI_SETSEARCHFLAGS = 2198
Const SCI_GETSEARCHFLAGS = 2199
Const SCI_CALLTIPSHOW = 2200
Const SCI_CALLTIPCANCEL = 2201
Const SCI_CALLTIPACTIVE = 2202
Const SCI_CALLTIPPOSSTART = 2203
Const SCI_CALLTIPSETHLT = 2204
Const SCI_CALLTIPSETBACK = 2205
Const SCI_CALLTIPSETFORE = 2206
Const SCI_CALLTIPSETFOREHLT = 2207
Const SCI_VISIBLEFROMDOCLINE = 2220
Const SCI_DOCLINEFROMVISIBLE = 2221
Const SCI_WRAPCOUNT = 2235
Const SC_FOLDLEVELBASE = $400
Const SC_FOLDLEVELWHITEFLAG = $1000
Const SC_FOLDLEVELHEADERFLAG = $2000
Const SC_FOLDLEVELBOXHEADERFLAG = $4000
Const SC_FOLDLEVELBOXFOOTERFLAG = $8000
Const SC_FOLDLEVELCONTRACTED = $10000
Const SC_FOLDLEVELUNINDENT = $20000
Const SC_FOLDLEVELNUMBERMASK = $0FFF
Const SCI_SETFOLDLEVEL = 2222
Const SCI_GETFOLDLEVEL = 2223
Const SCI_GETLASTCHILD = 2224
Const SCI_GETFOLDPARENT = 2225
Const SCI_SHOWLINES = 2226
Const SCI_HIDELINES = 2227
Const SCI_GETLINEVISIBLE = 2228
Const SCI_SETFOLDEXPANDED = 2229
Const SCI_GETFOLDEXPANDED = 2230
Const SCI_TOGGLEFOLD = 2231
Const SCI_ENSUREVISIBLE = 2232
Const SC_FOLDFLAG_LINEBEFORE_EXPANDED = $0002
Const SC_FOLDFLAG_LINEBEFORE_CONTRACTED = $0004
Const SC_FOLDFLAG_LINEAFTER_EXPANDED = $0008
Const SC_FOLDFLAG_LINEAFTER_CONTRACTED = $0010
Const SC_FOLDFLAG_LEVELNUMBERS = $0040
Const SC_FOLDFLAG_BOX = $0001
Const SCI_SETFOLDFLAGS = 2233
Const SCI_ENSUREVISIBLEENFORCEPOLICY = 2234
Const SCI_SETTABINDENTS = 2260
Const SCI_GETTABINDENTS = 2261
Const SCI_SETBACKSPACEUNINDENTS = 2262
Const SCI_GETBACKSPACEUNINDENTS = 2263
Const SC_TIME_FOREVER = 10000000
Const SCI_SETMOUSEDWELLTIME = 2264
Const SCI_GETMOUSEDWELLTIME = 2265
Const SCI_WORDSTARTPOSITION = 2266
Const SCI_WORDENDPOSITION = 2267
Const SC_WRAP_NONE = 0
Const SC_WRAP_WORD = 1
Const SC_WRAP_CHAR = 2
Const SCI_SETWRAPMODE = 2268
Const SCI_GETWRAPMODE = 2269
Const SC_WRAPVISUALFLAG_NONE = $0000
Const SC_WRAPVISUALFLAG_END = $0001
Const SC_WRAPVISUALFLAG_START = $0002
Const SCI_SETWRAPVISUALFLAGS = 2460
Const SCI_GETWRAPVISUALFLAGS = 2461
Const SC_WRAPVISUALFLAGLOC_DEFAULT = $0000
Const SC_WRAPVISUALFLAGLOC_END_BY_TEXT = $0001
Const SC_WRAPVISUALFLAGLOC_START_BY_TEXT = $0002
Const SCI_SETWRAPVISUALFLAGSLOCATION = 2462
Const SCI_GETWRAPVISUALFLAGSLOCATION = 2463
Const SCI_SETWRAPSTARTINDENT = 2464
Const SCI_GETWRAPSTARTINDENT = 2465
Const SC_CACHE_NONE = 0
Const SC_CACHE_CARET = 1
Const SC_CACHE_PAGE = 2
Const SC_CACHE_DOCUMENT = 3
Const SCI_SETLAYOUTCACHE = 2272
Const SCI_GETLAYOUTCACHE = 2273
Const SCI_SETSCROLLWIDTH = 2274
Const SCI_GETSCROLLWIDTH = 2275
Const SCI_TEXTWIDTH = 2276
Const SCI_SETENDATLASTLINE = 2277
Const SCI_GETENDATLASTLINE = 2278
Const SCI_TEXTHEIGHT = 2279
Const SCI_SETVSCROLLBAR = 2280
Const SCI_GETVSCROLLBAR = 2281
Const SCI_APPENDTEXT = 2282
Const SCI_GETTWOPHASEDRAW = 2283
Const SCI_SETTWOPHASEDRAW = 2284
Const SCI_TARGETFROMSELECTION = 2287
Const SCI_LINESJOIN = 2288
Const SCI_LINESSPLIT = 2289
Const SCI_SETFOLDMARGINCOLOUR = 2290
Const SCI_SETFOLDMARGINHICOLOUR = 2291
Const SCI_LINEDOWN = 2300
Const SCI_LINEDOWNEXTEND = 2301
Const SCI_LINEUP = 2302
Const SCI_LINEUPEXTEND = 2303
Const SCI_CHARLEFT = 2304
Const SCI_CHARLEFTEXTEND = 2305
Const SCI_CHARRIGHT = 2306
Const SCI_CHARRIGHTEXTEND = 2307
Const SCI_WORDLEFT = 2308
Const SCI_WORDLEFTEXTEND = 2309
Const SCI_WORDRIGHT = 2310
Const SCI_WORDRIGHTEXTEND = 2311
Const SCI_HOME = 2312
Const SCI_HOMEEXTEND = 2313
Const SCI_LINEEND = 2314
Const SCI_LINEENDEXTEND = 2315
Const SCI_DOCUMENTSTART = 2316
Const SCI_DOCUMENTSTARTEXTEND = 2317
Const SCI_DOCUMENTEND = 2318
Const SCI_DOCUMENTENDEXTEND = 2319
Const SCI_PAGEUP = 2320
Const SCI_PAGEUPEXTEND = 2321
Const SCI_PAGEDOWN = 2322
Const SCI_PAGEDOWNEXTEND = 2323
Const SCI_EDITTOGGLEOVERTYPE = 2324
Const SCI_CANCEL = 2325
Const SCI_DELETEBACK = 2326
Const SCI_TAB = 2327
Const SCI_BACKTAB = 2328
Const SCI_NEWLINE = 2329
Const SCI_FORMFEED = 2330
Const SCI_VCHOME = 2331
Const SCI_VCHOMEEXTEND = 2332
Const SCI_ZOOMIN = 2333
Const SCI_ZOOMOUT = 2334
Const SCI_DELWORDLEFT = 2335
Const SCI_DELWORDRIGHT = 2336
Const SCI_LINECUT = 2337
Const SCI_LINEDELETE = 2338
Const SCI_LINETRANSPOSE = 2339
Const SCI_LINEDUPLICATE = 2404
Const SCI_LOWERCASE = 2340
Const SCI_UPPERCASE = 2341
Const SCI_LINESCROLLDOWN = 2342
Const SCI_LINESCROLLUP = 2343
Const SCI_DELETEBACKNOTLINE = 2344
Const SCI_HOMEDISPLAY = 2345
Const SCI_HOMEDISPLAYEXTEND = 2346
Const SCI_LINEENDDISPLAY = 2347
Const SCI_LINEENDDISPLAYEXTEND = 2348
Const SCI_HOMEWRAP = 2349
Const SCI_HOMEWRAPEXTEND = 2450
Const SCI_LINEENDWRAP = 2451
Const SCI_LINEENDWRAPEXTEND = 2452
Const SCI_VCHOMEWRAP = 2453
Const SCI_VCHOMEWRAPEXTEND = 2454
Const SCI_LINECOPY = 2455
Const SCI_MOVECARETINSIDEVIEW = 2401
Const SCI_LINELENGTH = 2350
Const SCI_BRACEHIGHLIGHT = 2351
Const SCI_BRACEBADLIGHT = 2352
Const SCI_BRACEMATCH = 2353
Const SCI_GETVIEWEOL = 2355
Const SCI_SETVIEWEOL = 2356
Const SCI_GETDOCPOINTER = 2357
Const SCI_SETDOCPOINTER = 2358
Const SCI_SETMODEVENTMASK = 2359
Const EDGE_NONE = 0
Const EDGE_LINE = 1
Const EDGE_BACKGROUND = 2
Const SCI_GETEDGECOLUMN = 2360
Const SCI_SETEDGECOLUMN = 2361
Const SCI_GETEDGEMODE = 2362
Const SCI_SETEDGEMODE = 2363
Const SCI_GETEDGECOLOUR = 2364
Const SCI_SETEDGECOLOUR = 2365
Const SCI_SEARCHANCHOR = 2366
Const SCI_SEARCHNEXT = 2367
Const SCI_SEARCHPREV = 2368
Const SCI_LINESONSCREEN = 2370
Const SCI_USEPOPUP = 2371
Const SCI_SELECTIONISRECTANGLE = 2372
Const SCI_SETZOOM = 2373
Const SCI_GETZOOM = 2374
Const SCI_CREATEDOCUMENT = 2375
Const SCI_ADDREFDOCUMENT = 2376
Const SCI_RELEASEDOCUMENT = 2377
Const SCI_GETMODEVENTMASK = 2378
Const SCI_SETFOCUS = 2380
Const SCI_GETFOCUS = 2381
Const SCI_SETSTATUS = 2382
Const SCI_GETSTATUS = 2383
Const SCI_SETMOUSEDOWNCAPTURES = 2384
Const SCI_GETMOUSEDOWNCAPTURES = 2385
Const SC_CURSORNORMAL = -1
Const SC_CURSORWAIT = 4
Const SCI_SETCURSOR = 2386
Const SCI_GETCURSOR = 2387
Const SCI_SETCONTROLCHARSYMBOL = 2388
Const SCI_GETCONTROLCHARSYMBOL = 2389
Const SCI_WORDPARTLEFT = 2390
Const SCI_WORDPARTLEFTEXTEND = 2391
Const SCI_WORDPARTRIGHT = 2392
Const SCI_WORDPARTRIGHTEXTEND = 2393
Const VISIBLE_SLOP = $01
Const VISIBLE_STRICT = $04
Const SCI_SETVISIBLEPOLICY = 2394
Const SCI_DELLINELEFT = 2395
Const SCI_DELLINERIGHT = 2396
Const SCI_SETXOFFSET = 2397
Const SCI_GETXOFFSET = 2398
Const SCI_CHOOSECARETX = 2399
Const SCI_GRABFOCUS = 2400
Const CARET_SLOP = $01
Const CARET_STRICT = $04
Const CARET_JUMPS = $10
Const CARET_EVEN = $08
Const SCI_SETXCARETPOLICY = 2402
Const SCI_SETYCARETPOLICY = 2403
Const SCI_SETPRINTWRAPMODE = 2406
Const SCI_GETPRINTWRAPMODE = 2407
Const SCI_SETHOTSPOTACTIVEFORE = 2410
Const SCI_SETHOTSPOTACTIVEBACK = 2411
Const SCI_SETHOTSPOTACTIVEUNDERLINE = 2412
Const SCI_SETHOTSPOTSINGLELINE = 2421
Const SCI_PARADOWN = 2413
Const SCI_PARADOWNEXTEND = 2414
Const SCI_PARAUP = 2415
Const SCI_PARAUPEXTEND = 2416
Const SCI_POSITIONBEFORE = 2417
Const SCI_POSITIONAFTER = 2418
Const SCI_COPYRANGE = 2419
Const SCI_COPYTEXT = 2420
Const SC_SEL_STREAM = 0
Const SC_SEL_RECTANGLE = 1
Const SC_SEL_LINES = 2
Const SCI_SETSELECTIONMODE = 2422
Const SCI_GETSELECTIONMODE = 2423
Const SCI_GETLINESELSTARTPOSITION = 2424
Const SCI_GETLINESELENDPOSITION = 2425
Const SCI_LINEDOWNRECTEXTEND = 2426
Const SCI_LINEUPRECTEXTEND = 2427
Const SCI_CHARLEFTRECTEXTEND = 2428
Const SCI_CHARRIGHTRECTEXTEND = 2429
Const SCI_HOMERECTEXTEND = 2430
Const SCI_VCHOMERECTEXTEND = 2431
Const SCI_LINEENDRECTEXTEND = 2432
Const SCI_PAGEUPRECTEXTEND = 2433
Const SCI_PAGEDOWNRECTEXTEND = 2434
Const SCI_STUTTEREDPAGEUP = 2435
Const SCI_STUTTEREDPAGEUPEXTEND = 2436
Const SCI_STUTTEREDPAGEDOWN = 2437
Const SCI_STUTTEREDPAGEDOWNEXTEND = 2438
Const SCI_WORDLEFTEND = 2439
Const SCI_WORDLEFTENDEXTEND = 2440
Const SCI_WORDRIGHTEND = 2441
Const SCI_WORDRIGHTENDEXTEND = 2442
Const SCI_SETWHITESPACECHARS = 2443
Const SCI_SETCHARSDEFAULT = 2444
Const SCI_AUTOCGETCURRENT = 2445
Const SCI_ALLOCATE = 2446
Const SCI_TARGETASUTF8 = 2447
Const SCI_SETLENGTHFORENCODE = 2448
Const SCI_ENCODEDFROMUTF8 = 2449
Const SCI_FINDCOLUMN = 2456
Const SCI_GETCARETSTICKY = 2457
Const SCI_SETCARETSTICKY = 2458
Const SCI_TOGGLECARETSTICKY = 2459
Const SCI_STARTRECORD = 3001
Const SCI_STOPRECORD = 3002
Const SCI_SETLEXER = 4001
Const SCI_GETLEXER = 4002
Const SCI_COLOURISE = 4003
Const SCI_SETPROPERTY = 4004
Const KEYWORDSET_MAX = 8
Const SCI_SETKEYWORDS = 4005
Const SCI_SETLEXERLANGUAGE = 4006
Const SCI_LOADLEXERLIBRARY = 4007
Const SCI_GETPROPERTY = 4008
Const SCI_GETPROPERTYEXPANDED = 4009
Const SCI_GETPROPERTYINT = 4010
Const SC_MOD_INSERTTEXT = $1
Const SC_MOD_DELETETEXT = $2
Const SC_MOD_CHANGESTYLE = $4
Const SC_MOD_CHANGEFOLD = $8
Const SC_PERFORMED_USER = $10
Const SC_PERFORMED_UNDO = $20
Const SC_PERFORMED_REDO = $40
Const SC_MULTISTEPUNDOREDO = $80
Const SC_LASTSTEPINUNDOREDO = $100
Const SC_MOD_CHANGEMARKER = $200
Const SC_MOD_BEFOREINSERT = $400
Const SC_MOD_BEFOREDELETE = $800
Const SC_MULTILINEUNDOREDO = $1000
Const SC_MODEVENTMASKALL = $1FFF
Const SCEN_CHANGE = 768
Const SCEN_SETFOCUS = 512
Const SCEN_KILLFOCUS = 256
Const SCK_DOWN = 300
Const SCK_UP = 301
Const SCK_LEFT = 302
Const SCK_RIGHT = 303
Const SCK_HOME = 304
Const SCK_END = 305
Const SCK_PRIOR = 306
Const SCK_NEXT = 307
Const SCK_DELETE = 308
Const SCK_INSERT = 309
Const SCK_ESCAPE = 7
Const SCK_BACK = 8
Const SCK_TAB = 9
Const SCK_RETURN = 13
Const SCK_ADD = 310
Const SCK_SUBTRACT = 311
Const SCK_DIVIDE = 312
Const SCMOD_SHIFT = 1
Const SCMOD_CTRL = 2
Const SCMOD_ALT = 4
Const SCN_STYLENEEDED = 2000
Const SCN_CHARADDED = 2001
Const SCN_SAVEPOINTREACHED = 2002
Const SCN_SAVEPOINTLEFT = 2003
Const SCN_MODIFYATTEMPTRO = 2004
Const SCN_KEY = 2005
Const SCN_DOUBLECLICK = 2006
Const SCN_UPDATEUI = 2007
Const SCN_MODIFIED = 2008
Const SCN_MACRORECORD = 2009
Const SCN_MARGINCLICK = 2010
Const SCN_NEEDSHOWN = 2011
Const SCN_PAINTED = 2013
Const SCN_USERLISTSELECTION = 2014
Const SCN_URIDROPPED = 2015
Const SCN_DWELLSTART = 2016
Const SCN_DWELLEND = 2017
Const SCN_ZOOM = 2018
Const SCN_HOTSPOTCLICK = 2019
Const SCN_HOTSPOTDOUBLECLICK = 2020
Const SCN_CALLTIPCLICK = 2021
Const SCN_AUTOCSELECTION = 2022
