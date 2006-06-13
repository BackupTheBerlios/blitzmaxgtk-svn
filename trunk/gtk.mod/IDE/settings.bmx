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
Strict
Import BRL.Linkedlist
Import BRL.Filesystem
Import BRL.Retro
Import Pub.StdC
Type TSetting
	Field Name:String
	Field Value:String
End Type

Type TSettings
	Global Settingslist:TList = New TList
	
	Method GetFilename:String()
		If FileType(RealPath(getenv_("HOME")+"/.gtkmaxide")) = 0 then
			createdir(RealPath(getenv_("HOME")+"/.gtkmaxide"))
		endif
		Return RealPath(getenv_("HOME")+"/.gtkmaxide/settings.set")
	End Method
	
	Method SaveAllSettings()
		DeleteFile(Self.GetFilename())
		CreateFile(Self.GetFilename())
		Local SaveFile:TStream = OpenStream(Self.GetFilename())
		For Local TSet:TSetting = EachIn SettingsList
			SaveFile.WriteLine(TSet.Name+":"+TSet.Value)	
		Next 
		SaveFile.Close()
	End Method

	Method LoadAllSettings()
		Local LoadFile:TStream = OpenFile(Self.GetFilename())
		If LoadFile=Null THen
			Print "(settings.bmx) " + Self.GetFilename() + " could not be opened, using default settings"
			return 
		endif
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
		Local TSet:TSetting
		For TSet:TSetting = EachIn SettingsList
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
