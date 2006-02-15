Import BRL.Linkedlist
Import BRL.Filesystem
Import BRL.Retro

Type TSetting
	Field Name:String
	Field Value:String
End Type

Type TSettings
	Global Settingslist:TList = New TList
	
	Method SaveAllSettings()
		DeleteFile("settings.set")
		CreateFile("settings.set")
		Local SaveFile:TStream = OpenStream("cfg/settings.set")
		For Local TSet:TSetting = EachIn SettingsList
			SaveFile.WriteLine(TSet.Name+":"+TSet.Value)	
		Next 
		SaveFile.Close()
	End Method

	Method LoadAllSettings()
		Local LoadFile:TStream = OpenFile("cfg/settings.set")
		While Not Eof(LoadFile)
			Local RL:String = ReadLine(LoadFile)
			Local LName:String = Left(RL, Instr(RL,":")-1)
			Local LValue:String = Mid(RL, Instr(RL,":")+1,Len(RL)-Instr(RL,":"))
			Local NSetting:TSetting = New TSetting
				NSetting.Name = LName
				NSetting.Value = LValue
			SettingsList.ADDLAST(NSetting)
		Wend
		LoadFile.Close()
	End Method 

	Method SetValue(Name:String,Value:String)
		
		'Check Setting allready exist
		Local NE:Byte = False
		For Local TSet:TSetting = EachIn SettingsList
			If TSet.Name = Name Then
				NE=True
				Exit
			End If 
		Next

		If NE Then 
			TSet.Value = Value 
		Else
			Local NSetting:TSetting = New TSetting
				NSetting.Name = Name
				NSetting.Value = Value
			SettingsList.ADDLAST(NSetting)
		End If 
	
	End Method 

	Method GetValue:String(Name:String)
		For Local TSet:TSetting = EachIn SettingsList
			If TSet.Name = Name Then Return TSet.Value
		Next
	End Method

	Method DelSetting(Name:String)
		For Local TSet:TSetting = EachIn SettingsList
			If TSet.Name = Name Then 
				Settingslist.remove(TSet)
			End If 
		Next	
	End Method 

End Type
