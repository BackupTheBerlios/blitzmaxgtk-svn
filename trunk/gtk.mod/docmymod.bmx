Rem
DocMyMod v0.1
(c) 2005-2006 by phiker
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

The GNU General Public License can be found at http://www.gnu.org
End Rem
Strict

Framework BRL.Basic
Import BRL.Retro
Import BRL.Hook
?linux
Import BRL.GLGraphics
?
Import BRL.MaxUtil
Import BRL.System
Import Pub.Resource

' Types and consts
'foldstart
Type TType
	Field Name:String
	Field Description:String
	Field Methods:TList
	Field Functions:TList
	Method New()
		Methods = New TList
		Functions = New TList
	End Method
End Type

Type TMethod
	Field Name:String
	Field RetType:String
	Field Params:TList
	Method New()
		Params = New TList
	End Method
End Type

Type TParam
	Field Name:String
	Field PType:String
	Field DefaultValue:String
End Type

Type TModuleInfo
	Field Name:String
	Field Value:String
End Type

Const DOCMYMOD_VERSION:String = "0.2 (FOR TESTING PURPOSES ONLY, NOT FOR PRODUCTION USE)"

Const EXPECT_NOTHING = 0
Const EXPECT_ENDTYPE = 1
Const EXPECT_ENDMETHOD = 2
Const EXPECT_ENDFUNCTION = 3
Const EXPECT_ENDFUNCTION_INTYPE = 4
Const EXPECT_ENDEXTERN = 5
Const EXPECT_ENDTYPE_INEXTERN = 6

Const MODE_NOTHING = 0
Const MODE_SKIP    = 1
Const MODE_WRITEFUNCTIONS = 2
Const MODE_WRITETYPES     = 3
Const MODE_WRITEPARAMS    = 4
Const MODE_WRITEMODULEINFOS = 5
Const MODE_WRITEMETHODS   = 6

Const BUILDLANG:String = "de"

Local StartTime:Int = MilliSecs()
Global ResMan:TResourceManager = New TResourceManager
ResMan.SetLanguage(BUILDLANG)
ResMan.AddResource("DocMods")

Global Types:TList = New TList
Global Functions:TList = New TList
Global ModuleInfos:TList = New TList
Global ModuleName:String = ""

'foldend
Print "DocMyMod v" + DOCMYMOD_VERSION
Local ArgNum:Int = AppArgs.Length - 1
Print "Called as " + AppArgs[0]

Global ModtoDoc:String
If ArgNum>= 1 Then
	ModtoDoc = AppArgs[1]
Else
	Print "No file specified"
	ModtoDoc = Input$("Please enter the modfile to doc (full path) >")
EndIf

Local PrgDir:String = AppDir

Local BaseDir:String = ExtractDir(ModtoDoc)
Print "Base path: " + BaseDir
ChangeDir BaseDir
Print "Analyzing files"
ProcessFile(ModtoDoc)
Print "OK, writing documentation"
CreateDir "doc"
ChangeDir "doc"
Print "Cleaning up folder..."
Local Files:String[]
Files = LoadDir(CurrentDir())
WriteStdout "Deleting: "
For Local File:String = EachIn Files
	WriteStdout File + " "
	DeleteFile File
Next
Print "OK"
WriteIndex(PrgDir+"/template.index.html","index.htm")
For Local ActType:TType = EachIn Types
	If Not (ActType.Methods.IsEmpty() And ActType.Functions.IsEmpty()) Then WriteType(PrgDir+"/template.type.html",ActType.Name + ".htm",Varptr ActType)
Next
ChangeDir "../../../../doc/bmxmods"
WriteCommandList("commands.txt",Mid(ModtoDoc,Instr(ModtoDoc,"mod")))
RenameFile "commands.txt", "commands.txt.old"
RenameFile "commands.txt.2", "commands.txt"
Local EndTime:Int = MilliSecs()
Local TimeElapsed:Int = EndTime-StartTime
Local TimeElapsedR:Int = TimeElapsed / 1000
If TimeElapsed Mod 1000 >= 500 Then TimeElapsedR = TimeElapsedR + 1
Print "All done in " + TimeElapsedR + " seconds (" + TimeElapsed + " milliseconds)"
Print "Have a nice day!"

Function WriteIndex(TemplatePath:String,FilePath:String)
'	WriteStdout "Opening template file (" + TemplatePath + ")... "
	Local Template:TStream = ReadStream(TemplatePath)
	If Template = Null Then
		Print "Could not open " + TemplatePath
		End
	End If
'	Print "OK"
'	WriteStdout "Opening index file (" + FilePath + ")... "
	Local Index:TStream = WriteStream(FilePath)
	If Index = Null Then
		Print "Could not open " + FilePath + " for writing"
		End
	End If
'	Print "OK"
	WriteStdout "Writing " + FilePath + "... "
	Local Mode:Int = MODE_NOTHING
	Local SkipLevel:Int = 0
	Local BeforeSkip:Int = MODE_NOTHING
	Local PosBefore:Int = 0, PosBeforeParam:Int = 0
	Local ActIndex:Int = 0, ActParamIndex:Int = 0
	Local InLineIfStart:Int = 0
	Local VerifiedIfLevel:Int = 0
	Local ActType:TType, ActMethod:TMethod, ActParam:TParam, ActInfo:TModuleInfo
	Local TokenList:TList = New TList
	Local SedList:TList   = New TList
	While Not Template.EOF()
		Local ActLine:String  = Template.ReadLine()
		InLineIfStart = -1
		TokenList.Clear()
		SedList.Clear()
		SedLangTokens(Varptr TokenList,Varptr SedList)
		Select Mode
			Case MODE_NOTHING
				TokenList.addLast("SITETITLE")
				SedList.addLast(ModuleName)
			Case MODE_SKIP
			Case MODE_WRITEFUNCTIONS
				TokenList.addLast("FUNCTIONNAME")
				SedList.addLast(ActMethod.Name)
			Case MODE_WRITETYPES
				TokenList.addLast("TYPENAME")
				SedList.addLast(ActType.Name)
				If ActType.Description <> "" Then
					TokenList.addLast("DESCRIPTION")
					SedList.addLast(ActType.Description)
				EndIf
			Case MODE_WRITEPARAMS
				TokenList.addLast("PARAMETER")
				SedList.addLast(ActParam.Name)
				TokenList.addLast("PARAMTYPE")
				SedList.addLast(ActParam.PType)
			Case MODE_WRITEMODULEINFOS
				TokenList.addLast("INFO")
				If ResMan.Get("ModuleInfo" + ActInfo.Name) = "" Then
					SedList.addLast(ActInfo.Name)
				Else
					SedList.addLast(ResMan.Get("ModuleInfo" + ActInfo.Name))
				EndIf
				TokenList.addLast("INFOVALUE")
				SedList.addLast(ActInfo.Value)
			Default
				Print "Something strange happened"
		End Select
		While True
			Local Pos:Int, EPos:Int
			Local Comment:String = GetNextComment(Varptr ActLine,True,Varptr Pos,Varptr EPos)
			If Comment = "-1" Then Exit
			Local IfCondition:String = GetIfCondition(Comment)
			If IfCondition <> "-1" Then
				Select Mode
					Case MODE_NOTHING
						Select Lower(IfCondition)
							Case "types"
								If Types.Count() = 0 Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									VerifiedIfLevel = VerifiedIfLevel + 1
								End If
							Case "functions"
								If Functions.Count() = 0 Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									VerifiedIfLevel = VerifiedIfLevel + 1
								EndIf
							Case "infos"
								If ModuleInfos.Count() = 0 Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									VerifiedIfLevel = VerifiedIfLevel + 1
								EndIf
							Default
								Print "Unexpected if condition (" + IfCondition + ") in " + TemplatePath
						End Select
					Case MODE_SKIP
						SkipLevel = SkipLevel + 1
					Case MODE_WRITETYPES
						Select Lower(IfCondition)
							Case "description"
								If ActType.Description = "" Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									VerifiedIfLevel = VerifiedIfLevel + 1
								EndIf
							Case "typefile"
								If ActType.Methods.IsEmpty() And ActType.Functions.IsEmpty() Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									VerifiedIfLevel = VerifiedIfLevel + 1
								EndIf
							Default
								Print "Unexpected if condition (" + IfCondition + ") in " + TemplatePath
						End Select
					Case MODE_WRITEFUNCTIONS
						Select Lower(IfCondition)
							Case "parameters"
								If ActMethod.Params.Count() = 0 Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									VerifiedIfLevel = VerifiedIfLevel + 1
								End If
							Case "returntype"
								If ActMethod.RetType = "" Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									TokenList.addLast("RETURNTYPE")
									SedList.addLast(ActMethod.RetType)
									VerifiedIfLevel = VerifiedIfLevel + 1
								EndIf
							Default
								Print "Unexpected if condition (" + IfCondition + ") in " + TemplatePath
						End Select
					Case MODE_WRITEPARAMS
						Select Lower(IfCondition)
							Case "defaultvalue"
								If ActParam.DefaultValue = "" Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									TokenList.addLast("DEFAULTVALUE")
									SedList.addLast(ActParam.DefaultValue)
									VerifiedIfLevel = VerifiedIfLevel + 1
								EndIf
							Default
								Print "Unexpected if condition (" + IfCondition + ") in " + TemplatePath							
						End Select
					Case MODE_WRITEMODULEINFOS
					Default
						Print "Something strange happened"
				End Select
			EndIf
			Local BeginOf:String = GetBeginOf(Comment)
			If BeginOf <> "-1" Then
				Select Mode
					Case MODE_SKIP
					Case MODE_NOTHING
						Select Lower(BeginOf)
							Case "type"
								If Types.Count() <> 0 Then
									ActType = TType(Types.ValueAtIndex(0))
									ActIndex = 0
									PosBefore = Template.Pos()
									Mode = MODE_WRITETYPES
								EndIf
							Case "function"
								If Functions.Count() <> 0 Then
									ActMethod = TMethod(Functions.ValueAtIndex(0))
									ActIndex = 0
									PosBefore = Template.Pos()
									Mode = MODE_WRITEFUNCTIONS
								EndIf
							Case "info"
								If ModuleInfos.Count() <> 0 Then
									ActInfo = TModuleInfo(ModuleInfos.ValueAtIndex(0))
									ActIndex = 0
									PosBefore = Template.Pos()
									Mode = MODE_WRITEMODULEINFOS
								EndIf
							Default
								Print "Unexpected begin of " + BeginOf + " in " + TemplatePath
						End Select
					Case MODE_WRITEFUNCTIONS
						Select Lower(BeginOf)
							Case "parameter"
								If ActMethod.Params.Count() <> 0 Then
									ActParam = TParam(ActMethod.Params.ValueAtIndex(0))
									ActParamIndex = 0
									PosBeforeParam = Template.Pos()
									Mode = MODE_WRITEPARAMS
								EndIf
							Default
								Print "Unexpected begin of " + BeginOf + " in " + TemplatePath
						End Select
					Default
						Print "Unexpected begin of " + BeginOf + " in " + TemplatePath
				End Select
			EndIf
			Local EndOf:String = GetEndOf(Comment)
			If EndOf <> "-1" Then
				Select Mode
					Case MODE_SKIP
						Select Lower(EndOf)
							Case "if"
								SkipLevel = SkipLevel - 1
								If SkipLevel = 0 Then
									Mode = BeforeSkip
									BeforeSkip = MODE_NOTHING
								EndIf
								If InLineIfStart <> -1 Then
									ActLine = Left(ActLine,InLineIfStart) + Mid(ActLine,EPos)
									InLineIfStart = -1							
								EndIf
						End Select
					Case MODE_WRITETYPES
						Select Lower(EndOf)
							Case "type"
								If ActIndex >= Types.Count()-1 Then
									Mode = MODE_NOTHING
									PosBefore = 0
									ActType = Null
									ActIndex = 0
								Else
									ActIndex = ActIndex + 1
									ActType = TType(Types.ValueAtIndex(ActIndex))
									Template.Seek(PosBefore)
									While True
										Local ThrowMe:String = GetNextComment(Varptr ActLine,True)
										If ThrowMe = "-1" Exit
									Wend
								EndIf
							Case "if"
								VerifiedIfLevel = VerifiedIfLevel - 1
								If VerifiedIfLevel < 0 Then
									Print "Unexpected end of " + EndOf + " in " + TemplatePath
								EndIf							
							Default
								Print "Unexpected end of " + EndOf + " in " + TemplatePath
						End Select
					Case MODE_WRITEFUNCTIONS
						Select Lower(EndOf)
							Case "function"
								If ActIndex >= Functions.Count()-1 Then
									Mode = MODE_NOTHING
									PosBefore = 0
									ActMethod = Null
									ActIndex = 0
								Else
									ActIndex = ActIndex + 1
									ActMethod = TMethod(Functions.ValueAtIndex(ActIndex))
									Template.Seek(PosBefore)
									While True
										Local ThrowMe:String = GetNextComment(Varptr ActLine,True)
										If ThrowMe = "-1" Exit
									Wend
								EndIf
							Case "if"
								VerifiedIfLevel = VerifiedIfLevel - 1
								If VerifiedIfLevel < 0 Then
									Print "Unexpected end of " + EndOf + " in " + TemplatePath
								EndIf							
							Default
								Print "Unexpected end of " + EndOf + " in " + TemplatePath
						End Select
					Case MODE_WRITEPARAMS
						Select Lower(EndOf)
							Case "parameter"
								If ActParamIndex >= ActMethod.Params.Count()-1 Then
									Mode = MODE_WRITEFUNCTIONS
									PosBeforeParam = 0
									ActParam = Null
									ActParamIndex = 0
								Else
									ActParamIndex = ActParamIndex + 1
									ActParam = TParam(ActMethod.Params.ValueAtIndex(ActParamIndex))
									Template.Seek(PosBeforeParam)
									While True
										Local ThrowMe:String = GetNextComment(Varptr ActLine,True)
										If ThrowMe = "-1" Exit
									Wend
								EndIf
							Case "if"
								VerifiedIfLevel = VerifiedIfLevel - 1
								If VerifiedIfLevel < 0 Then
									Print "Unexpected end of " + EndOf + " in " + TemplatePath
								EndIf							
							Default
								Print "Unexpected end of " + EndOf + " in " + TemplatePath
						End Select
					Case MODE_WRITEMODULEINFOS
						Select Lower(EndOf)
							Case "info"
								If ActIndex >= ModuleInfos.Count()-1 Then
									MODE = MODE_NOTHING
									PosBefore = 0
									ActInfo = Null
									ActIndex = 0
								Else
									ActIndex = ActIndex + 1
									ActInfo = TModuleInfo(ModuleInfos.ValueAtIndex(ActIndex))
									Template.Seek(PosBefore)
									While True
										Local ThrowMe:String = GetNextComment(Varptr ActLine,True)
										If ThrowMe = "-1" Exit
									Wend
								EndIf							
							Default
								Print "Unexpected end of " + EndOf + " in " + TemplatePath
						End Select
					Default
						If Lower(EndOf) = "if" Then
							VerifiedIfLevel = VerifiedIfLevel - 1
							If VerifiedIfLevel < 0 Then
								Print "Unexpected end of " + EndOf + " in " + TemplatePath
							EndIf
						Else
							Print "Unexpected end of " + EndOf + " in " + TemplatePath
						EndIf
				End Select
			EndIf
		Wend
		If InLineIfStart <> -1 Then
			ActLine = Left(ActLine,InLineIfStart)
		EndIf
		If Mode <> MODE_SKIP Then SedTokens(Varptr ActLine,Varptr TokenList,Varptr SedList)
		If Mode <> MODE_SKIP Then Index.WriteLine(ActLine)
	Wend
	If VerifiedIfLevel <> 0 Then 
		Print "Warning! Missing " + VerifiedIfLevel + " END IFs"
	Else
		Print "OK"
	EndIf
End Function

Function WriteType(TemplatePath:String,FilePath:String,TheType:TType Ptr)
'	WriteStdout "Opening template file (" + TemplatePath + ")... "
	Local Template:TStream = ReadStream(TemplatePath)
	If Template = Null Then
		Print "Could not open " + TemplatePath
		End
	End If
'	Print "OK"
'	WriteStdout "Opening index file (" + FilePath + ")... "
	Local TypeFile:TStream = WriteStream(FilePath)
	If TypeFile = Null Then
		Print "Could not open " + FilePath + " for writing"
		End
	End If
'	Print "OK"
	WriteStdout "Writing " + FilePath + "... "
	Local Mode:Int = MODE_NOTHING
	Local SkipLevel:Int = 0
	Local BeforeSkip:Int = MODE_NOTHING, BeforeParam:Int = MODE_NOTHING
	Local PosBefore:Int = 0, PosBeforeParam:Int = 0
	Local ActIndex:Int = 0, ActParamIndex:Int = 0
	Local InLineIfStart:Int = 0
	Local VerifiedIfLevel:Int = 0
	Local ActType:TType = TheType[0], ActMethod:TMethod, ActParam:TParam, ActInfo:TModuleInfo
	Local TokenList:TList = New TList
	Local SedList:TList   = New TList
	While Not Template.EOF()
		Local ActLine:String  = Template.ReadLine()
		InLineIfStart = -1
		TokenList.Clear()
		SedList.Clear()
		SedLangTokens(Varptr TokenList,Varptr SedList)
		Select Mode
			Case MODE_NOTHING
				TokenList.addLast("SITETITLE")
				SedList.addLast(ActType.Name)
			Case MODE_SKIP
			Case MODE_WRITEFUNCTIONS
				TokenList.addLast("FUNCTIONNAME")
				SedList.addLast(ActMethod.Name)
			Case MODE_WRITEMETHODS
				TokenList.addLast("METHODNAME")
				SedList.addLast(ActMethod.Name)
			Case MODE_WRITEPARAMS
				TokenList.addLast("PARAMETER")
				SedList.addLast(ActParam.Name)
				TokenList.addLast("PARAMTYPE")
				SedList.addLast(ActParam.PType)
			Default
				Print "Something strange happened"
		End Select
		While True
			Local Pos:Int, EPos:Int
			Local Comment:String = GetNextComment(Varptr ActLine,True,Varptr Pos,Varptr EPos)
			If Comment = "-1" Then Exit
			Local IfCondition:String = GetIfCondition(Comment)
			If IfCondition <> "-1" Then
				Select Mode
					Case MODE_NOTHING
						Select Lower(IfCondition)
							Case "functions"
								If ActType.Functions.Count() = 0 Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									VerifiedIfLevel = VerifiedIfLevel + 1
								EndIf
							Case "methods"
								If ActType.Methods.Count() = 0 Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									VerifiedIfLevel = VerifiedIfLevel + 1
								EndIf
							Default
								Print "Unexpected if condition (" + IfCondition + ") in " + TemplatePath
						End Select
					Case MODE_SKIP
						SkipLevel = SkipLevel + 1
					Case MODE_WRITEFUNCTIONS
						Select Lower(IfCondition)
							Case "parameters"
								If ActMethod.Params.Count() = 0 Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									VerifiedIfLevel = VerifiedIfLevel + 1
								End If
							Case "returntype"
								If ActMethod.RetType = "" Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									TokenList.addLast("RETURNTYPE")
									SedList.addLast(ActMethod.RetType)
									VerifiedIfLevel = VerifiedIfLevel + 1
								EndIf
							Default
								Print "Unexpected if condition (" + IfCondition + ") in " + TemplatePath
						End Select
					Case MODE_WRITEMETHODS
						Select Lower(IfCondition)
							Case "parameters"
								If ActMethod.Params.Count() = 0 Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									VerifiedIfLevel = VerifiedIfLevel + 1
								End If
							Case "returntype"
								If ActMethod.RetType = "" Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									TokenList.addLast("RETURNTYPE")
									SedList.addLast(ActMethod.RetType)
									VerifiedIfLevel = VerifiedIfLevel + 1
								EndIf
							Default
								Print "Unexpected if condition (" + IfCondition + ") in " + TemplatePath
						End Select
					Case MODE_WRITEPARAMS
						Select Lower(IfCondition)
							Case "defaultvalue"
								If ActParam.DefaultValue = "" Then
									SkipLevel = 1
									BeforeSkip = Mode
									Mode = MODE_SKIP
									InLineIfStart = Pos
								Else
									TokenList.addLast("DEFAULTVALUE")
									SedList.addLast(ActParam.DefaultValue)
									VerifiedIfLevel = VerifiedIfLevel + 1
								EndIf
							Default
								Print "Unexpected if condition (" + IfCondition + ") in " + TemplatePath							
						End Select
					Default
						Print "Something strange happened"
				End Select
			EndIf
			Local BeginOf:String = GetBeginOf(Comment)
			If BeginOf <> "-1" Then
				Select Mode
					Case MODE_SKIP
					Case MODE_NOTHING
						Select Lower(BeginOf)
							Case "function"
								If ActType.Functions.Count() <> 0 Then
									ActMethod = TMethod(ActType.Functions.ValueAtIndex(0))
									ActIndex = 0
									PosBefore = Template.Pos()
									Mode = MODE_WRITEFUNCTIONS
								EndIf
							Case "method"
								If ActType.Methods.Count() <> 0 Then
									ActMethod = TMethod(ActType.Methods.ValueAtIndex(0))
									ActIndex = 0
									PosBefore = Template.Pos()
									Mode = MODE_WRITEMETHODS
								EndIf
							Default
								Print "Unexpected begin of " + BeginOf + " in " + TemplatePath
						End Select
					Case MODE_WRITEFUNCTIONS
						Select Lower(BeginOf)
							Case "parameter"
								If ActMethod.Params.Count() <> 0 Then
									ActParam = TParam(ActMethod.Params.ValueAtIndex(0))
									ActParamIndex = 0
									PosBeforeParam = Template.Pos()
									BeforeParam = Mode
									Mode = MODE_WRITEPARAMS
								EndIf
							Default
								Print "Unexpected begin of " + BeginOf + " in " + TemplatePath
						End Select
					Case MODE_WRITEMETHODS
						Select Lower(BeginOf)
							Case "parameter"
								If ActMethod.Params.Count() <> 0 Then
									ActParam = TParam(ActMethod.Params.ValueAtIndex(0))
									ActParamIndex = 0
									PosBeforeParam = Template.Pos()
									BeforeParam = Mode
									Mode = MODE_WRITEPARAMS
								EndIf
							Default
								Print "Unexpected begin of " + BeginOf + " in " + TemplatePath
						End Select
					Default
						Print "Unexpected begin of " + BeginOf + " in " + TemplatePath
				End Select
			EndIf
			Local EndOf:String = GetEndOf(Comment)
			If EndOf <> "-1" Then
				Select Mode
					Case MODE_SKIP
						Select Lower(EndOf)
							Case "if"
								SkipLevel = SkipLevel - 1
								If SkipLevel = 0 Then
									Mode = BeforeSkip
									BeforeSkip = MODE_NOTHING
								EndIf
								If InLineIfStart <> -1 Then
									ActLine = Left(ActLine,InLineIfStart) + Mid(ActLine,EPos)
									InLineIfStart = -1							
								EndIf
						End Select
					Case MODE_WRITEFUNCTIONS
						Select Lower(EndOf)
							Case "function"
								If ActIndex >= ActType.Functions.Count()-1 Then
									Mode = MODE_NOTHING
									PosBefore = 0
									ActMethod = Null
									ActIndex = 0
								Else
									ActIndex = ActIndex + 1
									ActMethod = TMethod(ActType.Functions.ValueAtIndex(ActIndex))
									Template.Seek(PosBefore)
									While True
										Local ThrowMe:String = GetNextComment(Varptr ActLine,True)
										If ThrowMe = "-1" Exit
									Wend
								EndIf
							Case "if"
								VerifiedIfLevel = VerifiedIfLevel - 1
								If VerifiedIfLevel < 0 Then
									Print "Unexpected end of " + EndOf + " in " + TemplatePath
								EndIf							
							Default
								Print "Unexpected end of " + EndOf + " in " + TemplatePath
						End Select
					Case MODE_WRITEMETHODS
						Select Lower(EndOf)
							Case "method"
								If ActIndex >= ActType.Methods.Count()-1 Then
									Mode = MODE_NOTHING
									PosBefore = 0
									ActMethod = Null
									ActIndex = 0
								Else
									ActIndex = ActIndex + 1
									ActMethod = TMethod(ActType.Methods.ValueAtIndex(ActIndex))
									Template.Seek(PosBefore)
									While True
										Local ThrowMe:String = GetNextComment(Varptr ActLine,True)
										If ThrowMe = "-1" Exit
									Wend
								EndIf
							Case "if"
								VerifiedIfLevel = VerifiedIfLevel - 1
								If VerifiedIfLevel < 0 Then
									Print "Unexpected end of " + EndOf + " in " + TemplatePath
								EndIf							
							Default
								Print "Unexpected end of " + EndOf + " in " + TemplatePath
						End Select
					Case MODE_WRITEPARAMS
						Select Lower(EndOf)
							Case "parameter"
								If ActParamIndex >= ActMethod.Params.Count()-1 Then
									Mode = BeforeParam
									BeforeParam = 0
									PosBeforeParam = 0
									ActParam = Null
									ActParamIndex = 0
								Else
									ActParamIndex = ActParamIndex + 1
									ActParam = TParam(ActMethod.Params.ValueAtIndex(ActParamIndex))
									Template.Seek(PosBeforeParam)
									While True
										Local ThrowMe:String = GetNextComment(Varptr ActLine,True)
										If ThrowMe = "-1" Exit
									Wend
								EndIf
							Case "if"
								VerifiedIfLevel = VerifiedIfLevel - 1
								If VerifiedIfLevel < 0 Then
									Print "Unexpected end of " + EndOf + " in " + TemplatePath
								EndIf							
							Default
								Print "Unexpected end of " + EndOf + " in " + TemplatePath
						End Select
					Default
						If Lower(EndOf) = "if" Then
							VerifiedIfLevel = VerifiedIfLevel - 1
							If VerifiedIfLevel < 0 Then
								Print "Unexpected end of " + EndOf + " in " + TemplatePath
							EndIf
						Else
							Print "Unexpected end of " + EndOf + " in " + TemplatePath
						EndIf
				End Select
			EndIf
		Wend
		If InLineIfStart <> -1 Then
			ActLine = Left(ActLine,InLineIfStart)
		EndIf
		If Mode <> MODE_SKIP Then SedTokens(Varptr ActLine,Varptr TokenList,Varptr SedList)
		If Mode <> MODE_SKIP Then TypeFile.WriteLine(ActLine)
	Wend
	If VerifiedIfLevel <> 0 Then 
		Print "Warning! Missing " + VerifiedIfLevel + " END IFs"
	Else
		Print "OK"
	EndIf
End Function

Function GetEndOf:String(ActLine:String)
	If Lower(Left(ActLine,3)) <> "end" Then Return "-1"
	Return Mid(ActLine,5)
End Function

Function GetBeginOf:String(ActLine:String)
	If Lower(Left(ActLine,5)) <> "begin" Then Return "-1"
	Return Mid(ActLine,7)
End Function

Function GetIfCondition:String(ActLine:String)
	If Lower(Left(ActLine,2)) <> "if" Then Return "-1"
	Return Mid(ActLine,4)
End Function

Function GetNextComment:String(ActLine:String Ptr,DeleteIt:Byte=False,StartPos:Int Ptr=Null,EndPos:Int Ptr=Null)
	Local Pos:Int = Instr(ActLine[0],"<!-- ")
	If Pos = 0 Then Return "-1"
	Local Pos2:Int = Instr(ActLine[0]," -->",Pos+5)
	If Pos2 = 0 Then Return "-1"
	Local RetString:String = Mid(ActLine[0],Pos+5,Pos2-Pos-5)
	If DeleteIt Then ActLine[0] = Left(ActLine[0],Pos-1) + Mid(ActLine[0],Pos2+4)
	If StartPos <> Null Then StartPos[0] = Pos -1
	If EndPos   <> Null Then EndPos  [0] = Pos
	Return RetString
End Function

Function SedLangTokens:String(TokenList:TList Ptr,SedList:TList Ptr)
	TokenList[0].AddLast("LANG_DESCRIPTION")
	SedList[0].AddLast  (ResMan.Get("Description"))
	TokenList[0].AddLast("LANG_TYPE")
	SedList[0].AddLast  (ResMan.Get("Type"))
	TokenList[0].AddLast("LANG_TYPES")
	SedList[0].AddLast  (ResMan.Get("Types"))
	TokenList[0].AddLast("LANG_FUNCTIONS")
	SedList[0].AddLast  (ResMan.Get("Functions"))
	TokenList[0].AddLast("LANG_RETURNTYPE")
	SedList[0].AddLast  (ResMan.Get("ReturnType"))
	TokenList[0].AddLast("LANG_PARAMTYPE")
	SedList[0].AddLast  (ResMan.Get("ParamType"))
	TokenList[0].AddLast("LANG_INFOS")
	SedList[0].AddLast  (ResMan.Get("Infos"))
	TokenList[0].AddLast("LANG_DEFAULTVAL")
	SedList[0].AddLast  (ResMan.Get("DefaultValue"))
	TokenList[0].AddLast("LANG_METHODS")
	SedList[0].AddLast  (ResMan.Get("Methods"))
End Function

Function SedTokens(ActLine:String Ptr,TheTokens:TList Ptr,SedWith:TList Ptr)
	If TheTokens[0].Count() <> SedWith[0].Count() Then
		Print "Something strange happened"
		Return
	EndIf
	Local Pos:Int = 0,Pos2:Int = -2
	While True
		Pos = Instr(ActLine[0],"###",1)
		If Pos = 0 Then Exit
		Pos2 = Instr(ActLine[0],"###",Pos+3)
		If Pos2 = 0 Then Exit
		Local Token:String = Mid(ActLine[0],Pos+3,Pos2-Pos-3)
		Local i:Int
		For i = 0 To TheTokens[0].Count() - 1
			Local TheToken:String = String(TheTokens[0].ValueAtIndex(i))
			If Token = TheToken Then
				ActLine[0] = Left(ActLine[0],Pos-1) + String(SedWith[0].ValueAtIndex(i)) + Mid(ActLine[0],Pos2+3)
				i = TheTokens[0].Count()+1
			EndIf
		Next
		If i = TheTokens[0].Count() Then
			Print "Unexpected token (" + Token + "), aborting"
			Return
		EndIf
	Wend
End Function

Function ProcessFile(FileName:String)
	Print "Analyzing: " + FileName
	WriteStdout "Trying to open file... "
	Local File:TStream
	File = OpenStream(FileName,True,False)
	If File = Null Then
		Print "Could not open file"
		End
	EndIf
	Print "OK"
	WriteStdout "Parsing... "
	Local TypeNum:Int
	Local IncNum:Int
	Local MethodNum:Int
	Local FunctionNum:Int
	Local Expecting:Int
	Local Comment:String[0]
	Local CommentMode:Byte = 0
	Local DidSomething:Byte = 0
	Expecting = EXPECT_NOTHING
	While Not File.EOF()
		Local ActLine:String
		ActLine = File.ReadLine()
		ActLine = StripChars(ActLine)
		DidSomething = False
		If Lower(Left(ActLine,3)) = "rem" Then
			Local Counter:Int = 0
			Comment = Comment[..0]
			CommentMode = 1
			Local RegisterMode:Byte
			While Lower(Left(ActLine,7)) <> "end rem"
				ActLine = File.ReadLine()
				ActLine = StripChars(ActLine)
				If Lower(Left(ActLine,8)) = "@enddesc" Then
					RegisterMode = False
				EndIf
				If RegisterMode = True Or Left(ActLine,1) = "@" Then
					Comment = Comment[..Counter+1]
					Comment[Counter] = ActLine
					Counter = Counter + 1
				EndIf
				If Lower(Left(ActLine,10)) = "@startdesc" Then
					RegisterMode = True
				EndIf
			Wend
			ActLine = File.ReadLine()
		EndIf
		If Left(ActLine,1) = "'" Then
			Comment = Comment[..0]
			Local descstart:Int = Instr(Actline,"@idesc")
			If descstart <> 0 Then
				Comment = Comment[..1]
				Comment[0] = stripchars(Mid(ActLine,descstart+1))
			EndIf
			ActLine = File.ReadLine()
		EndIf
		If Lower(Left(ActLine,7)) = "private" Then
			Local TempLine:String
			Repeat
				TempLine = StripChars(File.ReadLine())
			Until ((Lower(Left(TempLine,6)) = "public") Or (File.EOF()))
		EndIf
		If Lower(Left(ActLine,6)) = "module" And Lower(Left(ActLine,10)) <> "moduleinfo" Then
			ModuleName = SearchNextString(7,ActLine)
		EndIf
		If Lower(Left(ActLine,10)) = "moduleinfo" Then
			Local searchIt:Int
			Local searchMode:Byte = 0
			Local Begin:Int = 0
			Local TheEnd:Int = 0
			For searchIt =  11 To Len(ActLine)
				Local TempChar:String = Mid(ActLine,searchIt,1)
				If searchMode = 0 Then
					If TempChar = "~q" Then
						Begin = searchIt
						searchMode = 1
					EndIf
				Else If searchMode = 1
					If TempChar = "~q" Then
						TheEnd = searchIt
						searchMode = 2
					End If
				End If
			Next
			Local TempLine:String = Mid(ActLine,Begin + 1,TheEnd-Begin-1)
			Local TempModuleInfo:TModuleInfo = New TModuleInfo
			Local Divider:Int = Instr(TempLine,":")
			If Divider = 0 Then
				Print "WARNING! No : found in ModuleInfo"
			Else
				TempModuleInfo.Name = Left(TempLine,Divider-1)
				TempModuleInfo.Value = StripChars(Mid(TempLine,Divider+1))
			EndIf
			ModuleInfos.addLast(TempModuleInfo)
		EndIf
		If Lower(Left(ActLine,4)) = "type" Then
			If Expecting = EXPECT_NOTHING Then
				TypeNum = TypeNum + 1
				Local TempType:TType = New TType
				TempType.Name = SearchNextString(5,ActLine)
				TempType.Description = ""
				If CommentMode = True Then
					Local IndexingMode:Byte
					For Local i:Int = 0 To Comment.Length - 1
						If Lower(Left(Comment[i],8)) = "@enddesc" Then
							IndexingMode = False
						EndIf
						If IndexingMode = True Then
							TempType.Description = TempType.Description + Comment[i]
						EndIf
						If Lower(Left(Comment[i],10)) = "@startdesc" Then
							IndexingMode = True
						EndIf
					Next
					CommentMode = False
				EndIf
				Types.addLast(TempType)
				Expecting = EXPECT_ENDTYPE
				DidSomething = True
			Else If Expecting= EXPECT_ENDEXTERN Then
				TypeNum = TypeNum + 1
				Local TempType:TType = New TType
				TempType.Name = SearchNextString(5,ActLine)
				TempType.Description = ""
				If CommentMode = True Then
					Local IndexingMode:Byte
					For Local i:Int = 0 To Comment.Length
						If Lower(Left(Comment[i],8)) = "@enddesc" Then
							IndexingMode = False
						EndIf
						If IndexingMode = True Then
							TempType.Description = TempType.Description + 1
						EndIf
						If Lower(Left(Comment[i],10)) = "@startdesc" Then
							IndexingMode = True
						EndIf
					Next
					CommentMode = False
				EndIf
				Types.addLast(TempType)
				Expecting = EXPECT_ENDTYPE_INEXTERN
				DidSomething = True
			Else
				Print "WARNING! Unexpected type declaration while waiting for " + ExpectToString(Expecting)
			EndIf
		EndIf
		If (Lower(Left(ActLine,8)) = "end type" Or Lower(Left(ActLine,7)) = "endtype") Then
			If Expecting = EXPECT_ENDTYPE Then
				Expecting = EXPECT_NOTHING
			Else If Expecting = EXPECT_ENDTYPE_INEXTERN Then
				Expecting = EXPECT_ENDEXTERN
			EndIf
		EndIf
		If Lower(Left(ActLine,7)) = "include" Then
			If Expecting <> EXPECT_NOTHING Then
				Print "WARNING! Unexpected file inclusion while waiting for " + ExpectToString(Expecting)
			Else
				IncNum = IncNum + 1
				Local IncFile:String = SearchNextString(8,ActLine)
				IncFile = Mid(IncFile,2,Len(IncFile)-2)
				Print "Including " + IncFile
				ProcessFile(IncFile)
			EndIf
		EndIf
		If Lower(Left(ActLine,6)) = "method" Then
			If Expecting <> EXPECT_ENDTYPE Then
				Print "WARNING! Unexpected method declaration while waiting for " + ExpectToString(Expecting)
			Else
				MethodNum = MethodNum + 1
				Local TempType:TType = TType(Types.Last())
				TempType.Methods.addLast(ParseMethodOrFunction(ActLine,7))
				Expecting = EXPECT_ENDMETHOD
				DidSomething = True
			EndIf
		EndIf
		If (Lower(Left(ActLine,10)) = "end method" Or Lower(Left(ActLine,9)) = "endmethod") And Expecting = EXPECT_ENDMETHOD Then
			Expecting = EXPECT_ENDTYPE
		EndIf
		If Lower(Left(ActLine,8)) = "function" Then
			If Expecting = EXPECT_ENDTYPE Then
				FunctionNum = FunctionNum + 1
				Local TempType:TType = TType(Types.Last())
				TempType.Functions.addLast(ParseMethodOrFunction(ActLine,9))
				Expecting = EXPECT_ENDFUNCTION_INTYPE
				DidSomething = True
			Else If Expecting = EXPECT_NOTHING Then
				FunctionNum = FunctionNum + 1
				Functions.addLast(ParseMethodOrFunction(ActLine,9))
				Expecting = EXPECT_ENDFUNCTION
				DidSomething = True
			Else If Expecting = EXPECT_ENDEXTERN
				FunctionNum = FunctionNum + 1
				Functions.addLast(ParseMethodOrFunction(ActLine,9))
				DidSomething = True
			Else
				Print "WARNING! Unexpected function declaration while waiting for " + ExpectToString(Expecting)
			EndIf
		EndIf
		If Lower(Left(ActLine,12)) = "end function" Or Lower(Left(ActLine,11)) = "endfunction" Then
			If Expecting = EXPECT_ENDFUNCTION Then
				Expecting = EXPECT_NOTHING
			Else If Expecting = EXPECT_ENDFUNCTION_INTYPE Then
				Expecting = EXPECT_ENDTYPE
			EndIf
		EndIf
		If Lower(Left(ActLine,6)) = "extern" Then
			If Expecting <> EXPECT_NOTHING Then
				Print "WARNING! Unexpected extern block while waiting for " + ExpectToString(Expecting)
			Else
				Expecting = EXPECT_ENDEXTERN
			EndIf
		EndIf
		If (Lower(Left(ActLine,10)) = "end extern" Or Lower(Left(ActLine,9)) = "endextern") And Expecting = EXPECT_ENDEXTERN Then
			Expecting = EXPECT_NOTHING
		EndIf
		If CommentMode = True And DidSomething = False Then
			Print "O"
			CommentMode = False
		EndIf
	Wend
	Print TypeNum + " types, " + MethodNum + " methods, " + FunctionNum + " functions and " + IncNum + " inclusions found"
End Function

Function ParseMethodOrFunction:TMethod(ActLine:String,StartAt:Byte)
	Local TheMethod:TMethod = New TMethod
	Local SearchMode:Byte = 0
	Local Begin:Int
	Local searchIt:Int
	Local TheEnd:Int
	For Local i:Int = StartAt To Len(ActLine)
		Local TempChar:String
		TempChar = Mid(ActLine,i,1)
		Select SearchMode
			Case 0
				If TempChar <> " " Then
					Begin = i
					searchMode = 1
				EndIf
			Case 1
				If TempChar = " " Or TempChar = "(" Or TempChar = ":" Then
					TheEnd = i
					searchMode = 2
				EndIf
		End Select
	Next
	Local MethodName:String = Mid(ActLine,Begin,TheEnd-Begin)
	Local Rest:String = Mid(ActLine,TheEnd)
	Begin = Instr(Rest,"(")
	Local RetType:String = ""
	Local TempParams:TList = New TList
	If Begin = 0 Then
		Print "WARNING! No opening bracket found in method declaration"
	Else
		RetType = Left(Rest,Begin-1)
		Local Begin2:Int = Instr(RetType,":")
		If Begin2 <> 0 Then
			RetType = Mid(RetType,Begin2+1)
			For Local i:Int = Len(RetType) To 1 Step -1
				Local ActChar:String = Mid(RetType,i,1)
				If ActChar <> " " And ActChar <> "~t" Then
					RetType = Left(RetType,i)
					i = 0
				EndIf
			Next
		EndIf
	Local ParamList:String = Mid(Rest,Begin+1)
		Local TheEnd:Int = Instr(ParamList,")")
		If TheEnd = 0 Then
			Print "WARNING! No closing bracket found in method declaration"
		Else
			ParamList = Left(ParamList,TheEnd-1)
			Local Mode:Byte = 0
			For Local RemSpaces:Int = 1 To Len(ParamList)
				Local ActChar:String = Mid(ParamList,RemSpaces,1)
				If ActChar = ":" And Mode = 0 Then Mode = 1
				If ActChar = "," And Mode = 1 Then Mode = 0
				If ActChar = " " Or ActChar="~t" And Mode = 0 Then
					ParamList = Left(ParamList,RemSpaces-1) + Mid(ParamList,RemSpaces+1)
					RemSpaces = 1 ' end rem
					Mode = 0
				EndIf
			Next
			If Not Len(ParamList) = 0 Then
				Local ParamCount:Int = 1
				For Local SearchComma:Int = 1 To Len(ParamList)
					Local ActChar:String = Mid(ParamList,SearchComma,1)
					If ActChar = "," Then
						ParamCount = ParamCount + 1
					EndIf 
				Next
				For Local i:Int = 1 To ParamCount 
					If ParamCount = 1 Or i = ParamCount Then TheEnd = Len(ParamList) Else TheEnd = Instr(ParamList,",")
					If TheEnd = 0 Then
						Print "WARNING! Something strange happened while parsing function parameters"
					Else
						Local TempParam:TParam = New TParam
						Local TempString:String
						If i = ParamCount Then TempString = Left(ParamList,TheEnd) Else TempString = Left(ParamList,TheEnd-1)
						Local Divider:Int = Instr(TempString,":")
						If Divider = 0 Then
							Print "WARNING! No parameter type found in parameter declaration, assuming int"
							TempParam.Name = TempString
							TempParam.PType = "Int"
							Divider = Instr(TempParam.Name,"=")
							If Divider <> 0 Then
								TempParam.DefaultValue= Mid(TempParam.Name,Divider + 1)
								TempParam.Name = Left(TempParam.Name,Divider - 1)
							EndIf
						Else
							TempParam.Name = Left(TempString,Divider - 1)
							TempParam.PType = Mid(TempString,Divider + 1)
							Divider = Instr(TempParam.PType,"=")
							If Divider <> 0	Then
								TempParam.DefaultValue = Mid(TempParam.PType,Divider + 1)
								TempParam.PType = Left(TempParam.PType,Divider - 1)
							EndIf
						End If
						For Local RemSpaces:Int = Len(TempParam.PType) To 1
							Local ActChar:String = Mid(TempParam.PType,RemSpaces,1)
							If ActChar <> " " And ActChar <> "~t" Then
								TempParam.PType = Left(TempParam.PType,RemSpaces)
								RemSpaces = -1
							EndIf
						Next
						TempParams.addLast(TempParam)
						ParamList = Mid(ParamList,TheEnd+1)
					EndIf
				Next
			EndIf
		EndIf
	EndIf
	TheMethod.Name = MethodName
	TheMethod.RetType = RetType
	TheMethod.Params = TempParams
	Return TheMethod
End Function
' end rem
Function SearchNextString:String(Start:Int,Line:String)
	Local searchIt:Int
	Local searchMode:Byte = 0
	Local Begin:Int = 0
	Local TheEnd:Int = Len(Line) + 1
	For searchIt =  Start To Len(Line)
		Local TempChar:String = Mid(Line,searchIt,1)
		If searchMode = 0 Then
			If TempChar <> " " And TempChar <> "~t" Then
				Begin = searchIt
				searchMode = 1
			EndIf
		Else If searchMode = 1
			If TempChar = " " Then
				TheEnd = searchIt
				searchMode = 2
			End If
		End If
	Next
	Return Mid(Line,Begin,TheEnd-Begin)
End Function

Function ExpectToString:String(What:Int)
	Select What
		Case EXPECT_NOTHING
			Return "nothing"
		Case EXPECT_ENDTYPE
			Return "end of type"
		Case EXPECT_ENDTYPE_INEXTERN
			Return "end of type"
		Case EXPECT_ENDMETHOD
			Return "end of method"
		Case EXPECT_ENDFUNCTION
			Return "end of function"
		Case EXPECT_ENDFUNCTION_INTYPE
			Return "end of function"
		Case EXPECT_ENDEXTERN
			Return "end of extern block"
		Default
			Return "unknown"
	End Select
End Function

Function StripChars:String(Line:String)
	For Local i:Int = 1 To Len(Line)
		Local ActChar:String = Mid(Line,i,1)
		If ActChar <> "~n" And ActChar <> "~t" And actchar <> " " Then
			Return Mid(Line,i)
		EndIf
	Next
	Return ""
End Function

Function WriteCommandList(File:String,ModFolder:String)
	Local FileUno:TStream = ReadFile(File)
	Local FileDuo:TStream = WriteFile(File+".2")
	While Not FileUno.Eof()
		Local ActLine:String = FileUno.ReadLine()
		If Instr(ActLine,ModFolder) = 0 Then
			FileDuo.WriteLine(ActLine)
		EndIf
	Wend
	For Local i:Int = 0 To Types.Count()-1
		Local TempType:TType = TType(Types.ValueAtIndex(i))
		FileDuo.WriteLine(TempType.Name + "|" + ModFolder + "#" + TempType.Name)
		For Local k:Int = 0 To TempType.Methods.Count() - 1
			Local TempMethod:TMethod = TMethod(TempType.Methods.ValueAtIndex(k))
			FileDuo.WriteLine(DescribeForCmdList(Varptr(TempMethod),ModFolder))
		Next
		For Local k:Int = 0 To TempType.Functions.Count() - 1
			Local TempFunction:TMethod = TMethod(TempType.Functions.ValueAtIndex(k))
			FileDuo.WriteLine(DescribeForCmdList(Varptr(TempFunction),ModFolder))
		Next
	Next
	For Local i:Int = 0 To Functions.Count()-1
		Local TempFunction:TMethod = TMethod(Functions.ValueAtIndex(i))
		FileDuo.WriteLine(DescribeForCmdList(Varptr(TempFunction),ModFolder))
	Next
End Function

Function DescribeForCmdList:String(TempMethod:TMethod Ptr,ModFolder:String)
	Local TString:String = ""
	TString:+TempMethod[0].Name
	If TempMethod[0].RetType <> "" TString:+":" + TempMethod[0].RetType
	TString:+"( "
	For Local k:Int = 0 To TempMethod[0].Params.Count() -1
		Local TempParam:TParam = TParam(TempMethod[0].Params.ValueAtIndex(k))
		TString:+TempParam.Name + ":" + TempParam.PType
		If TempParam.DefaultValue <> "" Then
			TString:+"=" + TempParam.DefaultValue
		EndIf
		If k <> TempMethod[0].Params.Count()-1 TString:+","
	Next
	TString:+" )"
	TString:+"|" + ModFolder
	Return TString
End Function

