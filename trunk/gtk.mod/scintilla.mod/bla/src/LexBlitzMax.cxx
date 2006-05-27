// Lexer for BlitzMax
// (C) 2006 Philipp Kerling

#include <iostream>
#include <string>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdio.h>
#include <stdarg.h>

#include "Platform.h"

#include "PropSet.h"
#include "Accessor.h"
#include "StyleContext.h"
#include "KeyWords.h"
#include "Scintilla.h"
#include "SciLexer.h"

#include <regexp/Matcher.h>
#include <regexp/Pattern.h>
#include <regexp/WCMatcher.h>
#include <regexp/WCPattern.h>

using namespace std;

#define BMXPRECOMPPATTERN(x,y) { if(x == NULL) { cout << "Precompiling pattern: " << y << endl; x = Pattern::compile(y, Pattern::CASE_INSENSITIVE); if(x == NULL) { cerr << "Couldn´t compile pattern!" << endl; return; } } }

// Global, precompiled patterns (performance speedup because they don´t need to be recompiled every time)
Pattern* pRem = NULL;
Pattern* pEndRem = NULL;
Pattern* pLongEndRem = NULL;
Pattern* pLevelPlus = NULL;
Pattern* pLevelMinus = NULL;

static inline bool isIdentifier(char c)
{
	// Hmm... I could use regex here. But I don´t do that due to performance issues, and it works this way as well :)
	return ((c >= '0' && c >= '9') || (c >= 'A' && c <= 'Z') || (c == '_') || (c >= 'a' && c <= 'z'));
}

static inline bool isDecimalNumber(char c)
{
	return ((c >= '0' && c <= '9'));
}

static inline bool isOperator(char c)
{
	return (c == '+' || c == '-' || c == '/' || c == ':' || c == '=' || c == '<' || c == '>' || c == '^' || c == '|' || c == '&' || c == '~');
}

static inline bool isHexNumber(char c)
{
	return ((c >= '0' && c <= '9') || (c >= 'A' && c <= 'F') || (c >= 'a' && c <= 'f'));
}

static inline bool isBinNumber(char c)
{
	return (c == '0' || c == '1');
}

static inline void PrecompileBlitzMaxPatterns ()
{
#ifdef DEBUG
	cout << "PrecompileBlitzMaxPatterns()" << endl;
#endif
	// ^\s*rem(b|$)
	BMXPRECOMPPATTERN(pRem,"^\\s*rem(\\b.*|$)");
	// ^\s*endrem(\s*|$)
	BMXPRECOMPPATTERN(pEndRem,"^\\s*endrem(\\s*|$)");
	// ^\s*end\srem(\s*|$)
	BMXPRECOMPPATTERN(pLongEndRem,"^\\s*end\\srem(\\s*|$)");
	// ^[\s]*(function|while|repeat|type|rem|foldstart).*$
	BMXPRECOMPPATTERN(pLevelPlus,"^[\\s]*(function|while|repeat|type|rem|foldstart|for).*$");
	// ^\s*(end\s*(function|type|rem)|foldend|until|forever|next).*$
	BMXPRECOMPPATTERN(pLevelMinus,"^\\s*(end\\s*(function|type|rem)|foldend|until|forever|next).*$");
#ifdef DEBUG
	cout << "~PrecompileBlitzMaxPatterns()" << endl;
#endif
}

static void ColouriseBlitzMaxDoc (
	unsigned int startPos, int length,
	int initStyle,
	WordList *keywordlists[],
	Accessor &styler)
{
	PrecompileBlitzMaxPatterns();

	StyleContext sc(startPos, length, initStyle, styler);
	string actline = "";
	char startch = 0;
	for (; sc.More(); sc.Forward()) {
		if (sc.atLineStart)
		{
			// Get whole line
			actline = "";
			unsigned int i = sc.currentPos;
			while(true)
			{
				char actch = styler.SafeGetCharAt(i);
				if (!styler.IsLeadByte(actch)) {
					if (actch == '\r' || actch == '\n' || i >= startPos+length)
					{
						break;
					} else {
						actline += actch;
					}
				}
				i++;
			}
		}
		switch (sc.state)
		{
			case SCE_BM_NUMBER:
				if (!isDecimalNumber(sc.ch))
				{
					sc.SetState(SCE_BM_DEFAULT);
				}
				break;
			
			case SCE_BM_HEXNUMBER:
				if (!isHexNumber(sc.ch))
				{
					sc.SetState(SCE_BM_DEFAULT);
				}
				break;
				
			case SCE_BM_BINNUMBER:
				if (!isBinNumber(sc.ch))
				{
					sc.SetState(SCE_BM_DEFAULT);
				}
				break;
			
			case SCE_BM_OPERATOR:
				if (!isOperator(sc.ch))
				{
					sc.SetState(SCE_BM_DEFAULT);
				}
				break;
			
			case SCE_BM_IDENTIFIER:
				if (!isIdentifier(sc.ch))
				{
					char s[1000];
					sc.GetCurrentLowered(s, sizeof(s));
					if (startch != 0)
					{
						cout << "blabla" << endl;
						memmove(&s[1], &s[0], sizeof(s));
						s[0] = startch;
					}
					cout << "length: " << strlen(s) << ", value: " << s << endl;
					if (keywordlists[0]->InList(s))
					{
						cout << "blubb" << endl;
						sc.ChangeState(SCE_BM_KEYWORD);
//						sc.SetState(SCE_BM_DEFAULT);
					}
					sc.SetState(SCE_BM_DEFAULT);
				}
				break;
			
			case SCE_BM_COMMENT:
				if (sc.atLineStart)
				{
					sc.SetState(SCE_BM_DEFAULT);
				}
				break;
				
			case SCE_BM_MULTILINECOMMENT:
				// Only perform the pattern match at the beginning of the line, due to performance reasons
				if (sc.atLineStart) {
					if (pEndRem->matches(actline))
					{
						// Forward to the end of the line in order to get the endrem etc. colored right
						unsigned int forwardNum = static_cast<unsigned int> (actline.length()); for(unsigned int i = 0; i <	forwardNum; i++) sc.Forward();
						sc.SetState(SCE_BM_DEFAULT);
					}
					if (pLongEndRem->matches(actline))
					{
						// Forward to the end of the line in order to get the end rem etc. colored right
						unsigned int forwardNum = static_cast<unsigned int> (actline.length()); for(unsigned int i = 0; i <	forwardNum; i++) sc.Forward();
						sc.SetState(SCE_BM_DEFAULT);
					}
				}
				break;
				
			case SCE_BM_STRING:
				if (sc.ch == '\"')
				{
					sc.ForwardSetState(SCE_BM_DEFAULT);
				} else if (sc.atLineEnd) {
					sc.SetState(SCE_BM_DEFAULT);
				}
				break;
		}
		
		if (sc.state == SCE_BM_DEFAULT)
		{
			if (sc.ch == '\'') {
				sc.SetState(SCE_BM_COMMENT);
			} else if (sc.ch == '\"') {
				sc.SetState(SCE_BM_STRING);
			} else if (isIdentifier(sc.ch)) {
				sc.SetState(SCE_BM_IDENTIFIER);
			} else if (isDecimalNumber(sc.ch)) {
				sc.SetState(SCE_BM_NUMBER);
			} else if (sc.ch == '%') {
				sc.SetState(SCE_BM_BINNUMBER);
			} else if (sc.ch == '$') {
				sc.SetState(SCE_BM_HEXNUMBER);
			} else if (isOperator(sc.ch)) {
				sc.SetState(SCE_BM_OPERATOR);
			}
			if (sc.atLineStart) {
				if (pRem->matches(actline))
				{
					sc.SetState(SCE_BM_MULTILINECOMMENT);
				}
			}
		}
	}
	sc.Complete();
}

static void FoldBlitzMaxDoc (
	unsigned int startPos, int length,
	int initStyle,
	WordList *[],
	Accessor &styler)
{
	PrecompileBlitzMaxPatterns();
	int line = styler.GetLine(startPos);
	int level = styler.LevelAt(line);
	int endPos = startPos + length;
	string actline;
	for (int i = startPos; i < endPos; i++)
	{
		char ch = styler.SafeGetCharAt(i);
		if (ch == '\n' || ch == '\r')
		{
			if (level < 0) level = 0;
			if (pLevelPlus->matches(actline)) level++;
			if (pLevelMinus->matches(actline)) level--;
			styler.SetLevel(line, level);
			line++;
			actline = "";
		} else {
			actline = actline + ch;
		}
	}
}

static const char * const BlitzMaxWordLists[] = {
            "Primary keywords and identifiers",
            "Secondary keywords and identifiers", // Currently unused
            0,
        };

LexerModule lmBlitzMax(SCLEX_BLITZMAX, ColouriseBlitzMaxDoc, "bmx", FoldBlitzMaxDoc,BlitzMaxWordLists);
