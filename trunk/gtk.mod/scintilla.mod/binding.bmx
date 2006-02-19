Extern
	Function scintilla_new:Byte Ptr()="scintilla_new"
	Function scintilla_get_type:Byte Ptr()="scintilla_get_type"
	Function scintilla_send_message:Int(Scintilla:Byte Ptr,uno:Int,due:Byte Ptr,tre:Byte Ptr)="scintilla_send_message"
End Extern	
Rem
struct NotifyHeader {   // This matches the Win32 NMHDR structure
    void *hwndFrom;     // environment specific window handle/pointer
    uptr_t idFrom;	// CtrlID of the window issuing the notification
    unsigned Int code;  // The SCN_* notification code
};

struct SCNotification {
    struct NotifyHeader nmhdr;
    Int position;
    // SCN_STYLENEEDED, SCN_MODIFIED, SCN_DWELLSTART,
    // SCN_DWELLEND, SCN_CALLTIPCLICK,
    // SCN_HOTSPOTCLICK, SCN_HOTSPOTDOUBLECLICK
    Int ch;             // SCN_CHARADDED, SCN_KEY
    Int modifiers;      // SCN_KEY, SCN_HOTSPOTCLICK, SCN_HOTSPOTDOUBLECLICK
    Int modificationType; // SCN_MODIFIED
    Const char *text;   // SCN_MODIFIED, SCN_USERLISTSELECTION, SCN_AUTOCSELECTION
    Int length;         // SCN_MODIFIED
    Int linesAdded;     // SCN_MODIFIED
    Int message;        // SCN_MACRORECORD
    uptr_t wParam;      // SCN_MACRORECORD
    sptr_t lParam;      // SCN_MACRORECORD
    Int line;           // SCN_MODIFIED
    Int foldLevelNow;   // SCN_MODIFIED
    Int foldLevelPrev;  // SCN_MODIFIED
    Int margin;         // SCN_MARGINCLICK
    Int listType;       // SCN_USERLISTSELECTION, SCN_AUTOCSELECTION
    Int x;              // SCN_DWELLSTART, SCN_DWELLEND
    Int y;              // SCN_DWELLSTART, SCN_DWELLEND
};
End Rem
Type SCNotification
		Field code:Int
		Field position:Int
		Field ch:Int
		Field modifiers:Int
		Field modificationType:Int
		Field text:Byte Ptr
		Field length:Int
		Field linesAdded:Int
		Field message:Int
		Field wParam:Byte Ptr
		Field lParam:Byte Ptr
		Field line:Int
		Field foldLevelNow:Int
		Field foldLevelPrev:Int
		Field margin:Int
		Field listType:Int
		Field x:Int
		Field y:Int
End Type