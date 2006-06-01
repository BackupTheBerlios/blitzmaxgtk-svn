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
	
End Type

Type TStyle
	Field Lexer:Int = SCLEX_BLITZMAX
	Field StyleBits:Int = STYLE_LINENUMBER
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

		SaveFile.Close()
	End Method
End Type

