Import BRL.Filesystem
Import BRL.Retro

Type TSFont
	Field Name:String
	Field Size:Int
	Field Color:String
	Field R:Byte
	Field G:Byte
	Field B:Byte
	
	Function Create:TSFont(Name:String,Size:Int,R:byte,G:Byte,B:byte)
		Local TpFont:TSFont = New TsFont
			TpFont.Name = Name
			TpFont.Size = Size
			TpFont.R = R
			TpFont.G = G
			TpFont.B = B
			TpFont.Color = String(R) + "," + String(G) + "," + String(B)
		Return TpFont
	End Function
	
	Method Save(AN:String,SaveFile:TStream)
		SaveFile.WriteLine(AN+"_Name:"+Name)	
		SaveFile.WriteLine(AN+"_Size:"+Size)	
		SaveFile.WriteLine(AN+"_Color:"+Color)	
	End Method
	
	Method Load(AN:String,LoadFile:TStream)
		Name = Load_by_Name(AN+"_Name",LoadFile)
		Size = Int(Load_by_Name(AN+"_Size",LoadFile))
		Color = Load_by_Name(AN+"_Color",LoadFile)
		R = ExtractR(Color)
		G = ExtractG(Color)
		B = ExtractB(Color)
	End Method
	
End Type

Type TStyle
	Field Lexer:Int = 78
	Field StyleBits:Int = 33
	Field BGColor:String = "22,58,80"
	Field Font_Default:TSFont = TsFont.Create("!bitstream charter",12,238,238,238)
	Field Font_Comment:TSFont = TsFont.Create("!bitstream charter",12,177,231,235)
	Field Font_Number:TSFont = TsFont.Create("!bitstream charter",12,51,255,221)
	Field Font_Keyword:TSFont = TSFont.Create("!bitstream charter",12,255,255,0)
	Field Font_String:TSFont = TSFont.Create("!bitstream charter",12,0,255,102)
	Field Font_Identifier:TSFont = TSFont.Create("!bitstream charter",12,255,255,255)
	Field Font_Operator:TSFont = TSFont.Create("!bitstream charter",14,200,200,200)
	Field Font_Error:TSFont = TSFont.Create("!bitstream charter",12,255,0,0)
	Field Font_Linenumber:TSFont = TSFont.Create("!helvetica",8,255,255,255)
	Field CaretColor:String = "170,170,170"
	Field CaretBG:String = "48,51,102"
	Field CaretVisible:Byte = True
	Field SelectionBGColor:String = "170,170,170"
	Field MarginWidth0:Int = 35
	Field MarginWidth1:Int = 20
	Field MarginWidth2:Int = 0
	Field Margin_BGColor:String = "42,78,100"
	
	Method Save(Name:string)
		If FileType("cfg/styles/"+Name) = 1
			DeleteFile("cfg/styles/"+Name)
			CreateFile("cfg/styles/"+Name)
		ElseIF FileType("cfg/styles/"+Name) = 0
			CreateFile("cfg/styles/"+Name)
		End If 
		Local SaveFile:TStream = OpenStream("cfg/styles/"+Name)
		
			SaveFile.WriteLine("Lexer:"+Lexer)	
			SaveFile.WriteLine("StyleBits:"+StyleBits)	
			SaveFile.WriteLine("BGColor:"+BGColor)	
			
			Font_Default.Save("Default",SaveFile)
			Font_Comment.Save("Comment",SaveFile)
			Font_Number.Save("Number",SaveFile)
			Font_Keyword.Save("Keyword",SaveFile)
			Font_String.Save("String",SaveFile)
			Font_Identifier.Save("Identifier",SaveFile)
			Font_Operator.Save("Operator",SaveFile)
			Font_Error.Save("Error",SaveFile)
			Font_Linenumber.Save("Linenumber",SaveFile)
			
			SaveFile.WriteLine("CaretColor:"+CaretColor)	
			SaveFile.WriteLine("CaretBG:"+CaretBG)	
			SaveFile.WriteLine("CaretVisible:"+CaretVisible)	
			SaveFile.WriteLine("SelectionBGColor:"+SelectionBGColor)	
			
			SaveFile.WriteLine("MarginWidth0:"+MarginWidth0)	
			SaveFile.WriteLine("MarginWidth1:"+MarginWidth1)	
			SaveFile.WriteLine("MarginWidth2:"+MarginWidth2)	
			SaveFile.WriteLine("Margin_BGColor:"+Margin_BGColor)	

		SaveFile.Close()
	End Method
	
	Method Load(Name:string)
		If FileType("cfg/styles/"+Name) <> 1 then Return
		Local LoadFile:TStream = OpenFile("cfg/styles/"+Name)
		
			Lexer = Int(Load_by_Name("Lexer",LoadFile))
			StyleBits = Int(Load_by_Name("StyleBits",LoadFile))
			BGColor = Load_by_Name("BGColor",LoadFile)
			
			Font_Default.Load("Default",LoadFile)
			Font_Comment.Load("Comment",LoadFile)
			Font_Number.Load("Number",LoadFile)
			Font_Keyword.Load("Keyword",LoadFile)
			Font_String.Load("String",LoadFile)
			Font_Identifier.Load("Identifier",LoadFile)
			Font_Operator.Load("Operator",LoadFile)
			Font_Error.Load("Error",LoadFile)
			Font_Linenumber.Load("Linenumber",LoadFile)
			
			CaretColor = Load_by_Name("CaretColor",LoadFile)
			CaretBG = Load_by_Name("CaretBG",LoadFile)
			CaretVisible = Byte(Load_by_Name("CaretVisible",LoadFile))
			SelectionBGColor = Load_by_Name("SelectionBGColor",LoadFile)
			
			MarginWidth0 = Int(Load_by_Name("MarginWidth0",LoadFile))
			MarginWidth1 = Int(Load_by_Name("MarginWidth1",LoadFile))
			MarginWidth2 = Int(Load_by_Name("MarginWidth2",LoadFile))
			Margin_BGColor = Load_by_Name("Margin_BGColor",LoadFile)

		LoadFile.Close()
	End Method
	
End Type

Function Load_by_Name:String(Name:String,LoadFile:TStream)
	While Not Eof(LoadFile)
		Local RL:String = ReadLine(LoadFile)
		Local LName:String = Left(RL, Instr(RL,":")-1)
		Local LValue:String = Mid(RL, Instr(RL,":")+1,Len(RL)-Instr(RL,":"))
		If LName = Name Then Return LValue
	Wend
	Return Null
End Function

Function ExtractR:Byte(Text:String)
	Local CPos:Int = Instr(Text,",")
	If CPos = -1 Scream "Fehler beim Lesen der Farbe"
	Return Byte(Left(Text,CPos-1))
End Function

Function ExtractG:Byte(Text:String)
	Local CPos:Int = Instr(Text,",")
	If CPos = -1 Scream "Fehler beim Lesen der Farbe"
	Local CSPos:Int = Instr(Text,",",CPos+1)
	If CSPos = -1 Scream "Fehler beim Lesen der Farbe"
	Return Byte(Mid(Text,CPos+1,CSPos-CPos-1))
End Function

Function ExtractB:Byte(Text:String)
	Local CPos:Int = Instr(Text,",")
	If CPos = -1 Scream "Fehler beim Lesen der Farbe"
	Local CSPos:Int = Instr(Text,",",CPos+1)
	If CSPos = -1 Scream "Fehler beim Lesen der Farbe"
	Local CTPos:Int = Instr(Text,",",CSPos+1)
	If CTPos = -1 Scream "Fehler beim Lesen der Farbe"
	Return Byte(Mid(Text,CSPos+1,CTPos-CSPos-1))
End Function

Function MakeColorString:String(ColorR:Byte,ColorG:Byte,ColorB:Byte)
	Return ColorR + "," + ColorG + "," + ColorB
End Function



Function Scream(What:String)
	Local TMR:Byte Ptr= gtk_message_dialog_new(Null,0,GTK_MESSAGE_WARNING,GTK_BUTTONS_OK,"Warnung".ToCString())
	gtk_message_dialog_format_secondary_text(TMR,ISO_8859_1_To_UTF_8(What).ToCString())
	gtk_dialog_run(TMR)
	gtk_widget_destroy(TMR)
End Function

Function ISO_8859_1_To_UTF_8:String(InputString:String)
	Return String.FromCString(g_convert(InputString.ToCString(),-1,"UTF-8".ToCString(),"ISO-8859-1".ToCString(),Null,Null,Null))
End Function

